
class Despesa {
    constructor(ano, mes, dia, tipo, descricao, valor) {
        this.ano = ano
        this.mes = mes
        this.dia = dia
        this.tipo = tipo
        this.descricao = descricao
        this.valor = valor
    }

    validarDados() {
        for (let i in this) {
            if (this[i] == undefined || this[i] == '' || this[i] == null) {
                return false
            }
        }
        return true
    }
}

class Bd {

    constructor() {
        let id = localStorage.getItem('id')

        if (id === null) {
            localStorage.setItem('id', 0)
        }
    }

    getProximoId() {
        let proximoId = localStorage.getItem('id')
        return parseInt(proximoId) + 1

    }

    gravar(d) {
        let id = this.getProximoId()

        localStorage.setItem(id, JSON.stringify(d))

        localStorage.setItem('id', id)

    }

    recuperarTodosOsRegistros() {

        let despesas = []

        let id = localStorage.getItem('id')
        for (let i = 1; i <= id; i++) {

            let despesa = JSON.parse(localStorage.getItem(i))

            if (despesa === null) {
                continue
            } 
                despesas.push(despesa)
            
        }

        return despesas

    }

    pesquisar(despesa) {
        let despesasFiltradas = []
        despesasFiltradas = this.recuperarTodosOsRegistros()

       if(despesa.ano != '') {
        despesasFiltradas = despesasFiltradas.filter(d => d.ano == despesa.ano)
       } 
       if(despesa.mes != '') {
        despesasFiltradas = despesasFiltradas.filter(d => d.mes == despesa.mes)
       } 
       if(despesa.dia != '') {
        despesasFiltradas = despesasFiltradas.filter(d => d.dia == despesa.dia)
       } 
       if(despesa.tipo != '') {
        despesasFiltradas = despesasFiltradas.filter(d => d.tipo == despesa.tipo)
       } 
       if(despesa.descricao != '') {
        despesasFiltradas = despesasFiltradas.filter(d => d.descricao == despesa.descricao)
       } 
       if(despesa.valor != '') {
        despesasFiltradas = despesasFiltradas.filter(d => d.valor == despesa.valor)
       } 
    
       console.log(despesasFiltradas)
    }

}

let bd = new Bd()

function cadastrarDespesa() {

    let ano = document.getElementById('ano')
    let mes = document.getElementById('mes')
    let dia = document.getElementById('dia')
    let tipo = document.getElementById('tipo')
    let descricao = document.getElementById('descricao')
    let valor = document.getElementById('valor')

    let despesa = new Despesa(
        ano.value,
        mes.value,
        dia.value,
        tipo.value,
        descricao.value,
        valor.value
    )

    let modalTitulo = document.getElementById('modalTitulo')
    let modalConteudo = document.getElementById('modalConteudo')
    let modalBotao = document.getElementById('modalBotao')

    if (despesa.validarDados()) {
        bd.gravar(despesa)

        console.log(despesa.ano)
        modalTitulo.innerHTML = 'Grvação sucesso'
        modalTitulo.className = 'text-success'
        modalConteudo.innerHTML = 'Despesa foi cadastrada com sucesso!'
        modalBotao.innerHTML = 'Voltar'
        modalBotao.className = 'btn btn-success'

        

        $('#modalRegistraDespesa').modal('show')

        ano.value = ''
        mes.value = ''
        dia.value = ''
        tipo.value = ''
        descricao.value = ''
        valor.value = ''
       
    } else {

        modalTitulo.innerHTML = 'Erro gravação'
        modalTitulo.className = 'text-danger'
        modalConteudo.innerHTML = 'existem campos não preenchidos'
        modalBotao.innerHTML = 'Voltar e corrigir'
        modalBotao.className = 'btn btn-danger'

        $('#modalRegistraDespesa').modal('show')

    }
}

function carregaListaDespesas() {
    let despesas = []

   despesas = bd.recuperarTodosOsRegistros()

   let listaDespesas = document.getElementById('listaDespesas')

        // < tr >
        //     <td>10/03/2012</td>
        //     <td>Alimentação</td>
        //     <td>Compras do mês</td>
        //     <td>44.34</td>
        // </tr >

        despesas.forEach(function(d) {

            let linha = listaDespesas.insertRow() //criando as linhas tr
            
            //criando as colunas td
            linha.insertCell(0).innerHTML = `${d.dia}/${d.mes}/${d.ano}`

            //ajustar tipo
            switch (parseInt(d.tipo)) {
                case 1: d.tipo = 'Alimentação'
                    break;
                case 2: d.tipo = 'Educação'
                    break
                case 3: d.tipo = 'Lazer'
                    break
                case 4: d.tipo = 'Saúde'
                    break
                case 5: d.tipo = 'Transporte'
                    break;
            }

            linha.insertCell(1).innerHTML = d.tipo

            linha.insertCell(2).innerHTML = d.descricao
            linha.insertCell(3).innerHTML = d.valor
            

        })

}

function pesquisarDespesa() {
    let ano = document.getElementById('ano').value
    let mes = document.getElementById('mes').value
    let dia = document.getElementById('dia').value
    let tipo = document.getElementById('tipo').value
    let descricao = document.getElementById('descricao').value
    let valor = document.getElementById('valor').value

    let despesa = new Despesa(ano, mes, dia, tipo, descricao, valor)

    bd.pesquisar(despesa)

}