<template >
    <div>
        <div class="row row-cols-1 row-cols-md-1 ">
            <div class="col">
                <div class="card " >
                    <div class="card-body">
                        <h5 class="card-title"> {{$lang.update}} :
                            <button class="btn btn-info" @click="update(record.id)"><i class="fas fa-edit"></i></button>
                        </h5>
                        <div class="row">
                            <div class="col-md-3 ">
                                <label><h5 >{{$lang['about us in Arabic']}} : </h5></label>
                            </div>
                            <div class="col-md-6">
                                <b> {{record.aboutUs_ar}}</b>
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-md-3 ">
                                <label><h5 >{{$lang['about us in English']}} : </h5></label>
                            </div>
                            <div class="col-md-6">
                                <b> {{record.aboutUs_en}}</b>
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-md-3 ">
                                <label><h5 >{{$lang['policy terms in Arabic']}} : </h5></label>
                            </div>
                            <div class="col-md-6">
                                <b> {{record.policyTerms_ar}}</b>
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-md-3 ">
                                <label><h5 >{{$lang['policy terms in English']}} : </h5></label>
                            </div>
                            <div class="col-md-6">
                                <b> {{record.policyTerms_en}}</b>
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-md-3 ">
                                <label><h5 >{{$lang['the privacy policy in Arabic']}} : </h5></label>
                            </div>
                            <div class="col-md-6">
                                <b> {{record.privacy_ar}}</b>
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-md-3 ">
                                <label><h5 >{{$lang['the privacy policy in English']}} : </h5></label>
                            </div>
                            <div class="col-md-6">
                                <b> {{record.privacy_en}}</b>
                            </div>
                        </div>
                        <hr>
                         <div class="row">
                            <div class="col-md-3 ">
                                <label><h5 >{{$lang.fees}} : </h5></label>
                            </div>
                            <div class="col-md-6">
                                <b> {{record.fees}}</b>
                            </div>
                        </div>
                        <hr>
                        <hr>
                         <div class="row">
                            <div class="col-md-3 ">
                                <label><h5 >{{$lang['Final price rate']}} : </h5></label>
                            </div>
                            <div class="col-md-6">
                                <b> {{record.final_price_equation}}</b>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>
<script>

export default {
    data(){
        return {
            record:{},
            totalPages:0,
            visible:false
        }
    },
    methods:{
        show() {
            this.visible = true
        },
        update(index){
             this.$router.push( {name:'app_settingsUpdate', params: { id: this.record.id }});
        },
        async getRecords(){
            let response = await this.Api('GET','app_settings');
            this.record=response.data.record ;
        },

    },
    async mounted(){
        await this.getRecords();
    },
    metaInfo() {
        return {
            title: `${this.$lang['app name']} - ${this.$lang.app_settings} `,
        }
    },
}
</script>
