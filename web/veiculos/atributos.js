let carros = []

function validarCarro(event) {
  event.preventDefault()
  let name = document.getElementById('name').value
  let color = document.getElementById('color').value
  let brand = document.getElementById('brand').value
  let quantidade = document.getElementById('quantidade').value

  if (!name) alert('ops, esqueceu de preencher algo!!')
  else if (!color) alert('ops, esqueceu de preencher algo!!')
  else if (!brand) alert('ops, esqueceu de preencher algo!!')
  else if (!quantidade) alert('ops, esqueceu de preencher algo!!')
  else {
    let carroNovo = {
      name: name,
      color: color,
      brand: brand,
      quantidade: quantidade
    }

    carros = localStorage.getItem('veiculos')
    if (carros === null) carros = []
    else carros = JSON.parse(carros)
    carros.push(carroNovo)
    estoqueCheio()

    document.querySelector('form').reset()
  }
}

const estoqueCheio = () => {
  var acumuladorCarros = 0

  carros.forEach(item => {
    if (+item.quantidade > 0 || +item.quantidade < 200) {
      acumuladorCarros += +item.quantidade
    }
  })
  if (+acumuladorCarros > 200) {
    alert('isso ultrapassa a capacidade máxima do estoque!')
    return
  } else if (+acumuladorCarros < 0) {
    alert('não tem mais o que retirar senhor(a)!')
    return
  } else if (+acumuladorCarros < 200 && +acumuladorCarros > 0) {
    localStorage.setItem('veiculos', JSON.stringify(carros))
  }
}

estoqueCheio()

const botaoProximo = document.getElementById('butun')

if (botaoProximo) {
  botaoProximo.addEventListener('click', validarCarro)
}

const btt = document.getElementById('btt')

if (btt) {
  btt.addEventListener('click', function (e) {
    e.preventDefault()
    document.location.href = 'consultar.HTML'

    listarCarrosNosDetalhes()
  })
}

const carragarListaDeCarros = () => {
  carros = localStorage.getItem('veiculos')
  return carros ? JSON.parse(carros) : []
}

const listarCarrosNosDetalhes = () => {
  const carr = carragarListaDeCarros()

  let ul = document.querySelector('ul')
  if (ul) {
    ul.remove()
  }

  ul = document.createElement('ul')

  console.log('banana', carros)

  carr.forEach(carro => {
    const li = document.createElement('li')
    li.innerHTML = `carro: ${carro.name},    
    cor: ${carro.color},  
    brand:${carro.brand},  
     estoque: ${carro.quantidade}.
     `

    ul.appendChild(li)
  })
  const main = document.getElementById('main')
  if (main) {
    main.appendChild(ul)
  }

  console.log(document.getElementById('main'))
}
listarCarrosNosDetalhes()
