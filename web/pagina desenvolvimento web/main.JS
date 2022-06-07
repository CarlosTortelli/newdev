let peoples = [];

const pessoas = (event) => {
  event.preventDefault();
  const people = {
    nome: document.getElementById('from').value,
    endereço: document.getElementById('to').value,
    número: document.getElementById('fra').value,
    email: document.getElementById('ib').value
  }
  
  peoples.push(people);
  
  // console  
  localStorage.setItem('diferente', JSON.stringify(peoples));

  document.querySelector('input').reset();

  const items = localStorage.getItem('diferente');

  const itemsSerialized = JSON.parse(items)

  let ul = document.querySelector('ul');
  if (!ul) {
    ul = document.createElement('ul');
  }

  // ul[{}, {}] - length = 2;
  // itemsSerialized[{}, {}, {}] - length = 3;
  console.log('node list ul', ul.childNodes);
  itemsSerialized.forEach((item, index) => {
    const li = document.createElement('li');
    li.innerHTML = `Nome: ${item.name} Idade: ${item.age}, Altura: ${item.height}`
    console.log('ITEMS', item)
    ul.appendChild(li);
  });
  
  document.getElementById('input').appendChild(ul);
}

const botaoDeAdicionar = document.getElementById('btn');
botaoDeAdicionar.addEventListener('click', pessoas)
