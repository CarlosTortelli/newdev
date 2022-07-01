const http = require('http')
const URL = require('url')
const fs = require('fs') //file-system
const path = require('path') //acha o caminho aboluto para o writefile
let users = require('./users.json')

const getUsers = (request, response) => {
  const { name, lastName, age, remove } = URL.parse(request.url, true).query
  let message = ''
  if (name) {
    message = 'usuário removido com sucesso'
    const user = {
      name, lastName, age
    }
    if (remove) {
      const found = users.filter(user => String(user.name) === String(name));
      users = users.filter(user => String(user.name) !== String(name));
      if (!found.length) {
        return response.end('Usuário não encontrado!');
      }
    }
    else {
      users.push(user)
      message = 'registro salvo com sucesso'
    }
    fs.writeFile(
      path.join(__dirname, 'users.json'),
      JSON.stringify(users, null, 2),
      error => {
        if (error) return

    
        response.end(JSON.stringify({
          status: message, 
          data: user
        }))
      }
    )
  }
  else {
    response.end(JSON.stringify(users))
  }
}
//criando server
const server = http.createServer(getUsers)
//porta do server
server.listen(3001, () => {
  console.log('API listen on http://localhost:3001')
})
