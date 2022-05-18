<template>
    <nav class="navbar navbar-dark bg-dark mb-3" >
        <div class="container-fluid">
            <a class="navbar-brand" >
                <b-button v-b-toggle.sidebar-right variant="info" pill active v-show="checkAuth">
                    {{$lang["menu"]}}
                <i class="fas fa-bars"></i>
                </b-button>
            </a>
            <b-dropdown  :text="$lang.options" class="m-md-2" >
                <b-dropdown-item>{{$lang.options}}</b-dropdown-item>
                <b-dropdown-divider></b-dropdown-divider>
                <b-dropdown-item @click="changeLang($lang['oppositeChangeLang'])">{{$lang['oppositeLang']}}</b-dropdown-item>
                <b-dropdown-divider></b-dropdown-divider>
                <b-dropdown-item @click="logout" v-if="checkAuth"> {{$lang.logout}}</b-dropdown-item>
            </b-dropdown>

        </div>
    </nav>
</template>
<script>

export default {
    data(){
        return {
        }
    },
    methods:{
        async logout(){
           await this.Api('POST','logout',{});
            this.$store.dispatch('logoutAction')
            this.$router.push({ path: '/dashboard/login' })

        },
        
    },
    computed: {
       checkAuth(){
            return this.$store.state.user.apiToken.length > 1?true:false
        },
    }
}
</script>
