const express = require('express')
const app = express()

app.use('/opa',(req, res) => {
    res.send('Estou <b>bem!</b>')
})

app.listen(3000, () => {
    console.log('Backend funcionando...')
})