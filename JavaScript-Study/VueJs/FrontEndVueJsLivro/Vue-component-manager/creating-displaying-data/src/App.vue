<template>
  <div id="app">
    <div>
      <h1 v-once v-text="title"></h1>
      <h2>{{ subtitle }}</h2>
    </div>
    <div v-if="tasks.length <= 0">
      Não há tarefas
    </div>

    <div v-if="tasks.length > 0">
      Existem {{ tasks.length }} tarefas    

      <ul>
        <!--<li v-for="task in tasks">{{task}}</li> -->
      </ul>
    </div>

    <div>
      <input v-bind:disabled="tasks.length == 0" v-model="subtitle" type="text" placeholder="Description">
      <button @click="tasks = []">Limpar</button>
    </div>
  </div>
</template>

<script>
/*
export default {
  name: 'app',
  data () {
    return {
      msg: 'Welcome to Your Vue.js App'
    }
  }
}
*/
export default {
  name: 'lv-tarefas',
  data() {
    return {
      title: 'Todo-List',
      subtitle: 'Define description',
      tasks: []
    }
  },
  mounted() {
    setTimeout( () => {
      this.title = "New title here!"
      this.tasks = ['task 0', 'task 1', 'task 2', 'task 3']
    }, 3000)
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
