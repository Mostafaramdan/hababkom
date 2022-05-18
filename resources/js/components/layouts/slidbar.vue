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
    computed: {
       user_name(){
           let user_name= this.$store.state.user.name;
           if(!user_name)
            user_name= this.$store.state.user.owner_name;
            return user_name;
        },
    }
};
</script>
