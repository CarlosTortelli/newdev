let tarefas = []






function listarTarefa(event) {
  event.preventDefault()

  let nama = document.getElementById('name').value
  
  if (!nama) alert('nenhuma tarefa adicionada!')
  else {
    let tarefaNova = {
      nama: nama
    }

    tarefas = localStorage.getItem('tarefas')
    if (tarefas === null) tarefas = []
    else tarefas = JSON.parse(tarefas)
    tarefas.push(tarefaNova)
    localStorage.setItem('tarefas', JSON.stringify(tarefas))

    document.querySelector('form').reset()
  
  }
}



const botaoAdd = document.getElementById('botaoadd')

if (botaoAdd) {
  botaoAdd.addEventListener('click', listarTarefa)
}


const botao = document.getElementById('botao')
if (botao) {
  botao.addEventListener('click', function (event) {
    event.preventDefault()
    document.location.href = 'index2.HTML'

    listaDeTarefas()
  })
}





const carregarListaDeTarefas = () => {
  tarefas = localStorage.getItem('tarefas')
  return tarefas ? JSON.parse(tarefas) : []
}
carregarListaDeTarefas()

const listaDeTarefas = () => {
  const cara = carregarListaDeTarefas()

  let ul = document.querySelector('ul')
  if (ul) {
    ul.remove()
  }

  ul = document.createElement('ul')

  cara.forEach(item => {
    const li = document.createElement('li')
    li.innerHTML = `tarefa: ${item.nama}`
   
    

    ul.appendChild(li)
  })
  const section = document.getElementById('section')
  if (section) {
    section.appendChild(ul)
  }
}
listaDeTarefas()
