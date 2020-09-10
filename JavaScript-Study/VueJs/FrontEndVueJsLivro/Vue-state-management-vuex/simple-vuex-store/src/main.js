import Vue from 'vue'
import App from './App.vue'
import MyStore from './store/modules/tasks/root'

new Vue({
  store: MyStore,
  el: '#app',
  render: h => h(App)
})
