import Vue from 'vue'
import App from './App.vue'
import VFormat from './format'

Vue.directive('format', VFormat)

new Vue({
  el: '#app',
  render: h => h(App)
})
