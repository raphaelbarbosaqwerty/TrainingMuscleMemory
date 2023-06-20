<script setup>
import { ref, onMounted, watchEffect, reactive, computed } from 'vue'
import EventCard from '../components/EventCard.vue'
import EventServices from '../services/EventService'

const props = defineProps({
  page: Number
})

const events = ref(null)
const totalEvents = ref(0)
const reactivity = reactive({
  hasNextPage: computed(() => {
    var total = Math.ceil(totalEvents.value / 2)
    return props.page < total
  })
})

onMounted(() => {
  watchEffect(() => {
    EventServices.getEvents(2, props.page)
      .then((response) => {
        events.value = response.data
        totalEvents.value = response.headers['x-total-count']
      })
      .catch((error) => {
        console.log(error)
      })
  })
})
</script>

<template>
  <div class="events">
    <h1>Events For Good</h1>
    <EventCard v-for="event in events" :key="event.id" :event="event"> </EventCard>
    <RouterLink
      :to="{ name: 'event-list', query: { page: props.page - 1 } }"
      rel="prev"
      v-if="props.page != 1"
      >Prev Page</RouterLink
    >
    <RouterLink
      :to="{ name: 'event-list', query: { page: props.page + 1 } }"
      rel="next"
      v-if="reactivity.hasNextPage"
      >Next Page</RouterLink
    >
  </div>
</template>

<style scoped>
.events {
  display: flex;
  flex-direction: column;
  align-items: center;
}
</style>
