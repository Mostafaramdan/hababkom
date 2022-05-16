<template>
    <div class="m-3" >
    <form  @submit.prevent="onSubmit" class="border border-5 border-primary rounded form">
        <h3>
           {{$lang["Edit app settings"]}}
        </h3>
        <hr>
         <div class="form-check ">
            <label  > {{$lang['the privacy policy in Arabic']}}  </label>
            <textarea type="text" v-model="record.policyTerms_ar" :class="['form-control' ]"  ></textarea>
        </div>
         <div class="form-check ">
            <label  > {{$lang["the privacy policy in English"]}}  </label>
            <textarea type="text" v-model="record.policyTerms_en" :class="['form-control' ]"  ></textarea>
        </div>
        <div class="form-check ">
            <label  > {{$lang["about us in Arabic"]}} </label>
            <textarea type="text"  v-model="record.aboutUs_ar" :class="['form-control']"  ></textarea>
        </div>
        <div class="form-check ">
            <label  > {{$lang["about us in English"]}} </label>
            <textarea type="text"  v-model="record.aboutUs_en" :class="['form-control']"  ></textarea>
        </div>
         <div class="form-check ">
            <label  >   {{$lang["policy terms in Arabic"]}} </label>
            <textarea type="text"  v-model="record.privacy_ar" :class="['form-control']"  ></textarea>
        </div>
        <div class="form-check ">
            <label  >   {{$lang["policy terms in English"]}} </label>
            <textarea type="text"  v-model="record.privacy_en" :class="['form-control']"  ></textarea>
        </div>
        <div class="form-check ">
            <label  >    {{$lang["fees"]}} </label>
            <input type="number"  v-model="record.fees" :class="['form-control']"  >
        </div>

         <div class="form-check ">
            <label  >    {{$lang["Final price rate"]}} </label>
            <input type="number"  v-model="record.final_price_equation" :class="['form-control']"  >
        </div>


        <hr>
        <button type="submit" class="btn btn-primary btn-lg mt-2" :disabled="allValidation == false ">
            <span v-if="loading">
                <span class="spinner-border spinner-border-sm" role="status" aria-hidden="true"></span>
                {{$lang["loading..."]}}
            </span>
            <span v-else>
                 {{$lang["save"]}}
            </span>
        </button>
    </form>
  </div>
</template>

<script>

  export default {
    components: {
    },
    data() {
        return {
            loading : false,
            record:{
                policyTerms_ar:'',
                policyTerms_en:'',
                aboutUs_ar:'',
                aboutUs_en:'',
                privacy_ar:'',
                privacy_en:'',
                fees:'',
                final_price_equation:""
            },
        }
    },
    methods: {
        async onSubmit() {
            this.loading=true;
            let response = await this.Api('PUT',`app_settings/${this.record.id}`,this.record);
            this.loading=false;
            if(response.status==200)
             this.$swal(this.$lang["updated successfully"], "", "success")

        },
    },
    computed: {
        allValidation(){
           !this.loading
        }
    },
    async mounted(){
        this.$store.state.isLoading = false;
        let response = await this.Api('GET',`app_settings/${this.$route.params.id}`);
        this.record = response.data.record;
        this.images = response.data.record.images;
    },

        metaInfo() {
        return {
            title: `${this.$lang['app name']} - ${this.$lang['Edit app settings']} `,
        }
    }
}
</script>
