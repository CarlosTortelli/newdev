const http = require('http');
const fs = require('fs');
const path = require('path');

const server = http.createServer((request, response) => {
  const url = request.url;

  let arquivo = url === '/' ? 'atributos.html' : request.url;

  if (url === '/consultar') {
    file = 'consultar.html'
  }

  const filePath = path.join(__dirname, 'publicasso', arquivo);

  fs.readFile(
    filePath,
    (error, conteudo) => {
      if (error) { return error; }

      return response.end(conteudo);
    }
  )
    
});

server.listen(3011, () => {
  console.log('a xupisco fununcia no http://localhost:3011');
});