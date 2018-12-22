var vueScrollProgress = {
  install: function install(Vue, options) {
    Vue.mixin({
      mounted: function mounted() {
        const progressContainerEl = document.createElement('div')
              progressContainerEl.style.position = 'fixed'
              progressContainerEl.style.width = '100%'
              progressContainerEl.style.height = '4px'
              progressContainerEl.style.backgroundColor = 'transparent'
              progressContainerEl.style.left = 0
              progressContainerEl.style.right = 0
              progressContainerEl.style.top = 0
              progressContainerEl.style.zIndex = 9999

        const progressEl = document.createElement('div')
              progressEl.style.width = '0px'
              progressEl.style.height = '4px'
              progressEl.style.backgroundColor = '#42b883'

        const vueAppEl = document.getElementById('app')
        progressContainerEl.appendChild(progressEl)
        vueAppEl.appendChild(progressContainerEl)

        let windowScrollPixels = 0
        let windowScrollPercents = 0
        const height = document.documentElement.scrollHeight - document.documentElement.clientHeight

        window.addEventListener('scroll', () => {
          windowScrollPixels = document.body.scrollTop || document.documentElement.scrollTop
          windowScrollPercents = (windowScrollPixels / height) * 100
          progressEl.style.width = windowScrollPercents + '%'
        })
      }
    })
  }
}

if (typeof window !== 'undefined' && window.Vue)
  window.vueScrollProgress = vueScrollProgress

export default vueScrollProgress
