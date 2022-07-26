const database = require('../databases/knex');

exports.findAll = async (request, response) => {
  try {
    const sql = await database.select('*').from('aula');
    return response.status(200)
      .send({
        aula: sql
      });
  } catch (error) {
    return response.status(500)
      .send({ error: error?.message || e });
  }
}

exports.create = async (request, response) => {
  try {

    const requiredField = ['name', 'descrição', 'link', 'professoresId']

    const requiredFieldsExists = [];
    Object.keys(request.body).forEach(attr => {
      if (!requiredField.includes(attr)) {
        requiredFieldsExists.push(attr);
      }
    });

   requiredField.forEach(requiredField => {
      if (!request.body[requiredField]) {
      requiredFieldsExists.push(requiredField)}
    })

    if (requiredFieldsExists.Lenght) {
      return res.status(400).send({
        status: 'Campos obrigatórios não foram informados!',
        requiredField: requiredFieldsExists
      });
    }

    const [curso] = await database.select('*').from('curso').where({ id: Number(req.body.courseId) });
    if (!curso) {
      return res.status(404).send({
      status: 'Nenhum curso foi encontrado'
    })
  }

  const [aula] = await database.select('*').from('aula').where({ id: Number(req.body.courseId) });
  if (!aula) {
    return res.status(404).send({
    status: 'Nenhuma aula foi encontrado'
  })
}

const [professor] = await database.select('*').from('professor').where({ id: Number(req.body.courseId) });
if (!professor) {
  return res.status(404).send({
  status: 'Nenhuma professor foi encontrado'
})
}

    return response.status(200).send({
      status: 'success'
    });
  } catch (error) {
    return response.status(500).send({ error: error?.message || e });
  }
}

exports.deleteById = async (request, response) => {
  try {
    const params = request.params;

    const [aula] = await database
      .select('*')
      .from('aula')
      .where({ id: params.id })
      .limit(1);

    if (!aula) {
      return response.status(404) // recurso não encontrado
        .send(`O registro com id: ${params.id} não foi encontrado!`);
    }

    await database
      .delete()
      .from('aula')
      .where({ id: aula.id });

    return response
      .status(200)
      .send({ status: 'Registro removido com sucesso' });
  } catch (error) {// tratamento de exceção, trata os erros que ocorrem
    return response.status(500).send({ error: error?.message || e });
  }
}
