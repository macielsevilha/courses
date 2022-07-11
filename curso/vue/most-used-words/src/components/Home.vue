<template>
  <v-container fluid>
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
        groupedWords: [
            { name: 'my', amount: 1223},
            { name: 'his', amount: 900},
            { name: 'hir', amount: 590},
        ]
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