<template lang="pug">
  div#hero
    div.container
      div.hero__container
        img.hero__container--img(
          :src="metaURI"
        )
</template>

<script>
export default {
  data() {
    return {
      metaURI:
        "https://github.com/spemer/vue-scroll-progress/blob/master/docs/src/assets/metacard.png?raw=true"
    };
  }
};
</script>

<style lang="scss">
#hero {
  .hero__container {
    .hero__container--img {
      margin: 0 auto;
      display: block;
      height: $grid40x;
      margin-bottom: $grid8x;
    }
  }
}
</style>
