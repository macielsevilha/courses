import Layout from "../components/Layout";
import Tabela from "../components/Tabela";
import Cliente from "../core/Cliente";

export default function Home() {

  const clientes = [
    new Cliente('ana', 24, '1'),
    new Cliente('Maciel', 20, '2'),
    new Cliente('Ester', 34, '3'),
    new Cliente('Bia', 19, '4')
  ]

  function clienteSelecionado(cliente: Cliente) {
      console.log(cliente.nome)
  }
  function clienteExcluido(cliente: Cliente) {
      console.log('exluir ' + cliente.nome)
  }

  return (
   <div className={`
   flex justify-center items-center h-screen
   bg-gradient-to-r from-blue-500 to-purple-500
   text-white
   `}>
     <Layout titulo="Cadastro Simples">
         <Tabela clientes={clientes} clienteSelecionado={clienteSelecionado} clienteExcluido={clienteExcluido}></Tabela>
     </Layout>
   </div>
  )
}
