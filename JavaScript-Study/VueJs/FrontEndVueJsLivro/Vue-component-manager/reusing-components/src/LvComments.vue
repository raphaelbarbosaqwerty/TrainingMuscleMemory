<template>
    <div>
        <h4>Comments of {{ 'Article X' | upCaseLetters}}</h4>
    </div>
</template>

<script>
import posts from './Posts'

export default {
    name: 'LvComments',
    mixins: [posts]    
}
</script>

<style>
    
</style>