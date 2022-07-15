const express = require('express')
const routes = express.Router()

const cursoController = require('./controllers/cursoController')
const professorController = require('./controllers/professorController')
const aulaController = require('./controllers/aulaController')

//routes professores
routes.get('/professores', professorController.findAll)
routes.post('/professores', professorController.create)
routes.delete('/professores/:id', professorController.deleteById)

// Routes cursos
routes.get('/curso', cursoController.findAll)
routes.post('/curso', cursoController.create)
routes.delete('/curso/:id', cursoController.deleteById)

// Routes aulas
routes.get('/aula', aulaController.findAll)
routes.post('/aula', aulaController.create)
routes.delete('/aula/:id', aulaController.deleteById)

module.exports = routes
