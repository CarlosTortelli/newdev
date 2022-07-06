const http = require('http')
const URL = require('url')
const fs = require('fs')
const path = require('path')
let receitas = require('./receitas.json')

const server = http.createServer((request, response) => {

const {titulo, ingrediente, quantidade, medida, remove} = URL.parse(request.url, true).query
let bagual = console.log('xupisca nene')

if(titulo){
const receita = {titulo, ingrediente, 
quantidade, 
medida}

if(ingrediente){
  ingrediente = ingrediente.split('|')
}


if (remove) {
  const achou = receitas.filter((receita) => String(receita.titulo) === String(titulo));
  receitas = receitas.filter((receita) => String(receita.titulo) !== String(titulo));

if (!achou.length) {
  return response.end("receita não encontrada!");
}

} else {
receitas.push(receita);
}

fs.writeFile(
  path.join(__dirname, 'receitas.json'),
  JSON.stringify(receitas, null, 4),
  (error) => {
    if (error) return;

    response.end(
      JSON.stringify({
        status: bagual,
        data: receitas,
      })
    );
  }
)



}
else {
  response.end(JSON.stringify(receitas));
}
})
server.listen(3009, () => {
  console.log("API listening on http://localhost:3009");
});