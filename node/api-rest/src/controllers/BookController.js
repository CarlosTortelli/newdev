const database = require('../databases/knex')

 exports.findAll = async (request, response) => {
  try {

    const sql = await database.select('*').from('books')
    console.log('sql -->', sql)
    return response.status(200).send('minha tia')
  } catch (error) {
    return response.status(500).send({error: error?.message || e })
  }
}

exports.create = async (request, response) => {
  try {
   await database('books').insert(request.body)
   return response.status(200).send({ status: 'sucess'})
  }catch (error){
   return response.status(500).send({error: error?.message || e})
  }
}


exports.getById = async (request, response) => {
  try {
    const params = request.params
    const [books] = await database.select('*').from('books').where('id', params.id).limit(1)
    if(!books) {
      return response.status(404).send(`o registro com o id mimimi não foi encontrado`)
    } 
    await database.select('*').from('books').where({id: books.id})
    return response.status(200)({data: authors})
   } catch (error) {
    return response.status(500).send({error: error?.message || e})
   }
}



exports.deleteById = async (request, response) => {
  try {
   const params = request.params
   const [books] = await database.select('*').from('books').where('id', params.id).limit(1)
   if(!books) {
     return response.status(404).send(`o registro com o id mimimi não foi encontrado`)
   }
   console.log('achou o nene', books)
   console.log('tchau nene', request.body)
   await database.delete({name: request.body.name}).from('books').where({id: books.id})
   return response.status(200).send(`deletado por id${params.id}`)
  } catch (error) {
   return response.status(500).send({error: error?.message || e})
  }
 }
 

exports.putById = async (request, response) => {
  try {
   const params = request.params
   const[previousBook] = await database.select('*').from('books').where('id', params.id).limit(1)
   if(!previousBook) {
     return response.status(404).send(`o registro com id: ${params.id} no eqssiste`)
   }
   console.log('author previousauthor encontrado', previousBook )
   console.log('author update', request.body)
   await database.update({name: request.body.name }).from('books').where({id: previousBook.id})
   return response.status(200).send({status: 'registro atualizado com sucesso' })
   
  } catch (error) {
   return response.status(500).send({error: error?.message || e})
  }
 }
 