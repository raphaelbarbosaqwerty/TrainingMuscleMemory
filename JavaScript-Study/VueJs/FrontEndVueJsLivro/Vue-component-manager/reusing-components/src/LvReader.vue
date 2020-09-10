<template>
    <div>
        <h1>Reading {{ 'Article X' | upCaseLetters }}</h1>
    </div>
</template>

<script>
import posts from './Posts'

export default {
    name: 'LvReader',
    mixins: [posts]    
}
</script>

<style>

</style>