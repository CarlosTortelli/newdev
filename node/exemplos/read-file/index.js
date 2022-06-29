const http = require('http')


const users = require('./users.json')


http.createServer((request, response) => {
  const {name, lastName, age} = URL.parse(request.url, true).query
  if (name || lastName || age) {
    console.log('query', name, lastName, age )
  }
  
  console.log('users',  users)
  
console.log('url', request.url)

response.end(JSON.stringify(users))
})
.listen(3003, () => {
  console.log('API is running on port 3001')
})