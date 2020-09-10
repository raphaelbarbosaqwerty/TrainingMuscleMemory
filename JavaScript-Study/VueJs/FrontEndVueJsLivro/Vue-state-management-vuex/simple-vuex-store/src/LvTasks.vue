<template>
    <div>
        <ul>
            <li v-for="task in tasks" :key="task">
            <lv-deltask :task="task"></lv-deltask>
            {{ task }}
            </li>
        </ul>
    </div>
</template>

<script>
import LvDeltask from './LvDelTask'
import {mapGetters} from 'vuex'

export default {
    name: 'lv-tasks',
    components: {LvDeltask},
    computed: {
        ...mapGetters({
            tasks: 'listTasks'
        }),
    }
}
</script>

<style>
    
</style>