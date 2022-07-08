const express = require('express')
const routes = express.Router()
const indexcontrolle = require('./controllers/indexcontroller.js')
const autorcontrole = require('./controllers/autorcontroller.js')
const bookcontroller = require('./controllers/BookController.js')
//index route
routes.get('/', indexcontrolle.index)

// rotinha autor
routes.get('/authors', autorcontrole.findAll)

routes.post('/authors', autorcontrole.create)

//rotinha de id
routes.get('/authors/:id', autorcontrole.getById)

routes.delete('/authors/:id', autorcontrole.deleteById)

routes.put('/authors/:id', autorcontrole.putById)

routes.patch('/authors/:id', autorcontrole.patchById)


//livros


routes.get('/books', bookcontroller.findAll)

routes.post('/books', bookcontroller.create)

//livros id
routes.get('/books/:id',bookcontroller.getById)

routes.delete('/books/:id', bookcontroller.deleteById)

routes.put('/books/:id', bookcontroller.putById)

routes.patch('/books/:id', bookcontroller.patchById)


module.exports = routes
