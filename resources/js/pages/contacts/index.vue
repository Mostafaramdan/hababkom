<template >
    <div>
        <div class="input-group mb-3">
            <input type="search" class="form-control" v-model.trim="search" list="wizards-list" :placeholder="$lang['search from somthing']" aria-label="Example text with button addon" aria-describedby="button-addon1">
            <button v-b-modal.new-swap-shift-modal class="btn  btn-outline-primary" type="button" id="button-addon1"><i class='fas fa-filter'></i> {{ $lang['filter'] }} </button>
        </div>

        <b-modal id="new-swap-shift-modal" @ok="$router.push({  query: { ...$route.query,...features(),page:1 }})" hide-header-close :title=" $lang['filter results'] " ok-hide='true' :ok-title = "$lang.filter"  :cancel-title = "$lang.cancel">
            <div class="d-block text-center">
                <div class="form-group" >
                    <label   >{{$lang['order by'] }}</label>
                    <select class="custom-select" v-model="filterBy">
                        <option value="id">{{$lang['created at'] }}</option>
                    </select>
                </div>
                <div class="form-group" >
                    <label   >{{$lang['order type'] }} </label>
                    <select class="custom-select" v-model="filterType">
                        <option value="ASC">{{$lang['ascending'] }} </option>
                        <option value="DESC">{{$lang['descending'] }}</option>
                    </select>
                </div>
            </div>
        </b-modal>
        <div class="table-responsive">
            <table class="table table-striped table-dark table-bordered table-hover  mb-2"  >
                <thead >
                    <tr >
                        <th >#</th>
                        <th ><i class="fas fa-user"></i></th>
                        <th>مفتوحة ؟ </th>
                        <th >#</th>
                    </tr>
                </thead>
                <tbody>
                    <tr v-for="(record,index) in records" :key="index">
                        <td>{{record.id}}</td>
                        <td>
                            <router-link :to="{name: 'usersShow',params:{id:record.users_id}}">
                                {{record.name}}
                            </router-link>
                        </td>
                        <td>
                            <label class="switch">
                                <input type="checkbox" @click="toggle('is_open',record.id)"  v-model="record.is_active" >
                                <span class="slider round"></span>
                            </label>
                        </td>
                        <td>
                            <button class="btn btn-danger" @click="deleteRecord(index)"><i class="fas fa-trash "></i></button>
                            <button class="btn btn-secondary" @click="show(index)"><i class="fas fa-eye "></i></button>
                        </td>
                    </tr>
                </tbody>
            </table>
            <pagination :currentPage="parseInt($route.query.page?$route.query.page:1)"  :totalPages="totalPages" @paginate="paginate($event)"></pagination>
        </div>
    </div>
</template>
<script>
import Pagination from '../../components/layouts/pagination.vue';

export default {
    components:{
        Pagination
    },
    data(){
        return {
            records:[],
            currentPage: this.$route.query.page?? 1,
            totalPages:0,
            search:'',
            filterBy:'id',
            filterType:'DESC',
            regions_id:this.$route.query.regions_id,
            timeOut :false,
            country:true
        }
    },
    methods:{
        show() {
            this.visible = true
        },
        create(){
             this.$router.push( {name:'contactsCreate',});
        },
        update(index){
             this.$router.push( {name:'contactsUpdate', params: { id: this.records[index].id }});
        },
        show(index){
             this.$router.push( {name:'contactsShow' , params: { id: this.records[index].id }});
        },
        async paginate(currentPage){
            this.$router.push({  query: { ...this.$route.query,'page': currentPage }});
        },
        async getRecords(){

            let response = await this.Api('GET','contacts',this.features());
            this.records=response.data.records ;
            this.totalPages=response.data.totalPages ;
        },
         async deleteRecord(index){

            if(confirm(this.$lang['Are you sure to delete this item'])){
                await this.Api('DELETE',`contacts/${this.records[index].id}`);
                this.records.splice(index,1);
            }
        },
        features:function(){
            return {
                'page':this.currentPage,
                'search':this.search,
                'filterBy':this.filterBy,
                'filterType':this.filterType,
            };
        }
    },
    async mounted(){
        await this.getRecords();
    },
    metaInfo() {
        return {
            title: `حبابكم - الشكاوي والاقتراحات `,
        }
    },
    watch :{
        search:function(val){
            clearTimeout(this.timeOut);
            this.timeOut=
            setTimeout(()=>{
                this.$store.state.isLoading = false;
                this.$router.push({  query: { ...this.$route.query,...this.features(),page:1 }});
            },1000)
        },
        $route:function(){
            this.currentPage= this.$route.query.page;
            this.getRecords();
        }
    }

}
</script>
