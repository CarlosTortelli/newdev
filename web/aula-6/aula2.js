//buscando elementos na pagina HTML
//para encontrar o elemento no vetor basta citar o indice
const inputs = document.querySelectorAll('input')
console.log('input', inputs)
console.log('inputs email', inputs[1])

console.log('buttonSendMessage', buttonSendMessage)

//catando texto
const textp = document.querySelectorAll('#texto')
console.log('texto', texto)

//arrey javascript
const movimentação = [
  {
    nome: 'bruno',
    sobrenome: 'fontana',
    idade: 123,
    peso: 234
  }
]

//buscando pela classe
// o queryselector retorna o primeiro elemento em forma de cascata enquanto o all retorna todos desta tipagem.
const classe = document.querySelectorAll('.social')
console.log('classe', classe)

//criando elementos
const p = document.createElement('p')
p.innerHTML = 'chuva'
console.log('p, ', p)

document.getElementById('texto-1').appendChild(p)

//------------------------------------------------------------------------

//para desativar e modificar a função de um botão
const buttonSendMessage = document.getElementById('buttonSendMessage')

const messages = []

function addMessadeToMessage(event) {
  event.preventDefault()
  const inputName = document.getElementById('name')
  const inputBirthday = document.getElementById('birthday')
  const inputNumber = document.getElementById('number')

  const message = {
    name: inputName.value,
    birthday: inputBirthday.value,
    number: inputNumber.value
  }

  document.getElementById('message-guri').reset()
  console.log('...', message)
}

buttonSendMessage.addEventListener('click', addMessadeToMessage)
