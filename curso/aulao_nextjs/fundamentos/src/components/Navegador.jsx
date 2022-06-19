import Link from 'next/link'
import styles from '../styles/Navegador.module.css'

export default function Navegador(props) {
    return (
            <Link href={props.destino}>
                <div className={styles.navegador} style={{
                    background: props.cor ?? 'dodgerblue'
                }}> 
                   {props.texto}
                </div>
            </Link>
    )
}