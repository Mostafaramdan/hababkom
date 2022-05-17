<template >
    <div >
        <div class="input-group mb-3">
            <input type="search" class="form-control" v-model.trim="search" list="wizards-list" :placeholder="$lang['search']" aria-label="Example text with button addon" aria-describedby="button-addon1">
            <button v-b-modal.new-swap-shift-modal class="btn  btn-outline-primary" type="button" id="button-addon1"><i class='fas fa-filter'></i> {{ $lang['filter'] }} </button>
        </div>

        <b-modal id="new-swap-shift-modal" @ok="$router.push({  query: { ...$route.query,...features(),page:1 }})" hide-header-close :title="$lang['filter results']" ok-hide='true' :ok-title="$lang['search']"  :cancel-title="$lang['cancel']">
            <div class="d-block text-center">
                <div class="form-group" >
                    <label   >{{$lang['order by']}}</label>
                    <select class="custom-select" v-model="filterBy">
                        <option  value="id">{{$lang['created at']}}</option>
                    </select>
                </div>
                <div class="form-group" >
                    <label   >{{$lang['order type']}}</label>>
                    <select class="custom-select" v-model="filterType">
                        <option value="ASC">{{$lang['ascending']}} </option>
                        <option value="DESC">{{$lang['descending']}}</option>
                    </select>
                </div>
                <div class="form-group" >
                    <label > {{$lang['Booking type']}} </label>
                    <select class="custom-select" v-model="status">

                        <option value="">{{$lang['all']}} </option>
                        <option value="waiting">{{$lang['unconfirmed orders']}}   </option>
                        <option value="coming">{{$lang['confirmed orders']}}</option>
                        <option value="finished">{{$lang['finished orders']}}</option>
                        <option value="cancelled">{{$lang['canceled orders']}}</option>
                        <option value="refused">{{$lang['rejected orders']}}  </option>

                    </select>
                </div>
            </div>
        </b-modal>
        <div class="table-responsive">
            <table class="table table-striped table-dark table-bordered table-hover  mb-2"  >
                <thead >
                    <tr >
                        <th >#</th>
                        <th >{{$lang['status']}} </th>
                        <th >{{$lang['price']}} </th>
                        <th >{{$lang['total']}} </th>
                        <th ><i class="fas fa-user"></i></th>
                        <th ><i class="fas fa-clock"></i></th>
                        <th >#</th>
                    </tr>
                </thead>
                <tbody>
                    <tr v-for="(record,index) in records" :key="index">
                        <td>{{record.id * 97}}</td>
                        <td>{{record[$lang.lang == 'ar'? `status_ar` : 'status']}}</td>
                        <td>{{record.price}}</td>
                        <td>{{record.total}}</td>
                        <td v-if="record.user"> <router-link :to="{name:'usersShow',params:{id:record.users_id}}">{{record.user.name}}</router-link></td>
                        <td>{{record.created_at}}</td>
                        <td>
                            <button class="btn btn-danger"  @click="deleteRecord(index)" v-if="authorized.delete" ><i class="fas fa-trash "></i></button>
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
            status:'',
            timeOut :false,
            visible:false
        }
    },
    methods:{
        show() {
            this.visible = true
        },
       
        update(index){
             this.$router.push( {name:'ordersUpdate', params: { id: this.records[index].id }});
        },
        show(index){
             this.$router.push( {name:'ordersShow' , params: { id: this.records[index].id }});
        },
        async paginate(currentPage){
            this.$router.push({  query: { ...this.$route.query,'page': currentPage }});
        },
        async getRecords(){

            let response = await this.Api('GET','orders',this.features());
            this.records=response.data.records ;
            this.totalPages=response.data.totalPages ;
        },
         async deleteRecord(index){

            if(confirm(`${this.$lang['Are you sure to delete this item']}`)){
                await this.Api('DELETE',`orders/${this.records[index].id}`);
                this.records.splice(index,1);
            }
        },
        features:function(){
            return {
                ...this.$route.query,
                'page':this.currentPage,
                'search':this.search,
                'filterBy':this.filterBy,
                'filterType':this.filterType,
                'status':this.status,
            };
        }
    },
    async mounted(){
        await this.getRecords();
    },
    metaInfo() {
        return {
            title: `${this.$lang['app name']} - ${this.$lang['orders']} `,
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
