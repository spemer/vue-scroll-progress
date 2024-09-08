<template lang="pug">
  div#placeholder
    p(
      v-for="value in 100"
      :key="value"
    ) {{ textLoop.text }}
</template>

<script>
export default {
  name: "placeholder",

  data() {
    return {
      textLoop: {
        text: "Watch the top of the page while scrolling!"
      }
    };
  }
};
</script>

<style lang="scss">
#placeholder {
  margin: $grid32x 0;
  text-align: center;
}
</style>
