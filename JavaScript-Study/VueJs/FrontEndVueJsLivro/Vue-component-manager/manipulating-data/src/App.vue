<template>
  <div id="app">
    
    <div>
      <p>First name: {{ name }}</p>
      <p>Filtered name: {{ name | formatName}}</p>
      <p>Computed name: {{ nameFormated }}</p>
      <label>Input to compute</label>
      <input v-model="name" type="text">
    </div>

    <div>
      <p>{{ total }}</p>
      <button @click="calculate('-')"> - </button>
      <button @click="calculate('+')"> + </button>
    </div>

    <div>
      <input v-model="search" type="text"></input>
      <p v-text="result"></p>
    </div>
  </div>
</template>

<script>
export default {
  name: 'lv-count',
  data() {
    return {
      total: 10,
      name: 'raphael',
      result: '',
      search: ''
    }
  },
  methods: {
    calculate(signal) {
      this.total = (signal == '-') ? this.total - 1 : this.total + 1
    },
    getSearch() {
      let value = this.search
      setTimeout( () => {
        if(value == this.search)
          this.result = 'Ended typing..'
      }, 500)
    }
  },
  filters: {
    formatName(value) {
      console.log('Executing filter')
      value = value.toLowerCase()

      let splitName = value.split(' ')
      let result = ''
      for (let name of splitName)
      result += name.charAt(0).toUpperCase() + name.slice(1) + ''
      return result
    }
  },
  computed: {
    nameFormated() {
      console.log('executing computed')
      return this.name.toUpperCase()
    }
  },
  watch: {
    search: function(newValue, oldValue) {
      this.result = 'Waiting the end of typing...'
      this.getSearch()
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
