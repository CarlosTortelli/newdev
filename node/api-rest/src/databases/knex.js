const enviroment = process.env.ENVIROMENT || 'development'


const config = require('../../knexfile')[enviroment]

const knex = require('knex')(config)

module.exports = knex