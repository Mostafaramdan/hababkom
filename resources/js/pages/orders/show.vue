<template >
    <div>

        <div class="row row-cols-1 row-cols-md-1 ">
            <div class="col">
                <div class="card " >
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-3 ">
                                <label><h5 >{{$lang.city }} : </h5></label>
                            </div>
                            <div class="col-md-3">
                                <b> {{record.city_of_hotel['name_'+$lang['currentLang']] }}</b>
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-md-3 ">
                                <label><h5 >{{$lang.hotel }} : </h5></label>
                            </div>
                            <div class="col-md-3">
                                <b> {{record.hotel_name['name_'+$lang['currentLang']] }}</b>

                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-md-3 ">
                                <label><h5 >{{$lang.status }} : </h5></label>
                            </div>
                            <div class="col-md-3">
                                <b> {{$lang[record.status] }}</b>
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-md-3 ">
                                <label><h5 >{{$lang.total }} : </h5></label>
                            </div>
                            <div class="col-md-3">
                                <b> {{ record.price }}</b>
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-md-3 ">
                                <label><h5 >{{$lang['Total after discount']}} : </h5></label>
                            </div>
                            <div class="col-md-3">
                                <b> {{ record.priceAfterDiscount }}</b>
                            </div>
                        </div>
                        <hr>
                        <div class="row" v-if='record.voucher'>
                            <div class="col-md-3 ">
                                <label><h5 >  {{$lang['discount']}} : </h5></label>
                            </div>
                            <div class="col-md-3">
                                <b> <button class="btn btn-secondary" @click="goToVoucher(record.vouchers_id)"> <i class="fas fa-eye "></i> {{record.voucher.discount}} % </button></b>
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-md-3 ">
                                <label><h5 >  {{$lang['start at']}}   : </h5></label>
                            </div>
                            <div class="col-md-3">
                                <b> {{ record.start_at }}</b>
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-md-3 ">
                                <label><h5 >  {{$lang['end at']}}   : </h5></label>
                            </div>
                            <div class="col-md-3">
                                <b> {{ record.end_at }}</b>
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-md-3 ">
                                <label><h5 >  {{$lang['booking date'] }}  : </h5></label>
                            </div>
                            <div class="col-md-3">
                                <b> {{ record.created_at }}</b>
                            </div>
                        </div>
                        <hr>
                        <div class="row" v-if="record.user">
                            <div class="col-md-3 ">
                                <label><h5 > {{$lang.user}} <i class="fas fa-user"></i>       : </h5></label>
                            </div>
                            <div class="col-md-3">
                                <b><router-link :to="{name:'usersShow',params:{id:record.users_id}}">{{record.user.name}}</router-link></b>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="table-responsive">
                <table class="table table-striped table-dark table-bordered table-hover  mb-2"  >
                    <thead >
                        <tr >
                            <th >#</th>
                            <th >{{$lang['adult count']}} </th>
                            <th >{{$lang['children count']}} </th>
                            <th >{{$lang.price}} </th>
                            <th >#</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr v-for="(record,index) in record.carts" :key="index">
                            <td>{{record.housing_unit.id}}</td>
                            <td>{{record.housing_unit.adult_nums}}</td>
                            <td>{{record.housing_unit.children_nums}}</td>
                            <td>{{record.price}}</td>
                            <td>
                                <button class="btn btn-secondary" @click="goToHousing(record.housing_unit.id)"><i class="fas fa-eye "></i></button>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</template>
<script>

export default {
    components:{
    },
    data(){
        return {
            record:{},
            slide: 0,
            sliding: null,
        }
    },
    methods:{
        onSlideStart(slide) {
            this.sliding = true
        },
        onSlideEnd(slide) {
            this.sliding = false
        },
        goToHousing(id){
             this.$router.push( {name:'housing_unitsShow' , params: { id: id }});
        },
        goToVoucher(id){
             this.$router.push( {name:'vouchersShow' , params: { id: id }});
        },

    },
    async mounted(){
        this.$store.state.isLoading = false;
        let response = await this.Api('GET',`orders/${this.$route.params.id}`);
        this.record = response.data.record;
    },
    metaInfo() {
        return {
            title: `حبابكم -  تفاصيل الحجز`,
        }
    }
}
</script>
<style scoped>
    .example-slide {
        align-items: center;
        background-color: #666;
        color: #999;
        display: flex;
        font-size: 1.5rem;
        justify-content: center;
        min-height: 10rem;
    }
</style>
