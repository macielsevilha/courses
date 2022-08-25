const { response } = require('express')
const express = require('express')
const app = express()
const saudacao = require('./saudacaoMid')

app.use(saudacao('Maciel'))

app.use('/opa', (req, res, next) => {
    console.log('Antes...')
    next()
})

app.get('/opa',(req, res, next) => {
   console.log('Durante...')
     res.json({
        data: [
            {id: 1, name: 'Ana', position: 1},
            {id: 34, name: 'Bia', position: 2},
            {id: 34, name: 'Carlos', position: 3}
        ],
        count: 30,
        skip: 0,
        limit: 3,
        status: 200
})

   //res.json({
   // name: 'Monitor',
   // price: 1899.00,
   // discount: 0.12
   //})

   // res.send('Estou <b>bem!</b>')

   next()
})

app.use('/opa', (req, res) => {
    console.log('Depois...')
})

app.listen(3000, () => {
    console.log('Backend funcionando...')
})