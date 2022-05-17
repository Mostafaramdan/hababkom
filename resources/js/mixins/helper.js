import pagination from '@/components/layouts/pagination';
export default {
    created: function () {
    },
    data(){
        return {
            itemPerPage: 25,
            slidbars:[],
            authorized:{},
            allpermissions: this.$store.state.user.permissions
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
    },
    computed:{
        check_authorized(){
            var current = window.location.pathname.split('/')[2]
            if(current== 'countries' || current == 'cities' || current== 'districts')
                current = 'regions';
                let allpermissions= this.$store.state.user.permissions
                if(allpermissions)
                this.authorized= allpermissions[current].permissions


        }
    }
}
