import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)

import state from './state'
import Tasks from './modules/tasks/root'

export default new Vuex.Store({
    state: state,
    modules: {
        Tasks
    }
    
})