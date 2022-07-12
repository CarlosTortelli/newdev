const database = require('../databases/knex')

exports.findAll = async (request, response) => {
  try {

    const sql = await database.select('*').from('authors')
    console.log('sql -->', sql)
    return response.status(200).send('minha tia')
  } catch (error) {
    return response.status(500).send({error: error?.message || e })
  }
}

exports.create = async (request, response) => {
  try {
   await database('authors').insert(request.body)
   return response.status(200).send({ status: 'sucess'})
  }catch (error){
   return response.status(500).send({error: error?.message || e})
  }
}

exports.getById = (request, response) => {
  const params = request.params
  console.log('Query params authors', params)
  return response.status(200).send(`minha tia pega por id${params.id}`)
}


exports.deleteById = (request, response) => {
  const params = request.params
  console.log('Query params authors', params)
  return response.status(200).send(`minha tia deletada por id${params.id}`)
}


exports.putById = (request, response) => {
  const params = request.params
  console.log('Query params authors', params)
  return response.status(200).send(`minha tia putiada por id${params.id}`)
}


exports.patchById = (request, response) => {
  const params = request.params
  console.log('Query params authors', params)
  return response.status(200).send(`minha tia putiada por id${params.id}`)
}