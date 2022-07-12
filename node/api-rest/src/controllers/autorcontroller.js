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

exports.getById = async (request, response) => {
  try {
    const params = request.params
    const [authors] = await database.select('*').from('authors').where('id', params.id).limit(1)
    if(!authors) {
      return response.status(404).send(`o registro com o id mimimi não foi encontrado`)
    }
    await database.select('*').from('authors').where({id: authors.id})
    return response.status(200).send({data: authors})
   } catch (error) {
    return response.status(500).send({error: error?.message || e})
   }
}


exports.deleteById = async (request, response) => {
 try {
  const params = request.params
  const [authors] = await database.select('*').from('authors').where('id', params.id).limit(1)
  if(!authors) {
    return response.status(404).send(`o registro com o id mimimi não foi encontrado`)
  }
  console.log('achou o nene', authors)
  console.log('tchau nene', request.body)
  await database.delete({name: request.body.name}).from('authors').where({id: authors.id})
  return response.status(200).send(`minha tia deletada por id${params.id}`)
 } catch (error) {
  return response.status(500).send({error: error?.message || e})
 }
}


exports.putById = async (request, response) => {
 try {
  const params = request.params
  const[previousAuthor] = await database.select('*').from('authors').where('id', params.id).limit(1)
  if(!previousAuthor) {
    return response.status(404).send(`o registro com id: ${params.id} no eqssiste`)
  }
  const nextAuthor = request.body
  console.log('author previousauthor encontrado', previousAuthor )
  console.log('author update', nextAuthor)
  await database.update({name: nextAuthor.name }).from('authors').where({id: previousAuthor.id})
  return response.status(200).send({status: 'registro atualizado com sucesso' })
  
 } catch (error) {
  return response.status(500).send({error: error?.message || e})
 }
}
