<template>
    <div class="m-3" v-if="authorized.update">
        <form @submit.prevent="onSubmit" class="border border-5 border-primary rounded ">
            <h3>
            {{$lang['manager']}}
            </h3>
            <hr>
            <div class="form-check ">
                <label  > {{$lang['owner_name']}}   </label>
                <input type="text" v-model="record.owner_name" :class="['form-control']"  >
            </div>
            <hr>
            <div class="form-check ">
                <label  > {{$lang['owner_phone']}}   </label>
                <input type="text" v-model="record.owner_phone" :class="['form-control']"  >
            </div>
            <hr>
            <div class="form-check ">
                <label  > {{$lang['owner_phone2']}}   </label>
                <input type="text" v-model="record.owner_phone2" :class="['form-control']"  >
            </div>
            <hr>
            <div class="form-check ">
                <label  > {{$lang['owner_email']}}   </label>
                <input type="text" v-model="record.owner_email" :class="['form-control']"  >
            </div>
            <hr>
            <div class="form-check ">
                <label  > {{$lang['manager_name']}}   </label>
                <input type="text" v-model="record.manager_name" :class="['form-control']"  >
            </div>
            <hr>
            <div class="form-check ">
                <label  > {{$lang['manager_phone']}}   </label>
                <input type="text" v-model="record.manager_phone" :class="['form-control']"  >
            </div>
            <hr>
            <div class="form-check ">
                <label  > {{$lang['manager_phone2']}}   </label>
                <input type="text" v-model="record.manager_phone2" :class="['form-control']"  >
            </div>
            <hr>
            <div class="form-check ">
                <label  > {{$lang['phone_sms']}}   </label>
                <input type="text" v-model="record.phone_sms" :class="['form-control']"  >
            </div>
            <hr>
            <div class="form-check ">
                <label  > {{$lang['website']}}   </label>
                <input type="text" v-model="record.website" :class="['form-control']"  >
            </div>
            <hr>
            <div class="form-check ">
                <label  > {{$lang['email_booking']}}   </label>
                <input type="text" v-model="record.email_booking" :class="['form-control']"  >
            </div>
            <hr>
            <div class="form-check ">
                <label  > {{$lang['bank']}}   </label>
                <input type="text" v-model="record.bank" :class="['form-control']"  >
            </div>
            <hr>
            <div class="form-check ">
                <label  > {{$lang['account_number']}}   </label>
                <input type="text" v-model="record.account_number" :class="['form-control']"  >
            </div>
            <hr>
            <div class="form-check ">
                <label  > {{$lang['enter the password']}}   </label>
                <input type="password" v-model="record.password" :class="['form-control']"  >
            </div>
            <hr>
            <button type="submit" class="btn btn-primary btn-lg mt-2" :disabled="allValidation == false ">
                <span v-if="loading">
                    <span class="spinner-border spinner-border-sm" role="status" aria-hidden="true"></span>
                    {{$lang['loading...']}}
                </span>
                <span v-else>
                    {{$lang['save']}}
                </span>
            </button>
        </form>
  </div>
</template>

<script>
import VueUploadMultipleImage from 'vue-upload-multiple-image'

  export default {
    components: {
        VueUploadMultipleImage,
    },
    data() {
        return {
            loading : false,
            images:[],
            record:{
                name_ar:'',
                name_en:''
            },
        }
    },
    methods: {
        async onSubmit() {
            this.loading=true;
            let response;
            if(this.record && this.record.id){
                response = await this.Api('PUT',`owners/${this.record.id}`,this.record);
            }
            else{
                response = await this.Api('POST','owners',this.record);
            }
            if(response.data.errors ){
                let errors='';
                for (var k in  response.data.errors){
                    errors+=this.$lang[response.data.errors[k]] + '.  '+ "\n";
                };
                alert(errors)
            }else{
                this.$swal(`${this.$lang['Added successfully']}`, "", "success")
            }
            this.loading=false;

        }
    },
    computed: {
      
    allValidation(){
        return  !this.loading
    }
    },
    async mounted(){
        this.$store.state.isLoading = false;
        let response = await this.Api('GET',`getOwner/${this.$route.params.id}/${this.$route.query.records_id}`);
        let record= response.data.record;
        if (record)
            this.record = response.data.record;
        this.record[this.$route.query.records_id] =this.$route.params.id 
        this.record.permissions = response.data.permissions 
        this.record.password = null ;

        if(this.$route.query.records_id== 'estates_id'){
            this.authorized= this.allPermissions.estates.permissions
        }else{
            this.authorized= this.allPermissions.apartments.permissions
        }

    },
    metaInfo() {
        return {
            title: `${this.$lang['app name']} - ${this.$lang['manager']}`,
        }
    }
}
</script>
