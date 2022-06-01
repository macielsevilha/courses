import React from 'react'
import ReactDOM from 'react-dom'

import BomDia from './components/BomDia'

import Multi from './components/Multiplos'

ReactDOM.render(
    <div>
        <Multi.BoaTarde nome="Ana"></Multi.BoaTarde>
        <Multi.BoaNoite nome="Maciel" />
    </div>
    , document.getElementById('root'))