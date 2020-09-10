import React from 'react'

//Função
function childrenWithProps(children, props){
    return React.Children.map(props.children,
        child => React.cloneElement(child, {...props}))
}

export {childrenWithProps}