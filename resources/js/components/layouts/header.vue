<template>
    <nav class="navbar navbar-dark bg-dark mb-3" >
        <div class="container-fluid">
            <a class="navbar-brand" >
                <b-button v-b-toggle.sidebar-right variant="info" pill active v-show="checkAuth">
                    {{$lang["menu"]}}
                <i class="fas fa-bars"></i>
                </b-button>
            </a>
            <b-dropdown  :text="$lang.options" class="m-md-2" v-if="checkAuth">
                <b-dropdown-item>{{$lang.options}}</b-dropdown-item>
                <b-dropdown-divider></b-dropdown-divider>
                <b-dropdown-item @click="changeLang($lang['oppositeChangeLang'])">{{$lang['oppositeLang']}}</b-dropdown-item>
                <b-dropdown-divider></b-dropdown-divider>
                <b-dropdown-item @click="logout"> {{$lang.logout}}</b-dropdown-item>
            </b-dropdown>

        </div>
    </nav>
</template>
<script>
import {  mapGetters  } from 'vuex'

export default {
    data(){
        return {
        }
    },
    methods:{
        async logout(){
            let response = await this.Api('POST','logout',{});
            this.$store.dispatch('logoutAction')
            this.$router.push({ path: '/dashboard/login' })

        }
    } ,computed: {
        ...mapGetters([
            'checkAuth'
        ])
    }
}
</script>
