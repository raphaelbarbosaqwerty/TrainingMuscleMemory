<template>
  <div id="app">
    <div>    
      <h4>List one</h4>
      <lv-list :list="['feijão', 'arroz', 'carne']"></lv-list>
      <br>
      <lv-list :list="['feijão', 'arroz', 'carne']" ordened></lv-list>
      <br>
      <h4>Lista dois</h4>
      <lv-list :list="['leite', 'biscoito', 'bombom', 'aveia']" ordened></lv-list>
      <br>
      <lv-list :list="['aveia', 'biscoito', 'bombom', 'leite']"></lv-list>
    </div>

      <div>
        <lv-card title="Price">
          Here you found <strong>low</strong> prices!

          <div slot="card_footer">
            My footer
          </div>
        </lv-card>
        <lv-card title="Quality">
          We have all prodcuts with <strong>quality</strong> on the market
        </lv-card>
      </div>
        <lv-reader></lv-reader>
        <lv-comments></lv-comments>
      <div>

      </div>
  </div>
</template>

<script>
import LvList from './LvList'
import LvCard from './LvCard'
import LvReader from './LvReader'
import LvComments from './LvComments'

export default {
  name: 'app',
  components: {LvList, LvCard}
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
