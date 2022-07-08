
exports.findAll = (request, response) => {
  const query = request.query
  console.log('Query string authors', query)
  return response.status(200).send('minha tia')
}

exports.create = (request, response) => {
  console.log('recebendo tia', request.body)
  return response.status(200).send('minha tia post')
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