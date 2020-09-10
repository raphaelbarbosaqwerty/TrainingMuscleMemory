import React from 'react'
import {bindActionCreators } from 'redux'
import { connect } from 'react-redux'
import {inc, dec, zer, stepChanged} from './counterActions'

const Counter = (props) => (
    <div>
        <h1>{props.counter.number}</h1>
        <input onChange={props.stepChanged}
                value={props.counter.step} type='number' />
        <button onClick={props.dec}>Dec</button>
        <button onClick={props.inc}>Inc</button>
        <button onClick={props.zer}>Zerar</button>
    </div>
)
//Esses 2 methodos estão ensinado como fazer a ligação com React-Redux
const mapStateToProps = state => ({ counter: state.counter})
const mapDispatchToProps = dispatch => bindActionCreators({ inc, dec, zer, stepChanged}, dispatch)

//Chamada de uma função que retorna uma função que está sendo chamada (A)(B)
export default connect(mapStateToProps, mapDispatchToProps)(Counter)