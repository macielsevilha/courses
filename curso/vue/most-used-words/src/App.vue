<template>
  <v-app>
    <v-app-bar app color="primary" dark>
       <v-toolbar-title>Most Used Words</v-toolbar-title>
    </v-app-bar>
    <v-content>
      <home-vue />
    </v-content>
  </v-app>
</template>

<script>
import HomeVue from './components/Home.vue';

export default {
  name: 'App',

  components: { HomeVue },

  data: () => ({
    //
  }),
};
</script>
