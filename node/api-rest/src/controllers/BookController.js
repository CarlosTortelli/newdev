
exports.findAll = (request, response) => {
  const query = request.query 
  console.log('xupisquinho', query)
  return response.status(200).send('minha vó')
}

exports.create = (request, response) => {
  console.log('xupisquinho', request.body)
  return response.status(200).send('minha vó')
}

exports.getById = (request, response) => {
  const params = request.params
  console.log('xupisquinho', params)
  return response.status(200).send(`minha vó pegada ${params.id}`)
}

exports.deleteById = (request, response) => {
  const params = request.params
  console.log('xupisquinho', params)
  return response.status(200).send(`minha vó sendo deletada ${params.id}`)
}

exports.putById = (request, response) => {
  const params = request.params
  console.log('xupisquinho', params)
  return response.status(200).send(`minha vó sendo putiada ${params.id}`)
}

exports.patchById = (request, response) => {
  const params = request.params
  console.log('xupiscão', params)
  return response.status(200).send(`minha vó sendo patchiada ${params.id}`)
}

