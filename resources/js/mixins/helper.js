import pagination from '@/components/layouts/pagination';
export default {
    created: function () {
    },
    data(){
        return {
            itemPerPage: 25,

        }
    },
    components: {
        pagination
    },
    methods:{
        changeLang(lang){
            this.$setLang(lang);
            localStorage.setItem('lang',lang);
        }
    }
}
