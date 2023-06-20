<script setup>
import { onMounted, ref } from 'vue'
import EventServices from '../../services/EventService'

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
    <div id="nav">
      <RouterLink :to="'/event/' + event.id">Event | </RouterLink>
      <RouterLink :to="'/event/' + event.id + '/edit'">Edit</RouterLink>
      <RouterLink :to="'/event/' + event.id + '/register'"> | Register</RouterLink>
    </div>
    <RouterView :event="event"></RouterView>
  </div>
</template>

<style scoped></style>
