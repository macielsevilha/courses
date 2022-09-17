<template>
	<div id="app">
		<header-vue />
		<menu-vue />
		<content-vue />
		<footer-vue />
	</div>
</template>

<script>
import HeaderVue from './assets/components/template/Header.vue';
import MenuVue from './assets/components/template/Menu.vue';
import ContentVue from './assets/components/template/Content.vue';
import FooterVue from './assets/components/template/Footer.vue';

export default {
	name: "App",
	components: { HeaderVue, MenuVue, ContentVue, FooterVue }
}
</script>

<style>
  *{
	font-family: "Lato", sans-serif;
  }

  body {
	margin: 0;
  }
  #app {
	-webkit-font-smoothing: antialiased;
	-moz-osc-font-smothing: grayscale;

	height: 100vh;
    display: grid;
	grid-template-rows: 60px 1fr 40px;
	grid-template-columns: 300px 1fr;
	grid-template-areas: 
	    "header header"
		"menu content"
		"menu footer";
	
  }
</style>