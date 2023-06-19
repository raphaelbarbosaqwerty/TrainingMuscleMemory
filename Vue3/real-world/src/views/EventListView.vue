<script setup>
import { ref, onMounted } from 'vue'
import EventCard from '../components/EventCard.vue'
import EventServices from '../services/EventService'

const events = ref(null)

onMounted(() => {
  EventServices.getEvents()
    .then((response) => {
      events.value = response.data
    })
    .catch((error) => {
      console.log(error)
    })
})
</script>

<template>
  <div class="events">
    <h1>Events For Good</h1>
    <EventCard v-for="event in events" :key="event.id" :event="event"> </EventCard>
  </div>
</template>

<style scoped>
.events {
  display: flex;
  flex-direction: column;
  align-items: center;
}
</style>
