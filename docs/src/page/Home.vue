<template lang="pug">
  div#home
    Header
    Hero.header__below
    Readme
    Install
    Docs
    Placeholder
    TopBtn
    GoogleAds
    Footer
</template>

<script>
import Vue from "vue";
import Header from "../components/Header";
import Hero from "../components/Hero";
import Readme from "../components/Readme";
import Install from "../components/Install";
import Docs from "../components/Docs";
import Placeholder from "../components/Placeholder";
import TopBtn from "../components/TopBtn";
import GoogleAds from "../components/GoogleAds";
import Footer from "../components/Footer";

export default {
  components: {
    Header,
    Hero,
    Readme,
    Install,
    Docs,
    Placeholder,
    TopBtn,
    GoogleAds,
    Footer
  }
};
</script>

<style lang="scss">
.header__below {
  margin-top: $grid14x + $grid12x;
}
</style>
