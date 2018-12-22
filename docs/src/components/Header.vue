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
      baseURI: 'data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4KPHN2ZyB3aWR0aD0iNDAwcHgiIGhlaWdodD0iNDAwcHgiIHZpZXdCb3g9IjAgMCA0MDAgNDAwIiB2ZXJzaW9uPSIxLjEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiPgogICAgPCEtLSBHZW5lcmF0b3I6IFNrZXRjaCA1Mi41ICg2NzQ2OSkgLSBodHRwOi8vd3d3LmJvaGVtaWFuY29kaW5nLmNvbS9za2V0Y2ggLS0+CiAgICA8dGl0bGU+bGF1bmNoZXI8L3RpdGxlPgogICAgPGRlc2M+Q3JlYXRlZCB3aXRoIFNrZXRjaC48L2Rlc2M+CiAgICA8ZGVmcz4KICAgICAgICA8cGF0aCBkPSJNMTUzLjgzMzExMiwtNi4yMTUwNDE4NWUtMTUgTDI0Ni4xNjY4ODgsNi4yMTUwNDE4NWUtMTUgQzI5OS42NTgwMTIsLTMuNjExMTE4MjllLTE1IDMxOS4wNTUxODcsNS41Njk1MzY2NyAzMzguNjEwNzQyLDE2LjAyNzk2MjIgQzM1OC4xNjYyOTgsMjYuNDg2Mzg3OCAzNzMuNTEzNjEyLDQxLjgzMzcwMjIgMzgzLjk3MjAzOCw2MS4zODkyNTc4IEMzOTQuNDMwNDYzLDgwLjk0NDgxMzMgNDAwLDEwMC4zNDE5ODggNDAwLDE1My44MzMxMTIgTDQwMCwyNDYuMTY2ODg4IEM0MDAsMjk5LjY1ODAxMiAzOTQuNDMwNDYzLDMxOS4wNTUxODcgMzgzLjk3MjAzOCwzMzguNjEwNzQyIEMzNzMuNTEzNjEyLDM1OC4xNjYyOTggMzU4LjE2NjI5OCwzNzMuNTEzNjEyIDMzOC42MTA3NDIsMzgzLjk3MjAzOCBDMzE5LjA1NTE4NywzOTQuNDMwNDYzIDI5OS42NTgwMTIsNDAwIDI0Ni4xNjY4ODgsNDAwIEwxNTMuODMzMTEyLDQwMCBDMTAwLjM0MTk4OCw0MDAgODAuOTQ0ODEzMywzOTQuNDMwNDYzIDYxLjM4OTI1NzgsMzgzLjk3MjAzOCBDNDEuODMzNzAyMiwzNzMuNTEzNjEyIDI2LjQ4NjM4NzgsMzU4LjE2NjI5OCAxNi4wMjc5NjIyLDMzOC42MTA3NDIgQzUuNTY5NTM2NjcsMzE5LjA1NTE4NyAyLjQwNzQxMjJlLTE1LDI5OS42NTgwMTIgLTQuMTQzMzYxMjNlLTE1LDI0Ni4xNjY4ODggTDQuMTQzMzYxMjNlLTE1LDE1My44MzMxMTIgQy0yLjQwNzQxMjJlLTE1LDEwMC4zNDE5ODggNS41Njk1MzY2Nyw4MC45NDQ4MTMzIDE2LjAyNzk2MjIsNjEuMzg5MjU3OCBDMjYuNDg2Mzg3OCw0MS44MzM3MDIyIDQxLjgzMzcwMjIsMjYuNDg2Mzg3OCA2MS4zODkyNTc4LDE2LjAyNzk2MjIgQzgwLjk0NDgxMzMsNS41Njk1MzY2NyAxMDAuMzQxOTg4LDMuNjExMTE4MjllLTE1IDE1My44MzMxMTIsLTYuMjE1MDQxODVlLTE1IFoiIGlkPSJwYXRoLTEiPjwvcGF0aD4KICAgIDwvZGVmcz4KICAgIDxnIGlkPSJsYXVuY2hlciIgc3Ryb2tlPSJub25lIiBzdHJva2Utd2lkdGg9IjEiIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGc+CiAgICAgICAgICAgIDxtYXNrIGlkPSJtYXNrLTIiIGZpbGw9IndoaXRlIj4KICAgICAgICAgICAgICAgIDx1c2UgeGxpbms6aHJlZj0iI3BhdGgtMSI+PC91c2U+CiAgICAgICAgICAgIDwvbWFzaz4KICAgICAgICAgICAgPHVzZSBpZD0iTWFzayIgZmlsbD0iIzQyQjg4MyIgZmlsbC1ydWxlPSJub256ZXJvIiB4bGluazpocmVmPSIjcGF0aC0xIj48L3VzZT4KICAgICAgICAgICAgPHJlY3QgaWQ9ImJhciIgZmlsbC1vcGFjaXR5PSIwLjMyIiBmaWxsPSIjMDAwMDAwIiBmaWxsLXJ1bGU9Im5vbnplcm8iIG1hc2s9InVybCgjbWFzay0yKSIgeD0iMCIgeT0iMCIgd2lkdGg9IjI4MCIgaGVpZ2h0PSI0MCI+PC9yZWN0PgogICAgICAgICAgICA8cmVjdCBpZD0iYm90dG9tIiBmaWxsLW9wYWNpdHk9IjAuNjQiIGZpbGw9IiNGRkZGRkYiIGZpbGwtcnVsZT0ibm9uemVybyIgbWFzaz0idXJsKCNtYXNrLTIpIiB4PSIwIiB5PSIyNDAiIHdpZHRoPSI0MDAiIGhlaWdodD0iMTYwIj48L3JlY3Q+CiAgICAgICAgPC9nPgogICAgPC9nPgo8L3N2Zz4='
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
      width: 40px;
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
