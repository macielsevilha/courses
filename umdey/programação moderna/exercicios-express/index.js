const { response } = require('express')
const express = require('express')
const app = express()
const boryParser = require('body-parser')

const saudacao = require('./saudacaoMid')
const usuarioApi = require('./api/usuario')
require('./api/produto')(app, 'com param!')

app.post('/usuario', usuarioApi.salvar)
app.get('/usuario', usuarioApi.obter)

app.use(boryParser.text())
app.use(boryParser.json())
app.use(boryParser.urlencoded({extended: true}))


app.use(saudacao('Maciel'))

app.use('/opa', (req, res, next) => {
    console.log('Antes...')
    next()
})

app.get('/clientes/:id', (req, res) => {
   res.send(`Cliente ${ req.params.id} selecionado!`)
})

app.get('/clientes/relarorio', (req, res) => {
    res.send(`Cliente relatório: completo ${req.query.completo} ano = ${req.query.ano}`)
})

app.post('/corpo', (req, res) => {
    //let corpo = ''
    //req.on('data', function(parte) {
    //    corpo += parte
    //})

    //req.on('end', function() {
    //    res.send(corpo)
    //})
    res.send(req.body)
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