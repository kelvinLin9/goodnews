<template>
  <v-app>
    <Navbar/>
    <router-view></router-view>
  </v-app>
  

  
</template>

<script>
import Navbar from '../components/NavbarComp.vue';
export default {
  components: {
    Navbar,
  },
  computed: {
  },
  methods: {
  },
  created () {
    console.log(this.$route.name)
  },
}
</script>
