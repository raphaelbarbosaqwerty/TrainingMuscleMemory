<script setup>
import { onMounted, ref } from 'vue'
import EventServices from '../services/EventService'

const event = ref(null)
const props = defineProps({
  id: { required: true }
})
onMounted(() => {
  EventServices.getEvent(props.id)
    .then((response) => {
      event.value = response.data
    })
    .catch((error) => {
      console.log(error)
    })
})
</script>

<template>
  <div v-if="event">
    <h1>{{ event.title }}</h1>
    <p>{{ event.time }} on {{ event.date }} @ {{ event.location }}</p>
    <p>{{ event.description }}</p>
  </div>
</template>

<style scoped></style>
