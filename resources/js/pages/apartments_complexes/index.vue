<template >
    <div v-if="authorized.view">
        <div class="input-group mb-3">
            <input type="search" class="form-control" v-model.trim="search" list="wizards-list" :placeholder="$lang['search']" aria-label="Example text with button addon" aria-describedby="button-addon1">
            <button v-b-modal.new-swap-shift-modal class="btn  btn-outline-primary" type="button" id="button-addon1"><i class='fas fa-filter'></i> {{{{ $lang['filter'] }}}} </button>
        </div>
        <b-modal id="new-swap-shift-modal" @ok="$router.push({  query: { ...$route.query,...features(),page:1 }})" hide-header-close :title="$lang['filter results']" ok-hide='true' :ok-title="$lang['search']"  :cancel-title="$lang['cancel']">
            <div class="d-block text-center">
                <div class="form-group" >
                    <label   >{{$lang['order by']}}</label>
                    <select class="custom-select" v-model="filterBy">
                        <option value="name_ar">{{$lang['name']}} </option>
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
            </div>
        </b-modal>
        <button class="btn btn-primary m-2 " 
            @click="create"
            v-if="$store.state.user.type=='admin'"
            >
             {{$lang['create']}}
            <i class="fas fa-plus"></i>
        </button>
        <div class="table-responsive">
            <div class="form-check">
                <label class="form-check-label  " for="checkAll" >
                    {{ $lang.check}}
                </label>
                <input class="form-check-input " type="checkbox"  id="checkAll" v-model="check" >
            </div>
            <hr>

            <table class="table table-striped table-dark table-bordered table-hover  mb-2"  >
                <thead >
                    <tr >
                        <th v-if="check"> <input class="form-controll" type="checkbox"  id="checkAll" v-model="checkAll" ></th>
                        <th >#</th>
                        <th >{{$lang['name']}} </th>
                        <th >{{$lang['region']}} </th>
                        <th >{{$lang['manager']}} </th>
                        <th >{{$lang['apartments']}} </th>
                        <th >{{$lang['activation']}}</th>
                        <th >#</th>
                    </tr>
                </thead>
                <tbody>
                    <tr v-for="(record,index) in records" :key="index">
                        <td v-if="check"> <input class="form-controll" type="checkbox"  id="check" v-model="record.check" ></td>
                        <td>{{record.id}}</td>
                        <td>{{record.name_ar}}</td>
                        <td>{{record.city? record.city.name_ar : ''}}</td>
                        <td>
                            <button class="btn btn-success" @click='enter_manager(index)'> {{$lang['manager']}} <i class="fas fa-user"></i> </button>
                        </td>
                        <td><button class="btn btn-success" @click='enter_apartments(record.id)'> {{$lang['open the apartments']}} <i class="fas fa-bed"></i> </button></td>
                        <td>
                            <label class="switch">
                                <input type="checkbox" @click="toggle('is_active',record.id)"  v-model="record.is_active" >
                                <span class="slider round"></span>
                            </label>
                            <label class="toggle-item" for="checkcross">
                                <div class="check"></div>
                            </label>
                        </td>

                        <td>
                            <button class="btn btn-danger" @click="deleteRecord(index)" v-if="authorized.delete"><i class="fas fa-trash "></i></button>
                            <button class="btn btn-info" @click="update(index)" v-if="authorized.update"><i class="fas fa-edit"></i></button>
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
        Pagination,
    },
    data(){
        return {
            records:[],
            currentPage: this.$route.query.page?? 1,
            totalPages:0,
            checkAll:false,
            check:false,
            search:'',
            timeOut :false,
            filterBy:'id',
            filterType:'DESC',
            visible:false
        }
    },
    methods:{
        show() {
            this.visible = true
        },
        enter_apartments(id){
             this.$router.push( {name:'apartments',query:{apartments_complexes_id:id} });
        },
        create(){
             this.$router.push( {name:'apartments_complexesCreate',query:{...this.$route.query} });
        },
        update(index){
             this.$router.push( {name:'apartments_complexesUpdate', params: { id: this.records[index].id }});
        },
        show(index){
             this.$router.push( {name:'apartments_complexesShow' , params: { id: this.records[index].id }});
        },
        goToHousing(index){
             this.$router.push( {name:'housing_unitsShow' , params: { id: this.records[index].id }});
        },
        enter_manager(index){
            this.$router.push( {name:'ownersShow' , params: { id: this.records[index].id } ,query:{records_id:'apartments_complexes_id'}});
        },
        async paginate(currentPage){
            this.$router.push({  query: { ...this.$route.query,'page': currentPage }});
        },
        async getRecords(){

            let response = await this.Api('GET','apartments_complexes',this.features());
            this.records=response.data.records ;
            this.totalPages=response.data.totalPages ;
        },
         async deleteRecord(index){

            if(confirm(`${this.$lang['Are you sure to delete this item']}`)){
                await this.Api('DELETE',`apartments_complexes/${this.records[index].id}`);
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
            };
        }
    },
    async mounted(){
        await this.getRecords();
    },
    metaInfo() {
        return {
            title: `${this.$lang['app name']} - ${this.$lang['apartments_complexes']} `,
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
        },
        checkAll:function(newVal){
            for(let record of this.records)
                record.check=newVal
        }
    }

}
</script>
