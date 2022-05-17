import pagination from '@/components/layouts/pagination';
export default {
    created: function () {
    },
    data(){
        return {
            itemPerPage: 25,
            authorized:{},
            allPermissions: this.$store.state.user.permissions,
            
        }
    },
    computed:{
        
    },
    components: {
        pagination
    },
    methods:{
        changeLang(lang){
            this.$setLang(lang);
            localStorage.setItem('lang',lang);
        },
        check_authorized(){
            var current = window.location.pathname.split('/')[2]
            if(current== 'countries' || current == 'cities' || current== 'districts'){
                current = 'regions';
            }
            if(this.$store.state.user.permissions){
                if(this.$store.state.user.permissions[current]){
                    this.authorized=this.$store.state.user.permissions[current].permissions;
                }else{
                    this.authorized={
                        "create":false,"update":true,"delete":false,"view":true
                    }
                }
                this.authorized.type= current;
            }
        }
    },
    mounted(){
        this.check_authorized()
    },
    watch:{
        $route:function(){
            this.check_authorized()
        }
    }
}
