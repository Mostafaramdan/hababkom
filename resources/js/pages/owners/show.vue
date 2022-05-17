<template >
    <div >
        <div class="row row-cols-1 row-cols-md-1 ">
            <div class="col">
                <div class="card " >
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-3 ">
                                <label><h5 >{{$lang['update']}} : </h5></label>
                            </div>
                            <div class="col-md-3">
                                <b> 
                                    <button class="btn btn-info" @click="update()"><i class="fas fa-edit"></i></button>
                                </b>
                            </div>
                        </div>
                        <hr>
                        <div v-if="record && record.id">
                            <div class="row">
                                <div class="col-md-3 ">
                                    <label><h5 >{{$lang['owner_name']}} : </h5></label>
                                </div>
                                <div class="col-md-3">
                                    <b> {{record.owner_name}}</b>
                                </div>
                            </div>
                            <hr>
                            <div class="row">
                                <div class="col-md-3 ">
                                    <label><h5 > {{$lang['owner_phone']}}  : </h5></label>
                                </div>
                                <div class="col-md-3">
                                    <b> {{ record.owner_phone }}</b>
                                </div>
                            </div>
                            <hr>
                            <div class="row">
                                <div class="col-md-3 ">
                                    <label><h5 > {{$lang['owner_email']}}  : </h5></label>
                                </div>
                                <div class="col-md-3">
                                    <b> {{ record.owner_email }}</b>
                                </div>
                            </div>
                            <hr>
                            <div class="row">
                                <div class="col-md-3 ">
                                    <label><h5 > {{$lang['manager_name']}}  : </h5></label>
                                </div>
                                <div class="col-md-3">
                                    <b> {{ record.manager_name }}</b>
                                </div>
                            </div>
                            <hr>
                            <div class="row">
                                <div class="col-md-3 ">
                                    <label><h5 >  {{$lang['manager_phone']}}   : </h5></label>
                                </div>
                                <div class="col-md-3">
                                    <b> {{ record.manager_phone }}</b>
                                </div>
                            </div>
                            <hr>
                            <div class="row">
                                <div class="col-md-3 ">
                                    <label><h5 >  {{$lang['manager_phone2']}}   : </h5></label>
                                </div>
                                <div class="col-md-3">
                                    <b> {{ record.manager_phone2 }}</b>
                                </div>
                            </div>
                            <hr>
                            <div class="row" >
                                <div class="col-md-3 ">
                                    <label><h5 > {{$lang['phone_sms']}} <i class="fas fa-user"></i>       : </h5></label>
                                </div>
                                <div class="col-md-3">
                                    <b> {{ record.phone_sms }}</b>
                                </div>
                            </div>
                            <hr>
                            <div class="row" >
                                <div class="col-md-3 ">
                                    <label><h5 > {{$lang['website']}} <i class="fas fa-user"></i>       : </h5></label>
                                </div>
                                <div class="col-md-3">
                                    <b> <a :href="'//'+record.website">{{record.website}}</a></b>
                                </div>
                            </div>
                            <hr>
                            <div class="row" >
                                <div class="col-md-3 ">
                                    <label><h5 > {{$lang['email_booking']}} <i class="fas fa-user"></i>       : </h5></label>
                                </div>
                                <div class="col-md-3">
                                    <b> {{ record.email_booking }}</b>
                                </div>
                            </div>
                            <hr>
                            <div class="row" >
                                <div class="col-md-3 ">
                                    <label><h5 > {{$lang['bank']}} <i class="fas fa-user"></i>       : </h5></label>
                                </div>
                                <div class="col-md-3">
                                    <b> {{ record.bank }}</b>
                                </div>
                            </div>
                            <hr>
                            <div class="row" >
                                <div class="col-md-3 ">
                                    <label><h5 > {{$lang['account_number']}} <i class="fas fa-user"></i>       : </h5></label>
                                </div>
                                <div class="col-md-3">
                                    <b> {{ record.account_number }}</b>
                                </div>
                            </div>
                            <hr>
                            <div class="row" >
                                <div class="col-md-3 ">
                                    <label><h5 > {{$lang['email_booking']}} <i class="fas fa-user"></i>       : </h5></label>
                                </div>
                                <div class="col-md-3">
                                    <b> {{ record.email_booking }}</b>
                                </div>
                            </div>
                        </div>
                        <div v-else>
                            <h3>{{$lang.notFound}}</h3>
                        </div>
                    </div>
                </div>
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
        update(){
            this.$router.push( {path:`/dashboard/owners/update/${this.$route.params.id}`,query:{...this.$route.query}});
        },
    },
    async mounted(){
        this.$store.state.isLoading = false;
        let response = await this.Api('GET',`getOwner/${this.$route.params.id}/${this.$route.query.records_id}`);
        this.record = response.data.record;
        if(this.$route.query.records_id== 'estates_id'){
            // this.authorized= this.allPermissions.estates.permissions
        }else{
            // this.authorized= this.allPermissions.apartments.permissions
        }
    },
    metaInfo() {
        return {
            title: `${this.$lang['app name']}`,
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
