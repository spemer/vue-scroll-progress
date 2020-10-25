# vue-scroll-progress 🎉

> Simple Vue.js plugin for page scroll progress bar

[![vue2](https://img.shields.io/badge/vue-2.x-brightgreen.svg)](https://vuejs.org/)
[![Version](https://img.shields.io/npm/v/vue-scroll-progress.svg)](https://www.npmjs.com/package/vue-scroll-progress)
[![Gzipsize](https://img.badgesize.io/spemer/vue-scroll-progress/master/src/vue-scroll-progress.js?compression=gzip)](https://www.npmjs.com/package/vue-scroll-progress)
[![Awesome](https://cdn.rawgit.com/sindresorhus/awesome/d7305f38d29fed78fa85652e3a63e154dd8e8829/media/badge.svg)](https://github.com/vuejs/awesome-vue#progress-bar)
[![License](https://img.shields.io/npm/l/vue-scroll-progress.svg)](https://github.com/spemer/vue-scroll-progress)
[![Hits](https://hits.seeyoufarm.com/api/count/incr/badge.svg?url=https%3A%2F%2Fgithub.com%2Fspemer%2Fvue-scroll-progress&count_bg=%2379C83D&title_bg=%23555555&icon=&icon_color=%23E7E7E7&title=hits&edge_flat=false)](https://github.com/spemer/vue-scroll-progress)
[![stargazers](https://img.shields.io/github/stars/spemer/vue-scroll-progress?style=social)](https://github.com/spemer/vue-scroll-progress)

[Live Demo](https://spemer.github.io/vue-scroll-progress/)

<img src="https://github.com/spemer/vue-scroll-progress/blob/master/docs/src/assets/vue-scroll-progress.gif?raw=true" height="25%" width="25%">

## Installation

```bash
npm i vue-scroll-progress --save
```

```bash
yarn add vue-scroll-progress
```

### CDNs

[jsDelivr](https://cdn.jsdelivr.net/npm/vue-scroll-progress/),
[UNPKG](https://unpkg.com/vue-scroll-progress/),
[bundle.run](https://bundle.run/vue-scroll-progress)

## Usage

### main.js

```javascript
// YourComponent.vue or main.js for global usage
import Vue from "vue";
import VueScrollProgress from "vue-scroll-progress";

Vue.use(VueScrollProgress);
```

### Use in component

```html
<!-- .vue template -->
<template>
  <VueScrollProgress></VueScrollProgress>
</template>
```

### Set progress bar style, and customize as you want(Optional)

```css
<style>
/* play with some lines below */
#progress-container-el {
  /* background */
  background-color: transparent !important;
  top: calc(100% - 4px) !important; /* remove if Vue 3.x */
}
#progress-el {
  /* progress bar */
  background-color: red !important;
}
</style>
```

## Author

[Hyouk Seo(Spemer)](https://github.com/spemer)
