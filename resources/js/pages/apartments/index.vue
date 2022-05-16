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
                    <label   >{{$lang['order type']}}</label>
                    <select class="custom-select" v-model="filterType">
                        <option value="ASC">{{$lang['ascending']}} </option>
                        <option value="DESC">{{$lang['descending']}}</option>
                    </select>
                </div>
            </div>
        </b-modal>
        <button :class="['btn btn-primary m-2',{'d-none':!$route.query.apartments_complexes_id && !$store.state.user.apartments_complexes_id}] " @click="create" v-if="authorized.create" >
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
                        <th >{{$lang['rooms count']}} </th>
                        <th >{{$lang['kitchens count']}} </th>
                        <th >{{$lang['toilets count']}} </th>
                        <th>{{$lang['offers']}}</th>
                        <th >{{$lang['activation']}}</th>
                        <th >#</th>
                    </tr>
                </thead>
                <tbody>
                    
                    <tr v-for="(record,index) in records" :key="index">
                        <td v-if="check"> <input class="form-controll" type="checkbox"  id="check" v-model="record.check" ></td>
                        <td>{{record.id}}</td>
                        <!-- <td>{{record.name_ar}}</td>
                        <td>{{record.description_ar}}</td>
                        <td>
                            <button class="btn btn-success" @click='enter_manager(index)'> {{$lang['manager']}} <i class="fas fa-user"></i> </button>
                        </td> -->

                        <td>{{record.rooms}}</td>
                        <td>{{record.kitchens}}</td>
                        <td>{{record.toilets}}</td>
                        <td>
                            <button class="btn btn-primary" @click="goOffers(record.id)">
                                <i class="fas fa-percent"></i>
                            </button>
                        </td>

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
            checkAll:false,
            check:false,
            currentPage: this.$route.query.page?? 1,
            totalPages:0,
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
        create(){
             this.$router.push( {name:'apartmentsCreate',query:{...this.$route.query} });
        },
        update(index){
             this.$router.push( {name:'apartmentsUpdate', params: { id: this.records[index].id }});
        },
        show(index){
             this.$router.push( {name:'apartmentsShow' , params: { id: this.records[index].id }});
        },
        goToHousing(index){
             this.$router.push( {name:'housing_unitsShow' , params: { id: this.records[index].id }});
        },
        async paginate(currentPage){
            this.$router.push({  query: { ...this.$route.query,'page': currentPage }});
        },
        enter_manager(index){
            this.$router.push( {name:'ownersShow' , params: { id: this.records[index].id } ,query:{records_id:'apartments_id'}});
        },
        goOffers(id){
            this.$router.push( {name:'offers' , query: { apartments_id: id }});
        },

        async getRecords(){

            let response = await this.Api('GET','apartments',this.features());
            this.records=response.data.records ;
            this.totalPages=response.data.totalPages ;
        },
         async deleteRecord(index){

            if(confirm(`${this.$lang['Are you sure to delete this item']}`)){
                await this.Api('DELETE',`apartments/${this.records[index].id}`);
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
                'apartments_complexes_id': this.$route.query.apartments_complexes_id
            };
        }
    },
    async mounted(){
        await this.getRecords();
    },
    metaInfo() {
        return {
            title: `${this.$lang['app name']} - ${this.$lang['apartments']} `,
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
