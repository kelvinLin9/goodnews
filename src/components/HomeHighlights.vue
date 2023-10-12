<template>
  <v-container>
    <v-row>
      <v-col
        class="mt-2"
        cols="12"
      >
        <h2> {{ highlights.title }}</h2>
      </v-col>

      <v-col
        v-for="item in highlights.content"
        :key="item"
        cols="6" 
        :md="12 / highlights.content.length" 
        >
        <v-card
          class="mx-auto"
          max-width="350"
          variant="elevated"
        >
          <v-card-item>
            <div>
              <h3 class="mb-3">
                {{ item.title }}
              </h3>
              <div class="text-caption mb-3">
                {{ item.content }}
              </div>
              <div class="text-caption mb-3">
                {{ item.date }}
              </div>
            </div>
          </v-card-item>
        </v-card>
      </v-col>
    </v-row>
  </v-container>
</template>

<script>
export default {
  data () {
      return {
        highlights:{ 
          title:"節目精華",
                content: [
                  {
                    img:"https://picsum.photos/351/165?random",
                    title:"職場大講堂",
                    content:"想要財富自由，提早退休？你要懂的五種人生5張表",
                    date:"2021-11-17"
                  },
                  {
                    img:"https://picsum.photos/351/165?random",
                    title:"生活家一筆",
                    content:"財團法人基督徒救世會董事長暨發言人_解慧珍女士（一）",
                    date:"2021-11-17"
                  },
                  {
                    img:"https://picsum.photos/351/165?random",
                    title:"藝文生活家",
                    content:"想要財富自由，提早退休？你要懂的五種人生5張表",
                    date:"2021-11-17"
                  },
                ],
              },
    }
  }
}
</script>

<style>

</style>