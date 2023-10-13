<template>
  <v-container>
    <!-- 側邊選單 -->
    <v-navigation-drawer v-model="drawer" temporary>
      <v-list-item class="my-3" @click="drawer = false">
        <v-icon>mdi-chevron-left</v-icon>
        <span>返回</span>
      </v-list-item>
      <v-divider></v-divider>
      <v-list-item v-for="list in lists" :key="list.title">
        <v-list-item-content>
          <v-list-item-title >
            <router-link :to="list.url" class="text-decoration-none">
              <!-- <v-icon>{{list.icon}}</v-icon> -->
              <v-list-item 
                link 
                :title="list.title"
                class="text-black"
              >
              </v-list-item>
            </router-link>
          </v-list-item-title>
        </v-list-item-content>
      </v-list-item> 
    </v-navigation-drawer>
    <!--主導覽列-->
    <v-toolbar 
      color="white" 
      density="compact"
    >        
      <v-btn icon>
        <v-icon @click="drawer=!drawer">mdi-menu</v-icon>
      </v-btn>
      <router-link to="/" class="w-100">
        <div class="w-100">
          <img src="../assets/images/logo.png" alt="" class="mx-auto d-block">
        </div>
      </router-link>
      <!-- <router-link to="/">
        <v-img
          alt="Logo"
          class="shrink mr-2"
          contain
          src="../assets/images/logo.png"
          transition="scale-transition"
          width="40"
        />
      </router-link> -->
      <v-spacer></v-spacer>
      <v-btn variant="text" icon="mdi-magnify"></v-btn>
      <v-btn variant="text" icon="mdi-account"></v-btn>
    </v-toolbar>
  </v-container>
 

  

</template>

<script>
  export default {
    data () {
      return {
        drawer:false,
        lists:[
          {title: "靈修節目", url:"#"},
          {title: "隨選精華", url:"#"},
          {title: "節目表", url:"#"},
          {title: "主持人", url:"#"},
          {title: "Podcast", url:"/podcast"},
          {title: "直播", url:"#"},
          {title: "月刊", url:"#"},
          {title: "聯絡我們", url:"#"},
          {title: "友好連結", url:"#"},
        ]
      }
    }
  }
</script>

<style scoped>

</style>

