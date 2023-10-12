<template>
  <v-container>
    <v-row >
      <v-col
        class="mt-2"
        cols="12"
      >
        <h2> {{ podcast.title }}</h2>
      </v-col>
      <v-col 
        cols="6" 
        :md="12 / podcast.content.length" 
        class="d-flex justify-center"
        v-for="item in podcast.content" :key="item">
        
        <v-img 
          :src="item.img" 
          cover>
        </v-img>
        
      </v-col>
    </v-row>
  </v-container> 
</template>

<script>
export default {
  data () {
      return {
        podcast:{
          title:"Podcast",
          content: [
            {
              img:"https://picsum.photos/360/165?random",
            },
            {
              img:"https://picsum.photos/361/165?random",
            },
            {
              img:"https://picsum.photos/362/165?random",
            },
          ],
        }
    }
  }
}
</script>

<style>

</style>