import Vue from 'vue'
import 'element-ui/lib/theme-chalk/index.css'
import App from './Main.vue'
import ElementUI from 'element-ui';
import 'element-ui/lib/theme-chalk/index.css';
import {router} from './router'

Vue.config.productionTip = false
Vue.use(ElementUI);
//  axios  vue-axios
import axios from 'axios'
import VueAxios from 'vue-axios'
Vue.use(ElementUI)
Vue.use(VueAxios, axios)

// Vue.prototype.$http=axios;

new Vue({
  router,
  render: h => h(App),
}).$mount('#app')
