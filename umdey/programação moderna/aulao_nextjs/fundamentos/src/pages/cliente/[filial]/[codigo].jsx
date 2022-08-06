import Layout from "../../../components/Layout";
import {useRouter} from 'next/router'

export default function ClienteProCodigo() {
  const router = useRouter()
    return (
        <Layout titulo="Navega��o Din�mica">
            <div>C�digo = {router.query.codigo}</div>
            <div>Filial = {router.query.filial}</div>
        </Layout>
    )
}