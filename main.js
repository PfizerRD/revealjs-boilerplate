import 'reveal.js/dist/reveal.css'
//import 'reveal.js/dist/reset.css'
import 'reveal.js/dist/theme/white.css'
import 'reveal.js-plugins/customcontrols/style.css'
import Reveal from 'reveal.js'
import RevealMarkdown from 'reveal.js/plugin/markdown/markdown.esm'
import RevealNotes from 'reveal.js/plugin/notes/plugin'
import RevealHighlight from 'reveal.js/plugin/highlight/plugin'
import RevealMenu from 'reveal.js-menu/plugin'

const deck = new Reveal()

deck.initialize({ 
  hash: true,
  center: false,
  margin: 0.04,
  height: '100%',
  width: '90%',
  slideNumer: true,
  menu: {
    themes: true,
    themesPath: 'node_modules/reveal.js/dist/theme/',
    transitions: true,
    openOnInit: false
  },
  customcontrols: {
		controls: [
      {
			  id: 'toggle-overview',
			  title: 'Toggle overview (O)',
			  icon: '<i class="fa fa-th"></i>',
			  action: 'Reveal.toggleOverview();'
			},
			{ icon: '<i class="fa fa-pen"></i>',
			  title: 'Toggle notes canvas (C)',
			  action: 'RevealChalkboard.toggleNotesCanvas();'
			}
		]
  },
  // Learn about plugins: https://revealjs.com/plugins/
  plugins: [ 
    RevealMarkdown,
    RevealHighlight,
    RevealNotes,
    RevealMenu,
    RevealChalkboard,
    RevealCustomControls 
  ]
})
