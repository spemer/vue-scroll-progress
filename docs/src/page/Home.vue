<template lang="pug">
  div#home
    vueScrollProgress
    Header
    Hero.header__below
    Readme
    Install
    Docs
    Footer
</template>

<script>
import Vue from 'vue'
import Header from '../components/Header'
import Hero from '../components/Hero'
import Readme from '../components/Readme'
import Install from '../components/Install'
import Docs from '../components/Docs'
import Footer from '../components/Footer'
import vueScrollProgress from '../../../src/vue-scroll-progress'
Vue.use(vueScrollProgress)

export default {
  components: {
    Header,
    Hero,
    Readme,
    Install,
    Docs,
    Footer,
    vueScrollProgress,
  }
}
</script>

<style lang="scss">
.header__below {
  margin-top: $grid14x + $grid12x;
}
</style>
