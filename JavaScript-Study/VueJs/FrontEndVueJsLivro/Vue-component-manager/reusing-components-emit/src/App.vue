<template>
  <div id="app">
    <lv-user name="Raphael" @newMsg="write"></lv-user>
    <br>
    <lv-user name="Qwerty" @newMsg="write"></lv-user>
    <div v-html="chat"></div>
  </div>
</template>

<script>
import LvUser from './LvUser'

export default {
  name: 'app',
  components: {LvUser},
  data () { return { chat: '' } },
  methods: {
    write(message) {
      this.chat = message + '<hr>' + this.chat
    }
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
