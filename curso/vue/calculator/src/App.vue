

<template>
  <div id="app">
    <h1>Olá mundo</h1>
  </div>
</template>

<script>
export default  {
  
}

</script>

<style>
@font-face {
    font-family: "RobotoMono";
    src: url('./fonts/RobotoMono-Thin.ttf');
}
*{
    font-family: 'RobotoMono', monospace;
}

body {
    margin: 0;
}

#app {
    display: flex;
    flex-direction: column;
    height: 100vh;
    justify-content: center;
    align-items: center;
    color: aliceblue;
    background: linear-gradient(#e66465, #9198e5);
}

</style>