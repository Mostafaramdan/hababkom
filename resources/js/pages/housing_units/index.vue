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
                        <option value="price">{{$lang['price']}} </option>
                        <option value="adult_nums">{{$lang['adult count']}} </option>
                        <option value="children_nums">{{$lang['children count']}}  </option>
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
        <button :class="['btn btn-primary m-2',{'d-none':!$route.query.estates_id && !$store.state.user.estates_id}] " @click="create" v-if="authorized.create"   >
             {{$lang.create}}
            <i class="fas fa-plus"></i>
        </button>
        <div class="table-responsive">
            <table class="table table-striped table-dark table-bordered table-hover  mb-2"  >
                <thead >
                    <tr >
                        <th >#</th>
                        <th >{{$lang['adult count']}} </th>
                        <th >{{$lang['children count']}} </th>
                        <th >{{$lang['price']}}</th>
                        <th >{{$lang['final price']}}</th>
                        <th >{{$lang['offers']}}</th>
                        <th >#</th>
                        <th ><i class="fas fa-clock"></i></th>
                    </tr>
                </thead>
                <tbody>
                    <tr v-for="(record,index) in records" :key="index">
                        <td>{{record.id}}</td>
                        <td>{{record.adult_nums}}</td>
                        <td>{{record.children_nums}}</td>
                        <td>{{record.price}}</td>
                        <td>{{record.final_price}}</td>
                        <td>
                            <button class="btn btn-primary" @click="goOffers(record.id)">
                                <i class="fas fa-percent"></i>
                            </button>
                        </td>
                        <td>
                            <button class="btn btn-danger"  @click="deleteRecord(index)" v-if="authorized.delete" ><i class="fas fa-trash "></i></button>
                            <button class="btn btn-info" @click="update(index)" v-if="authorized.update" ><i class="fas fa-edit"></i></button>
                            <button class="btn btn-secondary" @click="show(index)"><i class="fas fa-eye "></i></button>
                        </td>
                        <td>{{record.created_at}}</td>
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
            timeOut :false,
            visible:false
        }
    },
    methods:{
        show() {
            this.visible = true
        },
        create(){
             this.$router.push( {name:'housing_unitsCreate',query:{...this.$route.query} });
        },
        update(index){
             this.$router.push( {name:'housing_unitsUpdate', params: { id: this.records[index].id }});
        },
        show(index){
             this.$router.push( {name:'housing_unitsShow' , params: { id: this.records[index].id }});
        },
        goOffers(id){
            this.$router.push( {name:'offers' , query: { housing_units_id: id }});
        },
        async paginate(currentPage){
            this.$router.push({  query: { ...this.$route.query,'page': currentPage }});
        },
        async getRecords(){

            let response = await this.Api('GET','housing_units',this.features());
            this.records=response.data.records ;
            this.totalPages=response.data.totalPages ;
        },
         async deleteRecord(index){

            if(confirm(this.$lang['Are you sure to delete this item'])){
                await this.Api('DELETE',`housing_units/${this.records[index].id}`);
                this.records.splice(index,1);
            }
        },
        features:function(){
            return {
                'page':this.currentPage,
                'search':this.search,
                'filterBy':this.filterBy,
                'filterType':this.filterType,
                'estates_id': this.$route.query.estates_id
            };
        }
    },
    async mounted(){

        await this.getRecords();
    },
    metaInfo() {
        return {
                title: `${this.$lang['app name']} -  ${this.$lang.rooms} `,
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
