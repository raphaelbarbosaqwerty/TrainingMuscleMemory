<template>
    <div>
        <button @click="deleteTask(task)">D</button>
    </div>
</template>

<script>
import {mapActions} from 'vuex'

export default {
    name: 'lv-deltask',
    props: {
        task: {
            required: true,
            type: String
        }
    },
    methods: {
        ...mapActions({
            deleteTask: 'deleteOldTask'
        }),
    }
}
</script>

<style>
    
</style>