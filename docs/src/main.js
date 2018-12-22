import 'babel-polyfill'
import 'event-source-polyfill'
import 'es6-promise/auto'

import Vue from 'vue'
import App from './App.vue'
import VTooltip from 'v-tooltip'
import Toasted from 'vue-toasted'
import VueScrollTo from 'vue-scrollto'
import VueClipboard from 'vue-clipboard2'

Vue.use(Toasted)
Vue.use(VTooltip)
Vue.use(VueScrollTo)
Vue.use(VueClipboard)

new Vue({
  el: '#app',
  render: h => h(App)
})
