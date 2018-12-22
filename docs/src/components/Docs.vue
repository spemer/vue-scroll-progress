<template lang="pug">
  div#docs
    div.container
      div.docs__link--wrapper
        p.docs__link--title Documentation
        a.docs__link--link(
          v-for="(value, key) in url"
          :key="key"
          target="_blank"
          :href="value"
          v-tooltip.bottom="{content: 'via ' + key + ' (new tab)' , delay: {show: 500, hide: 100}}"
        ) {{ key }}

      div.docs__link--wrapper
        p.docs__link--title CDN links
        a.docs__link--link(
          v-for="(value, key) in cdn"
          :key="key"
          target="_blank"
          :href="value"
          v-tooltip.bottom="{content: 'via ' + key + ' (new tab)' , delay: {show: 500, hide: 100}}"
        ) {{ key }}
</template>

<script>
import {globalVar} from '../globalVar.js'

export default {
  data () {
    return {
      url: {
        GitHub: globalVar.githubURL,
        NPM: globalVar.npmURL,
        Yarn: globalVar.yarnURL,
      },
      cdn: {
        jsDelivr: globalVar.jsDelivr,
        UNPKG: globalVar.UNPKG,
        Bundlr: globalVar.Bundlr,
      }
    }
  }
}
</script>

<style lang="scss">
#docs {
  margin: $grid16x 0 $grid8x;

  .container {

    .docs__link--wrapper {
      text-align: center;
      margin: $grid8x 0 $grid4x;

      .docs__link--title {
        margin-bottom: $grid;
      }

      .docs__link--link {

        &:not(:last-child) {

          &::after {
            cursor: text;
            content: " | ";
            color: $text999;
          }
        }
      }
    }
  }
}
</style>
