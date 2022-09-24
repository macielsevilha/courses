<template>
	<div id="app" :class="{'hide-menu' : !isMenuVisible || !user} ">  
		<header-vue title="Maciel - Base de conhecimento" 
		:hideToggle="!user"
		:hideUserDropdown="!user" />
		<menu-vue v-if="user" />
		<content-vue />
		<footer-vue />
	</div>
</template>

<script>
import { mapState } from 'vuex';
import HeaderVue from './components/template/Header.vue';
import MenuVue from './components/template/Menu.vue';
import ContentVue from './components/template/Content.vue';
import FooterVue from './components/template/Footer.vue';

export default {
	name: "App",
	components: { HeaderVue, MenuVue, ContentVue, FooterVue },
	computed: mapState(['isMenuVisible', 'user'])
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
  #app.hide-menu {
	grid-template-areas: 
	     "header header"
		 "content content"
		 "footer footer";
  }
</style>