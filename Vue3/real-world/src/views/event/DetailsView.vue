<script setup>
const props = defineProps({
  event: { required: true }
})
</script>

<template>
  <div>
    <p>{{ props.event.time }} on {{ props.event.date }} @ {{ props.event.location }}</p>
    <p>{{ props.event.description }}</p>
  </div>
</template>

<style scoped></style>
