import Vue from 'vue'
import axios from 'axios'
import VueAxios from 'vue-axios'
import VueRouter from 'vue-router'
import routes from '@/routes'
import mainapp from '@/components/mainapp';
import helper from '@/mixins/helper';
import api from '@/mixins/api';
import stores from '@/store/account'
import Vuex from 'vuex'
import { BootstrapVue, BootstrapVueIcons } from 'bootstrap-vue'
import 'bootstrap/dist/css/bootstrap.css'
import 'bootstrap-vue/dist/bootstrap-vue.css'
import VueMeta from 'vue-meta'
import VueEasyLightbox from 'vue-easy-lightbox'
import VueSwal from 'vue-swal'
import * as VueGoogleMaps from 'vue2-google-maps'
import dropdown from '@/components/layouts/dropdown.vue';

import Multiselect from 'vue-multiselect'
import Treeselect from '@riophae/vue-treeselect'

import VueUploadMultipleImage from 'vue-upload-multiple-image'
import uploadImage from '@/components/layouts/uploadImage.vue';


var Lang = require('vue-lang');
var locales = {
    "en": require("@/lang/en.json"), 
    "ar": require("@/lang/ar.json"),
  }
Vue.use(Lang, {lang: localStorage.getItem("lang")??"ar", locales: locales})

Vue.use(VueGoogleMaps, {  
    load: {
      key: 'AIzaSyByYh0lGbV5SvW1Q8FhHJCU5jMdktuXI3Y',
      libraries: 'places', // This is required if you use the Autocomplete plugin
    },
})


Vue.use(BootstrapVue);
Vue.use(BootstrapVueIcons);
Vue.use(VueAxios, axios);
Vue.use(Vuex);
Vue.use(VueRouter);
Vue.use(VueMeta)
Vue.use(VueSwal)



Vue.component('dropdown-menu', dropdown)
Vue.component('Multiselect', Multiselect)
Vue.component( 'tree-select', Treeselect)
Vue.component( 'vue-upload-multiple-image', VueUploadMultipleImage)
Vue.component( 'upload-image', uploadImage)

Vue.use(VueEasyLightbox)
Vue.component(VueEasyLightbox.name, VueEasyLightbox)

const store = new Vuex.Store(stores);
const router = new VueRouter({
    mode: 'history',
    routes 
});



router.beforeEach((to, from, next) => {
    store.state.isLoading=true
    let isAuthenticated =  store.getters.getUser.apiToken;
    if(to.name  == 'login' && isAuthenticated ){
        next({ name: 'statistics' })
    } 
    else if (to.name !== 'login' && !isAuthenticated){
        next({ name: 'login' })
    }else{

        // typePage=
        let current= (to.path.split("/dashboard/"))[1].split("/")[0];
        if(current== 'countries' || current == 'cities' || current== 'districts'){
            current = 'regions';
        }

        let permission= (to.path.split("/dashboard/"))[1].split("/")[1] ??'view'

        if (permission && !isNaN(permission))  permission = 'view';

        if(to.name == 'login' || to.name=='permissionsShow' || to.name.includes('owners')){
            return next(true);
        }
        if(!store.state.user.permissions[current]){
            return next(false);
        }

        if(store.state.user.permissions[current].permissions[permission]  ){
            next(true);
        }
       
 
    }
})

Vue.mixin(helper)
Vue.mixin(api)

function patchRouterMethod (router, methodName)
{
    router['old' + methodName] = router[methodName]
    router[methodName] = async function (location)
    {
        return router['old' + methodName](location).catch((error) =>
        {
            if (error.name === 'NavigationDuplicated')
            {
                return this.currentRoute
            }
            throw error
        })
    }
}

patchRouterMethod(router, 'push')
patchRouterMethod(router, 'replace')
new Vue({
    el: '#mainapp',
    router,
    store,
    mixins: [helper,api],
    components: {
        'main-app' : mainapp,
    },
})
