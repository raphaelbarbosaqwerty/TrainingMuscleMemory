import React from 'react'
import ReactDOM from 'react-dom'
import Family from './family'
import Member from './member'

//Passando propiedades para  Componentes filhos
ReactDOM.render(
    <Family lastName='Cosmo'>

        <Member name='Saint' />
        <Member name='Raphael'/>
        <Member name='Atena'/>
        
    </Family>
, document.getElementById('app'))


