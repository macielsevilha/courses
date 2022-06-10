import React from "react";
import { Component } from "react";
import Main from './template/Main'

const headerProps = {
    icon: 'users',
    title: 'Usu�rios',
    subtitle: 'Cadastro de usu�rios: Incluir, Listar, Alterar e Excluir'
}

export default class UserCrud extends Component {
    render() {
        return (
            <Main {...headerProps} >
                Cadastro de Usu�rio
            </Main>
        )
    }
}