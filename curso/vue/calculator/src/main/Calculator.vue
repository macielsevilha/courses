<template>
  <div class="calculator">
    <Display />
    <Button label="AC" triple />
    <Button label="/" operation />
    <Button label="7" />
    <Button label="8" />
    <Button label="9" />
    <Button label="*" operation />
    <Button label="4" />
    <Button label="5" />
    <Button label="6" />
    <Button label="-" operation />
    <Button label="1" />
    <Button label="2" />
    <Button label="3" />
    <Button label="+" operation />
    <Button label="0" double />
    <Button label="." />
    <Button label="=" operation />
  </div>
</template>

<script>
import Display from '@/components/Display.vue'
import Button from '@/components/Button.vue'
export default {
  name: 'AllCaculador',
  components: {
    Display,
    Button
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