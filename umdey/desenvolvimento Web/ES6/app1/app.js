
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

        modalTitulo.innerHTML = 'Grvação sucesso'
        modalTitulo.className = 'text-success'
        modalConteudo.innerHTML = 'Despesa foi cadastrada com sucesso!'
        modalBotao.innerHTML = 'Voltar'
        modalBotao.className = 'btn btn-success'

        $('#modalRegistraDespesa').modal('show')
    } else {

        modalTitulo.innerHTML = 'Erro gravação'
        modalTitulo.className = 'text-danger'
        modalConteudo.innerHTML = 'existem campos não preenchidos'
        modalBotao.innerHTML = 'Voltar e corrigir'
        modalBotao.className = 'btn btn-danger'

        $('#modalRegistraDespesa').modal('show')

    }
}