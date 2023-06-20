<script setup>
import router from '../../router'

function register() {
  router.push({
    name: 'event-details'
  })
}
</script>

<template>
  <div>
    <p>Register the event here</p>
    <button @click="register">Register Me</button>
  </div>
</template>

<style scoped></style>
