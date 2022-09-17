<template>
  <div class="user-dropdown">
    <div class="user-button">
        <span class="d-none d-sm-block">{{ user.name }}</span>
        <div class="user-dropdown-img">
            <gravatar :email="user.email" alt="user" />
        </div>
        <i class="fa fa-angle-down"></i>
    </div>
  </div>
</template>

<script>
import { mapState } from 'vuex';
import Gravatar from 'vue-gravatar';

export default {
  name: 'UserDropdown',
  components: { Gravatar },
  computed: mapState(['user'])
}
</script>

<style>

</style>]