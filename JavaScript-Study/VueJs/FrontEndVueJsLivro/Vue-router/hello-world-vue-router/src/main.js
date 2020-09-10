import Vue from 'vue'
import VueRouter from 'vue-router'
Vue.use( VueRouter )

import App from './App.vue'
import Home from './LvHome.vue'
import Users from './LvUsers.vue'
import NewUser from './LvNewUser'
import Notification from './LvNotification'

const router = new VueRouter({
  mode: 'history',
  routes: [
    {path: '/', component: Home},
    {
      path: '/users', 
      component: Users,
      children: [
        {path: 'new', component: NewUser},
        {path: ':msg', component: Notification, props: true},
      ]}
  ]
})

new Vue({
  el: '#app',
  router,
  render: h => h(App)
})
