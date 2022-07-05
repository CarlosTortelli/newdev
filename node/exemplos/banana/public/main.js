
const exemplo = ' exemplo mais louco do mundo'

const entregarPedidoNacozinha = async () => {
  const response = await fetch('http://localhost:3001')

  console.log('vem pegar garçom que ta pronto', await response.json())
}

entregarPedidoNacozinha()



fetch('http://localhost:3001')
.then((response) => {
  console.log('foi pro proximo', response)
})
.catch((error) => {
  console.log('isso deu pau', error)
})
.finally(() => {
  console.log('requisição finalizou')
})