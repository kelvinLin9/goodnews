<template>
  <v-container>
    <v-row >
      <v-col
        class="mt-2"
        cols="12"
      >
        <h2> {{ MonthlyMagazine.title }}</h2>
      </v-col>
      <v-col 
        cols="6" 
        :md="12 / MonthlyMagazine.content.length" 
        class="d-flex justify-center"
        v-for="item in MonthlyMagazine.content" :key="item">
        
        <v-img 
          :src="item.img" 
          height="400"
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
        MonthlyMagazine:{
          title:"月刊",
          content: [
            {
              img:"https://picsum.photos/530/165?random",
            },
            {
              img:"https://picsum.photos/550/165?random",
            },
            {
              img:"https://picsum.photos/551/165?random",
            },
          ],
        }
    }
  }
}
</script>

<style>

</style>