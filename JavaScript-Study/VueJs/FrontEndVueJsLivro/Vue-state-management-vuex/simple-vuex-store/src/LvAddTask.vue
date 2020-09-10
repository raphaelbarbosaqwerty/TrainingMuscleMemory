<template>
    <div>
        <input type="text" v-model="task">
        <button @click="submitTask">Add</button>
    </div>
</template>

<script>
import {mapActions} from 'vuex'

export default {
    name: 'lv-addtask',
    data() { return { task: ''} },
    methods: {
        ...mapActions({
            addTask: 'addNewTask'
        }),
        submitTask() {
            if(this.task != '')
                this.addTask(this.task)    
            this.task = ''
        }
    },
}
</script>

<style>
    
</style>