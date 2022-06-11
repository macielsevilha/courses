import './Main.css'
import React from 'react'
import Header from './Header' 
// Texto do header receberá valores diferentes conforme navegação

export default props =>
    // {...props} -> Header recebe propriedade definidas no main em App.jsx
    <React.Fragment> 
        <Header {...props} /> 
        <main className="content container-fluid">
            <div className="p-3 mt-3">
            {/* Recebe componentes informados em App.jsx */}
                {props.children} 
            </div>
        </main>
    </React.Fragment>