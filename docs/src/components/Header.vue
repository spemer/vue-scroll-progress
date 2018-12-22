<template lang="pug">
  div#header
    div.container
      div.header__logo(
        v-scroll-to="{el: 'body', duration: 0}"
      )
        a.header__logo--link
          img.header__logo--img(
            :src="baseURI"
          )
          span.header__logo--text vue-scroll-progress
</template>

<script>
export default {
  data () {
    return {
      baseURI: 'data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4KPHN2ZyB3aWR0aD0iNDBweCIgaGVpZ2h0PSI0MHB4IiB2aWV3Qm94PSIwIDAgNDAgNDAiIHZlcnNpb249IjEuMSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayI+CiAgICA8IS0tIEdlbmVyYXRvcjogU2tldGNoIDUxLjMgKDU3NTQ0KSAtIGh0dHA6Ly93d3cuYm9oZW1pYW5jb2RpbmcuY29tL3NrZXRjaCAtLT4KICAgIDx0aXRsZT5sYXVuY2hlcjwvdGl0bGU+CiAgICA8ZGVzYz5DcmVhdGVkIHdpdGggU2tldGNoLjwvZGVzYz4KICAgIDxkZWZzPgogICAgICAgIDxyZWN0IGlkPSJwYXRoLTEiIHg9IjAiIHk9IjAiIHdpZHRoPSI0MCIgaGVpZ2h0PSI0MCIgcng9IjEyIj48L3JlY3Q+CiAgICA8L2RlZnM+CiAgICA8ZyBpZD0ibGF1bmNoZXIiIHN0cm9rZT0ibm9uZSIgc3Ryb2tlLXdpZHRoPSIxIiBmaWxsPSJub25lIiBmaWxsLXJ1bGU9ImV2ZW5vZGQiPgogICAgICAgIDxnPgogICAgICAgICAgICA8bWFzayBpZD0ibWFzay0yIiBmaWxsPSJ3aGl0ZSI+CiAgICAgICAgICAgICAgICA8dXNlIHhsaW5rOmhyZWY9IiNwYXRoLTEiPjwvdXNlPgogICAgICAgICAgICA8L21hc2s+CiAgICAgICAgICAgIDx1c2UgaWQ9Ik1hc2siIGZpbGw9IiM0MkI4ODMiIGZpbGwtcnVsZT0ibm9uemVybyIgeGxpbms6aHJlZj0iI3BhdGgtMSI+PC91c2U+CiAgICAgICAgICAgIDxjaXJjbGUgaWQ9Im92YWwtbGciIGZpbGwtb3BhY2l0eT0iMC4xNiIgZmlsbD0iIzAwMDAwMCIgZmlsbC1ydWxlPSJub256ZXJvIiBtYXNrPSJ1cmwoI21hc2stMikiIGN4PSIzNiIgY3k9IjM2IiByPSIyNCI+PC9jaXJjbGU+CiAgICAgICAgICAgIDxjaXJjbGUgaWQ9Im92YWwtc20iIGZpbGwtb3BhY2l0eT0iMC4xNiIgZmlsbD0iIzAwMDAwMCIgZmlsbC1ydWxlPSJub256ZXJvIiBtYXNrPSJ1cmwoI21hc2stMikiIGN4PSIzNiIgY3k9IjM2IiByPSIxMiI+PC9jaXJjbGU+CiAgICAgICAgPC9nPgogICAgPC9nPgo8L3N2Zz4='
    }
  }
}
</script>

<style lang="scss">

#header {
  top: 0;
  z-index: 1;
  width: 100%;
  position: fixed;
  height: $grid14x;
  align-items: center;
  background-color: #fff;
  @include box-shadow($grid2x, $grid3x);

  .header__logo {
    cursor: pointer;
    height: $grid14x;
    display: inline-block;
    -webkit-tap-highlight-color: rgba(0, 0, 0, 0) !important;

    .header__logo--img {
      padding: $grid2x 0;
    }

    .header__logo--text {
      color: $text333;
      font-weight: 500;
      padding-left: $grid4x;
      display: inline-block;
      transform: translateY(-68%);
      @include font-size($grid5x);
    }
  }
}
</style>
