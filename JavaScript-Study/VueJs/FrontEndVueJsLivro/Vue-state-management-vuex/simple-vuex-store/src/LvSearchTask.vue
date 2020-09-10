<template>
    <div>
        <label>Search for</label>
        <input type="text" v-model="term">
        <ul>
            <li v-for="task in result(term)" :key="task">{{ task }}</li>
        </ul>
    </div>
</template>

<script>
import {mapGetters} from 'vuex'

export default {
    name: 'lv-searchtask',
    data() { return { term: ''} },
    computed: {
        ...mapGetters({
            result: 'searchTasks'
        })
    }
}
</script>

<style>
    
</style>