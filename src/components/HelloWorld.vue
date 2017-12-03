<template>
  <div class="hello">

  <svg width="500" height="300">

    <rect x="0" y="0" width="500" height="300" fill="gray" />

    <g ref="white_line" :transform="line_speed">
      <rect y="0" x="0" width="50" height="10" fill="white" />
      <rect y="0" x="70" width="50" height="10" fill="white" />
      <rect y="0" x="140" width="50" height="10" fill="white" />
      <rect y="0" x="210" width="50" height="10" fill="white" />
      <rect y="0" x="280" width="50" height="10" fill="white" />
      <rect y="0" x="350" width="50" height="10" fill="white" />
      <rect y="0" x="420" width="50" height="10" fill="white" />
      <rect y="0" x="490" width="50" height="10" fill="white" />
    </g>

  </svg>    





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

    <dso-meter g_width=500 height="250" />

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
