<template>
  <div class="hello">
    <my-canvas />
    <el-date-picker v-model="datetime" type="datetime" placeholder="日時を選択してください"></el-date-picker>
    <button v-on:click="onClick">click me</button>
    <h1>{{ msg }}</h1>
    <table border="1" >
      <th><td>name</td></th>
      <tr v-for="row in rows">
        <td>{{ row.name }}</td>
      </tr>
    </table>
    
    <highcharts :options="options1"></highcharts>



  </div>
</template>

<script lang="coffee" src="./HelloWorld.coffee"></script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
h1,
h2 {
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
