<template lang="pug">
  div#install
    div.container
      div.install__code--wrapper(
        v-for="value in dl"
        @click="toast"
        ripple
        v-clipboard:copy="value"
        v-tooltip.bottom="{content: 'Click to copy', delay: {show: 500, hide: 100}}"
      )
        p.install__code--text.code {{ value }}
</template>

<script>
import {globalVar} from '../globalVar.js'

export default {
  data () {
    return {
      dl: {
        npm: globalVar.npm,
        yarn: globalVar.yarn,
      },
    }
  },

  methods: {
    toast () {
      this.$toasted.show('Copied!', {
        theme: "primary",
        position: "bottom-center",
        duration : 2000
      })
    }
  },

}
</script>

<style lang="scss">

#install {

  .container {

    .install__code--wrapper {
      display: table;
      width: $grid96x;
      cursor: pointer;
      height: $grid12x;
      margin: $grid8x auto;
      background-color: $texteee;
      -webkit-tap-highlight-color: rgba(0, 0, 0, 0) !important;

      @media #{$pablet} {
        width: 100%;
      }

      .install__code--text {
        text-align: center;
        display: table-cell;
        vertical-align: middle;
      }
    }
  }
}
</style>
