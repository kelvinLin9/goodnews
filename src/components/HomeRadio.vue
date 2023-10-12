<template>
  <v-container class="mt-3">
    <v-row >
      <v-col 
        cols="6" 
        md="3" 
        class="d-flex justify-center"
        v-for="(image, index) in images" :key="index">
        <v-avatar size="150">
          <v-img :src="image" cover></v-img>
        </v-avatar>
      </v-col>
    </v-row>
  </v-container>
</template>

<script>
export default {
  data() {
    return {
      images: [
        'https://picsum.photos/355/165?random',
        'https://picsum.photos/356/165?random',
        'https://picsum.photos/357/165?random',
        'https://picsum.photos/358/165?random',
      ],
    };
  },
}
</script>

<style>

</style>