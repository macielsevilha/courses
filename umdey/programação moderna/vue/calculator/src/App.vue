<template>
  <div>
    <h1>Caculador</h1>
    <Calculador />
  </div>
</template>

<script>
import Calculador from './main/Calculator.vue'
export default {
  name: 'App',
  components: { Calculador }
  
}
</script>

<style>
  @font-face {
    font-family: "RobotoMono";
    src: url("./fonts/RobotoMono-Thin.ttf");
  }
  *{
    font-family: "RobotoMono", monospace;
  }
  body {
    display: 0;
  }
  #app {
    display: flex;
    flex-direction: column;
    height: 100vh;

    justify-content: center;
    align-items: center;
    text-align: center;

    color: aliceblue;
    background: linear-gradient(to right, rgb(83, 105, 118), rgb(41, 46, 73));

  }
</style>
