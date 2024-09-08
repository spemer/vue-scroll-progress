<template lang="pug">
  Readme.container.readme
</template>

<script>
import Readme from "./md/README.md";

export default {
  components: {
    Readme
  },

  mounted() {
    let getAnchorTags = document.querySelectorAll(".readme p a");

    [...getAnchorTags].forEach(anchor => {
      let getAnchorTarget = anchor.getAttribute("target");
      if (!getAnchorTarget) anchor.setAttribute("target", "_blank");
    });
  }
};
</script>

<style lang="scss">
.readme {
  text-align: center;
}
</style>
