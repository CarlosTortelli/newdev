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
    await database('aula').insert(request.body);

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
