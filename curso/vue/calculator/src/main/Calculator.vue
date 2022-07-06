<template>
  <div class="calculator">
    <DisplayVue />
    <ButtonVue />
  </div>
</template>

<script>
import DisplayVue from '@/components/Display.vue'
import ButtonVue from '@/components/Button.vue'
export default {
  name: 'AllCaculador',
  components: {
    DisplayVue,
    ButtonVue
  }
}
</script>

<style>
.calculator {
  height: 320px;
  widows: 235px;
  border-radius: 5px;
  overflow: hidden;

  display: grid;
  grid-auto-columns: repeat(4, 25%);
  grid-auto-rows: 1fr 48px 48px 48px 48px 48px;
}
</style>