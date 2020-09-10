import React from 'react'
import ReactDOM from 'react-dom'
import ClassComponent from './classComponent'

//Componente com estado
ReactDOM.render(
    <ClassComponent label='Contador' initialValue={10} />
, document.getElementById('app'))


