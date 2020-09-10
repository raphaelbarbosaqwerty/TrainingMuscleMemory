<template>
    <div>
        <h1>Welcome to the NotificationPage</h1>
        <p v-if="msg == 'error'">Error with this user</p>
        <p v-if="msg != 'error'">Hello, {{ msg }}</p>
    </div>
</template>

<script>
export default {
    name: 'lv-notification',
    props: ['msg'],
}
</script>

<style>
    
</style>