<template>
  <div class="auth-content">
    <div class="auth-modal">
        <img src="@/assets/logo.png" width="200" alt="Logo">
        <hr>
    </div>
  </div>
</template>

<script>
import { baseApiUrl, showError, userKey } from '../../global';
import Axios from 'axios';

export default {
  name: 'Auth',
  data: function() {
    return {
        showSignup: false,
        user: {}
    }
  }
}
</script>

<style>
  .auth-content {
    height: 100%;
    display: flex;
    justify-content: center;
    align-items: center;
  }
  .auth-modal {
    background-color: #fff;
    widows: 350px;
    padding: 35px;
    box-shadow: 0 1px 5px rgba(0, 0, 0, 0.15);

    display: flex;
    flex-direction: column;
    align-items: center;
  }
</style>