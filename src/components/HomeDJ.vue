<template>
  <v-container>
    <v-row >
      <v-col
        class="mt-2"
        cols="12"
      >
        <h2> {{ dj.title }}</h2>
      </v-col>
      <v-col 
        cols="6" 
        :md="12 / dj.content.length" 
        class="d-flex justify-center"
        v-for="item in dj.content" :key="item">
        
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
        dj:{
          title:"DJ、Host",
          content: [
            {
              img:"https://picsum.photos/330/165?random",
            },
            {
              img:"https://picsum.photos/331/165?random",
            },
            {
              img:"https://picsum.photos/332/165?random",
            },
            {
              img:"https://picsum.photos/333/165?random",
            },
          ],
        }
    }
  }
}
</script>

<style>

</style>