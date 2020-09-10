<template>
    <div>
        <h1>Welcome to the NewUserPage</h1>
        <button @click="failed">Fail</button>
        <button @click="success">Success</button>
    </div>
</template>

<script>
export default {
    name: 'lv-newuser',
    methods: {
        failed() {
            this.$router.replace('/users/error')
        },
        success() {
            this.$router.replace('/users/raphael')
        }
    }
}
</script>

<style>
    
</style>