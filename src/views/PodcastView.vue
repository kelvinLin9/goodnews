<template>
  <v-toolbar>
    <template v-slot:prepend>
      <v-btn icon="mdi-arrow-left"></v-btn>
    </template>

    <v-btn icon="mdi-archive-plus-outline" class="ms-5"></v-btn>

    <v-btn icon="mdi-alert-circle-outline"></v-btn>

    <v-btn icon="mdi-delete-outline"></v-btn>

    <template v-if="$vuetify.display.smAndUp">
      <v-divider
        class="mx-3 align-self-center"
        length="24"
        thickness="2"
        vertical
      ></v-divider>

      <v-btn icon="mdi-folder-outline"></v-btn>

      <v-btn icon="mdi-tag-outline"></v-btn>

      <v-btn icon="mdi-dots-vertical"></v-btn>
    </template>
  </v-toolbar>







  <v-card
    class="mx-auto"
    max-width="450"
    title="Strengthen your passwords"
    text="Update your weak or re-used passwords with Password Checkup. It's free and only takes a few minutes. Click the Take Checkup button to get started."
  >

    <template v-slot:actions>
      <v-btn height="48">
        No Thanks
      </v-btn>

      <v-btn
        :loading="loading"
        class="flex-grow-1"
        height="48"
        variant="tonal"
        @click="load"
      >
        Take Checkup
      </v-btn>
    </template>
  </v-card>
</template>

<script>
export default {

}
</script>

<style>

</style>

