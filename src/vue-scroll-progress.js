var VueScrollProgress = {
  install: function install(Vue, options) {
    Vue.mixin({
      mounted: function mounted() {
        var progressContainerEl,
          progressEl,
          windowScrollPixels,
          windowScrollPercents,
          height

        progressContainerEl = document.createElement('div')
        progressContainerEl.id = 'progress-container-el'
        progressContainerEl.style.position = 'fixed'
        progressContainerEl.style.width = '100%'
        progressContainerEl.style.height = '4px'
        progressContainerEl.style.backgroundColor = 'transparent'
        progressContainerEl.style.left = 0
        progressContainerEl.style.right = 0
        progressContainerEl.style.top = 0
        progressContainerEl.style.zIndex = 99999

        progressEl = document.createElement('div')
        progressEl.id = 'progress-el'
        progressEl.style.width = '0px'
        progressEl.style.height = '4px'
        progressEl.style.backgroundColor = '#42b883'

        windowScrollPixels = 0
        windowScrollPercents = 0

        function getHeight() {
          height = (document.documentElement.scrollHeight - document.documentElement.clientHeight)
        }

        const debounce = (func, wait, immediate) => {
          var timeout
          return () => {
            const context = this,
              args = arguments
            const later = function () {
              timeout = null
              if (!immediate) func.apply(context, args)
            }
            const callNow = immediate && !timeout
            clearTimeout(timeout)
            timeout = setTimeout(later, wait)
            if (callNow) func.apply(context, args)
          }
        }

        var h = document.body
        h.addEventListener('resize', debounce(() => {
          getHeight()
        }, 200, false), false)

        getHeight()

        window.addEventListener('scroll', () => {
          windowScrollPixels = (document.body.scrollTop ||
            document.documentElement.scrollTop)
          windowScrollPercents = (windowScrollPixels / height) * 100
          progressEl.style.width = windowScrollPercents + '%'
        })

        if (!document.getElementById('progress-container-el')) {
          progressContainerEl.appendChild(progressEl)
          document.body.appendChild(progressContainerEl)
        }
      }
    })
  }
}

if (typeof window !== 'undefined' && window.Vue)
  window.VueScrollProgress = VueScrollProgress

export default VueScrollProgress
