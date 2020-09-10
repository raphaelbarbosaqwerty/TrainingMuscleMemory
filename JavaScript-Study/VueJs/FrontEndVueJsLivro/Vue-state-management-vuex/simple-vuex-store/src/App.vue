<template>
  <div id="app">
    <lv-addtask></lv-addtask>
    <lv-tasks></lv-tasks>
    <lv-searchtask></lv-searchtask>
  </div>
</template>

<script>
import LvAddtask from './LvAddTask'
import LvTasks from './LvTasks'
import LvSearchtask from './LvSearchTask'
import {mapState} from 'vuex'

export default {
  name: 'app',
  components: { LvAddtask, LvTasks, LvSearchtask },
  computed: {
    ...mapState(['name'])
  },
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
