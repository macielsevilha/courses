import ClienteRepositorio from "../../core/ClienteRepositorio";
import Cliente from "../../core/Cliente";
import firebase from "../config";

export default class ColecaoCliente implements ClienteRepositorio {

   conversor = {
    toFirestore(cliente: Cliente) {
        return {
            nome: cliente.nome,
            idade: cliente.idade,
        }
    },
    fromFirestore(snpashot: firebase.firestore.QueryDocumentSnapshot, options: firebase.firestore.SnapshotOptions) : Cliente {
         const dados = snpashot.data(options)
         return new Cliente(dados.nome, dados.idade, snpashot.id)
    } 
   }
   async salvar(cliente: Cliente): Promise<Cliente> {
        return null
    }
   async excluir(cliente: Cliente): Promise<void> {
        return null
    }
   async obterTodos(): Promise<Cliente[]> {
        return null
    }
}