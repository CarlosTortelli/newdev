let contador = 0

function onClickColuna(item) {
  console.log('banana', item.id)
  if (!item.innerHTML) {
    contador % 2 == 0 ? (item.innerHTML = 'X') : (item.innerHTML = 'O')
    contador++
  } else {
    return
  }
}
