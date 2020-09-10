const HelloWorld = {}

HelloWorld.install = function (Vue, options) {
    Vue.hello = () => {
        console.log('Hello world from vue with Global method')
    }

    Vue.prototype.$hello = (options) => {
        console.log('Hello world from Vue with instance')
    }

    Vue.directive('Hello', {
        bind (el, binding, vnode, oldVnode) {
            el.innerHTML = 'plugin text'
        }
    })

    Vue.mixin({
        create: () => {
            console.log('created executing by the plugin')
        }
    })
}
export default HelloWorld