# vue-scroll-progress 🎉

> Simple Vue.js plugin for page scroll progress bar

[![Gzipsize](https://img.badgesize.io/spemer/vue-scroll-progress/master/src/vue-scroll-progress.js?compression=gzip)](https://www.npmjs.com/package/vue-scroll-progress)
[![Version](https://img.shields.io/npm/v/vue-scroll-progress.svg)](https://www.npmjs.com/package/vue-scroll-progress)
[![License](https://img.shields.io/npm/l/vue-scroll-progress.svg)](https://github.com/spemer/vue-scroll-progress)
[![Awesome](https://cdn.rawgit.com/sindresorhus/awesome/d7305f38d29fed78fa85652e3a63e154dd8e8829/media/badge.svg)](https://github.com/vuejs/awesome-vue#progress-bar)

[Live Demo](https://spemer.github.io/vue-scroll-progress/)

## Installation

``` bash
npm i vue-scroll-progress --save
```

``` bash
yarn add vue-scroll-progress
```

### CDNs

[jsDelivr](https://cdn.jsdelivr.net/npm/vue-scroll-progress/),
[UNPKG](https://unpkg.com/vue-scroll-progress/),
[bundle.run](https://bundle.run/vue-scroll-progress)

## Usage

### main.js

``` javascript
// YourComponent.vue or main.js for global usage
import Vue from 'vue'
import VueScrollProgress from 'vue-scroll-progress'

Vue.use(VueScrollProgress)
```

### Use in component

``` html
<!-- .vue template -->
<template>
  <VueScrollProgress></VueScrollProgress>
</template>
```

### Set progress bar style, and customize as you want(Optional)

``` css
<style>
/* play with some lines below */
#progress-container-el {
  /* background */
  background-color: #f4f4f4 !important;
}

#progress-el {
  /* progress bar */
  background-color: red !important;
}
</style>
```

## Author

[Hyouk Seo(Spemer)](https://github.com/spemer)
