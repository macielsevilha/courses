<template>
  <div class="calculator">
    <Display value="1000" />
    <Button  label="AC" triple @onClick="clearMemory" />
    <Button label="/" operation @onClick="setOperation" />
    <Button label="7" @onClick="addDigit" />
    <Button label="8" @onClick="addDigit" />
    <Button label="9" @onClick="addDigit" />
    <Button label="*" operation @onClick="setOperation" />
    <Button label="4" @onClick="addDigit" />
    <Button label="5" @onClick="addDigit" />
    <Button label="6" @onClick="addDigit" />
    <Button label="-" operation @onClick="setOperation" />
    <Button label="1" @onClick="addDigit" />
    <Button label="2" @onClick="addDigit" />
    <Button label="3" @onClick="addDigit" />
    <Button label="+" operation @onClick="setOperation" />
    <Button label="0" @onClick="addDigit" double />
    <Button label="." @onClick="addDigit" />
    <Button label="=" operation @onClick="setOperation" />
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
  },
  methods: {
    clearMemory() {
    
    },
    setOperation(operation) {
     
    },
    addDigit(n) {
     
    }
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