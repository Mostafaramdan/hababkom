<template >
    <div>
        <div class="row row-cols-1 row-cols-md-1 ">
            <div class="col">
                <div class="card " >
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-3 ">
                                <label><h5 >الاسم : </h5></label>
                            </div>
                            <div class="col-md-3">
                                <b> {{ record.name }}</b>
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-md-3 ">
                                <label><h5 >البريد الالكتروني : </h5></label>
                            </div>
                            <div class="col-md-3">
                                <b> {{ record.email }}</b>
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-md-3 ">
                                <label><h5 >التليفون : </h5></label>
                            </div>
                            <div class="col-md-3">
                                <b> {{ record.phone }}</b>
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-md-3 ">
                                <label><h5 > إرسال  رسالة نصية <i class="fas fa-sms"></i> : </h5></label>
                            </div>
                            <div class="col-md-3">
                                <b>
                                    <button v-b-modal.send-sms-modal class="btn btn-primary" type="button" id="button-addon1"> إرسال </button>
                                </b>
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-md-3 ">
                                <label><h5 > إرسال بريد الكتروني  <i class="fas fa-main"></i> : </h5></label>
                            </div>
                            <div class="col-md-3">
                                <b>
                                    <button v-b-modal.send-mail-modal class="btn btn-primary" type="button" id="button-addon2"> إرسال </button>
                                </b>
                            </div>
                        </div>
                        <hr>
                    </div>
                </div>
            </div>
        </div>
        <b-modal id="send-sms-modal" @ok="send_sms" hide-header-close :title="`إرسال رسالة نصية : ${record.phone}`   " ok-hide='true' ok-title = "إرسال"  cancel-title = "إلفاء">
            <div class="d-block text-center">
                <div class="form-group">
                    <label for="message-text" class="col-form-label"> أدخل نص الرسالة :</label>
                    <textarea class="form-control" v-model="sms"></textarea>
                </div>
            </div>
        </b-modal>
        <b-modal id="send-mail-modal" @ok="send_mail" hide-header-close :title="`إرسال بريد إلكتروني : ${record.email}`   " ok-hide='true' ok-title = "إرسال"  cancel-title = "إلفاء">
            <div class="d-block text-center">
                <div class="form-group">
                    <label for="message-text" class="col-form-label"> أدخل نص الرسالة :</label>
                    <textarea class="form-control" v-model="mail"></textarea>
                </div>
            </div>
        </b-modal>
    </div>
</template>
<script>

export default {
    components:{
    },
    data(){
        return {
            record:{},
            sms:'',
            mail:'',
            slide: 0,
            sliding: null,
            loading:false
        }
    },
    methods:{
        onSlideStart(slide) {
            this.sliding = true
        },
        onSlideEnd(slide) {
            this.sliding = false
        },
        async send_sms() {
            this.loading=true;
            let response = await this.Api('GET','sms',{phone:this.record.phone,message:this.sms} );
            this.loading=false;
            if(response.data.status == 200){
                this.$swal("تم إرسال الرسالة بنجاح", "", "success");
            }
        },
        async send_mail() {
            this.loading=true;
            let response = await this.Api('GET','sendMail',{email:this.record.email,message:this.mail} );
            this.loading=false;
            if(response.data.status == 200){
                this.$swal("تم إرسال الرسالة بنجاح", "", "success");
            }
        }
    },
    async mounted(){
        this.$store.state.isLoading = false;
        let response = await this.Api('GET',`users/${this.$route.params.id}`);
        this.record = response.data.record;
    },
    metaInfo() {
        return {
            title: `حبابكم -  ${this.record.name}`,
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
