import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)

import StoreState from './state'
import StoreMutations from './mutations'
import StoreGetters from './getters'
import StoreActions from './actions'

export default new Vuex.Store({
    state: StoreState,
    mutations: StoreMutations,
    getters: StoreGetters,
    actions: StoreActions
    
})