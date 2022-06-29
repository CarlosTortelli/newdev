const os = require('os');

console.log(os.platform())

const memoria = parseInt(os.freemem() / 1024 / 1024) 
console.log(memoria)

const total = parseInt(os.totalmem() / 1024 / 1024)
console.log(total)

const totalUsado = parseInt((memoria / total) * 100)
console.log(memoria, total, totalUsado)

const estatisticas = {
  totalMemory: `${total}MB`,
  freeMemory: `${memoria}MB`,
  usedMemory: `${totalUsado}MB`
}

console.log(estatisticas)
console.table(estatisticas)

setInterval(() => {
  console.log('!')
}, 1000)