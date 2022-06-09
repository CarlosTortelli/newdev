let spaces = [];

const loadItens = () => {
  const itemsJaArmazenados = localStorage.getItem('listaDeEspaços');
  return itemsJaArmazenados ? JSON.parse(itemsJaArmazenados) : [];
}

const listSpaces = () => {
  const spaces = loadItens();
  
  let ul = document.querySelector('ul');
  if (ul) {
    ul.remove();
  }
  
  ul = document.createElement('ul');
 
  spaces.forEach((item, index) => {
    const li = document.createElement('li');
    li.innerHTML = `Nomes: ${item.nome} Endereços: ${endereço.age}, Números: ${item.numero}, Emails: ${item.email}`
    console.log('ITEMS', item)
    ul.appendChild(li);
  });
  
  document.getElementById('box').appendChild(ul);
}

listSpaces();

const addSpace = (event) => {
  event.preventDefault();
  const space = {
    endereço: document.getElementById('to').value,
    nome: document.getElementById('from').value,
    numero: document.getElementById('fra').value,
    email: document.getElementById('ib').value,
  }
  
  spaces = loadItens();

  spaces.push(space);
  
  localStorage.setItem('listaDeEspaços', JSON.stringify(spaces));

  document.querySelector('form').reset();
}

const botaoDeAdicionar = document.getElementById('btn');
botaoDeAdicionar.addEventListener('click', addSpace)


const onClickEdit = () => {
 console.log('on click edit')
}

const onClickRemove = () => {
  console.log("on click delete");
}