<template>
  <v-container fluid>
    <v-form> 
        <v-file-input 
        label="Selecione as legendas"
        prepend-icon="mdi-message-text"
        append-outer-icon="mdi-send"
        outlined
        multiple 
        chips 
        v-model="files"
        @click:append-outer="processSubtitles"/>
    </v-form>
    <div class="pills">
      <pill-vue v-for="word in groupedWords" :key="word.name"
        :name="word.name" :amount="word.amount" />
    </div>
  </v-container>
</template>

<script>
import PillVue from './Pill.vue'

export default {
  name: "AllHome",
  components: { PillVue },
  data: function() {
    return {
        files: [],
        groupedWords: [
            { name: 'my', amount: 1223},
            { name: 'his', amount: 900},
            { name: 'hir', amount: 590},
        ]
    }
  },
  methods: {
    processSubtitles() {
        console.log(this.files)
    }
  }
}
</script>

<style>
.pills {
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between;
}

</style>