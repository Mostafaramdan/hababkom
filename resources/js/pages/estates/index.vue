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
                        <option value="name_ar">الاسم </option>
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
        <button class="btn btn-primary m-2 " @click="create" v-if="!$store.getters.getUser.estates_id">
             إضافة
            <i class="fas fa-plus"></i>
        </button>
        <div class="table-responsive">
            <table class="table table-striped table-dark table-bordered table-hover  mb-2"  >
                <thead >
                    <tr >
                        <th >#</th>
                        <th >الاسم </th>
                        <th >الوصف</th>
                        <th > نوع الدفع </th>
                        <th >القسم </th>
                        <th >المنطقة </th>
                        <th >المدير </th>
                        <th >الغرف </th>
                        <th>التفعيل</th>
                        <th >#</th>
                    </tr>
                </thead>
                <tbody>
                    
                    <tr v-for="(record,index) in records" :key="index">
                        <td>{{record.id}}</td>
                        <td>{{record.name_ar}}</td>
                        <td>{{record.description_ar}}</td>
                        <td>{{record.payment}}</td>
                        <td>{{record.category.name_ar}}</td>
                        <td>{{record.district? record.district.name_ar : ''}}</td>
                        <td><router-link :to="{name:'adminsShow',params:{id:record.admin ? record.admin.id: ''}}"> {{record.admin? record.admin.name : ''}} </router-link></td>
                        <td><button class="btn btn-success" @click='enter_housing_units(record.id)'> الدخول للغرف <i class="fas fa-bed"></i> </button></td>
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
                            <!-- <button class="btn btn-danger" @click="deleteRecord(index)"><i class="fas fa-trash "></i></button> -->
                            <button class="btn btn-info" @click="update(index)"><i class="fas fa-edit"></i></button>
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
        enter_housing_units(id){
             this.$router.push( {name:'housing_units',query:{estates_id:id} });
        },
        create(){
             this.$router.push( {name:'estatesCreate',query:{...this.$route.query} });
        },
        update(index){
             this.$router.push( {name:'estatesUpdate', params: { id: this.records[index].id }});
        },
        show(index){
             this.$router.push( {name:'estatesShow' , params: { id: this.records[index].id }});
        },
        goToHousing(index){
             this.$router.push( {name:'housing_unitsShow' , params: { id: this.records[index].id }});
        },
        async paginate(currentPage){
            this.$router.push({  query: { ...this.$route.query,'page': currentPage }});
        },
        async getRecords(){

            let response = await this.Api('GET','estates',this.features());
            this.records=response.data.records ;
            this.totalPages=response.data.totalPages ;
        },
         async deleteRecord(index){

            if(confirm(this.$lang['Are you sure to delete this item'])){
                await this.Api('DELETE',`estates/${this.records[index].id}`);
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
            title: `حبابكم -  الوحدات السكنية `,
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
