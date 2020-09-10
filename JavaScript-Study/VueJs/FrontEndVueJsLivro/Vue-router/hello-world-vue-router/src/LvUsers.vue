<template>
    <div>
        <h1>Welcome to the UsersPage</h1>
        <router-link to="/users/new">New user</router-link>
        <router-view></router-view>
    </div>
</template>

<script>
export default {
    name: 'lv-userspage',
}
</script>

<style>
    
</style>