export default function() {
    const titulo = <h1>JSX � um conceito central</h1>
    function subtitulo() {
        return <h2>{"MUiTo BoM".toUpperCase()}</h2>
    }
    return (
        <div>
            {titulo}
            {subtitulo()}
            <p>
                {JSON.stringify({nome: "Maciel", idade: 20})}
            </p>
        </div>
    )
}