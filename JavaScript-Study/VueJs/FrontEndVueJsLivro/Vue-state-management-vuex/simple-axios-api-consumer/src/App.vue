<template>
  <div id="app">
    <lv-list title="Cars" :list="cars"></lv-list>
    <lv-list title="Planes" :list="planes"></lv-list>
  </div>
</template>

<script>
import Car from './services/cars'
import Plane from './services/planes'
import LvList from './List.vue'

export default {
  name: 'app',
  data() { return { cars: {}, planes: {} } },
  components: {LvList},
  mounted() {
    Car.list().then(data => this.cars = data.data)
    Plane.list().then(data => this.planes = data.data)
  }
  
}
</script>

<style>
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}

h1, h2 {
  font-weight: normal;
}

ul {
  list-style-type: none;
  padding: 0;
}

li {
  display: inline-block;
  margin: 0 10px;
}

a {
  color: #42b983;
}
</style>
