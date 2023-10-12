<template>
  <v-app>
    <v-main >
      <home-carousel/>
      <home-radio/>
      <home-podcast/>
      <home-highlights/>
      <home-DJ/>
      <monthly-magazine/>


    </v-main>
  </v-app>
</template>


<script>
import HomeCarousel from '../components/HomeCarousel.vue'
import HomeDJ from '../components/HomeDJ.vue'
import HomeHighlights from '../components/HomeHighlights.vue'
import HomePodcast from '../components/HomePodcast.vue'
import HomeRadio from '../components/HomeRadio.vue'
import MonthlyMagazine from '../components/MonthlyMagazine.vue'
  export default {
  components: { HomeCarousel, HomeRadio, HomePodcast, HomeHighlights, HomeDJ, MonthlyMagazine },
    data () {
      return {
     
      }
    }
  }
</script>