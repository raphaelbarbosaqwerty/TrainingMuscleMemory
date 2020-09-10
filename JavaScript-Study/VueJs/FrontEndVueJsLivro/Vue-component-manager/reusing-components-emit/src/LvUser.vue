<template>
    <div>
        <small>{{ name }}:</small>
        <input type="text" v-model="message">
        <button @click="sendMessage">Send</button>
    </div>
</template>

<script>
export default {
    name: 'lv-user',
    data() { return { message: ''} },
    props: ['name'],
    methods: {
        sendMessage() {
            this.$emit('newMsg', this.name + ': ' + this.message)
            this.message = ''
        }
    }
}
</script>

<style>
    
</style>