import Layout from "../components/Layout";

export function getStaticProps() {
    return {
        props: {
            numero: Math.random()
        }
}
}
export default function Estatico() {
    return (
        <Layout titulo="Conte�do Est�tico">
           <div>{props.numero}</div>
        </Layout>
    )
}