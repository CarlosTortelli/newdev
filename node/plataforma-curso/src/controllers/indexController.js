

exports.index = async (request, response) => {
  try {
    await knex.select('*').from('knex_migrations')
    return response.end("api taí")
  } catch (error) {
    return response.status(500).send(e.message)
  }
}