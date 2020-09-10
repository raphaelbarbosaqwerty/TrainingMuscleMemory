export default {
    bind: function (element, information, vnode) {
        switch( Object.keys( information.modifiers)[0]) {
            case 'big':
                element.innerHTML = element.innerHTML.toUpperCase()
            break
            case 'tiny':
                element.innerHTML = element.innerHTML.toLowerCase()
            break
            case 'capitalaizing':
                let txt = element.innerHTML.split(' ')
                element.innerHTML = ''

                for (var i = 0; i < txt.length; i++) {
                    element.innerHTML += txt[i].substring(0, 1).toUpperCase() + txt[i].substring(1) + ' '
                }
            break
        }
    }
}