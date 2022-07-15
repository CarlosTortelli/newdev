const database = require('../databases/knex');


exports.findAll = async (request, response) => {
  try {
    const sql = await database.select('*').from('curso');
    return response.status(200)
      .send({
        curso: sql
      });
  } catch (error) {
    return response.status(500)
      .send({ error: error?.message || e });
  }
}

exports.create = async (request, response) => {
  try {
    await database('curso').insert(request.body);

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

    const [curso] = await database
      .select('*')
      .from('curso')
      .where({ id: params.id })
      .limit(1);

    if (!curso) {
      return response.status(404) // recurso não encontrado
        .send(`O registro com id: ${params.id} não foi encontrado!`);
    }

    await database
      .delete()
      .from('curso')
      .where({ id: curso.id });

    return response
      .status(200)
      .send({ status: 'Registro removido com sucesso' });
  } catch (error) {// tratamento de exceção, trata os erros que ocorrem
    return response.status(500).send({ error: error?.message || e });
  }
}
