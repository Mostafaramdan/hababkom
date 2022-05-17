<template>
    <div>
        <b-sidebar
            id="sidebar-right"
            :title="$lang.welocome + user_name"
            right 
            shadow
            style="width: 100%"
        >
            <div class="px-3 py-2">
                <b-list-group>
                    <template  v-for="(element,index) in $store.state.user.permissions" >
                        <router-link v-if="element.permissions.view" :to="{name: element.componentVue||element.name_en}" :key="index">
                            <b-list-group-item :active="$route.name==element.name_en">
                                {{$lang[element.name_en]}}
                            </b-list-group-item >
                        </router-link>
                    </template>
                    </b-list-group>
            </div>
        </b-sidebar>
    </div>
</template>
<script>
export default {
    data() {
        return {
            user_name:''
        };
    },
    methods:{
    
    },
    mounted(){
        if(this.$store.getters.getUser.name)
            this.user_name= this.$store.getters.getUser.name
        else 
            this.user_name= this.$store.getters.getUser.owner_name
    }
};
</script>
