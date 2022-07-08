const express = require('express')
const cors = require('cors')
const routes = require('./routes')
const app = express()
const PORT = 3020

app.use(cors())
app.use(express.json())
app.use(routes)

app.listen(PORT, () => {
  console.log(`comi quem leu ${PORT}`)
})