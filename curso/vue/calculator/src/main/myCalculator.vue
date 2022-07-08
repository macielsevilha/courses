<template class="calculator">
    <Display></Display>
    <Button></Button>
</template>

<script>

import Display from '@/components/simpleDisplay.vue'
import Button from '@/components/simpleButton.vue'

export default {
   name: 'Calculator',
   components: { Display, Button }
}
</script>

<style>
   .calculator {
    height: 320px;
    width: 235px;
    border-left: 5px;
    overflow: hidden;

    display: grid;
    grid-template-columns: repeat(4, 25%);
    grid-auto-rows: 1fr 48px 48px 48px 48px 48px;
   }
</style>