<template>
    <div class="m-3" >
    <form  @submit.prevent="onSubmit" class="border border-5 border-primary rounded form">
        <h3>
           تعديل إعدادات التطبيق
        </h3>
        <hr>
         <div class="form-check ">
            <label  > أدخل  سياسة الخصوصية بالعربي  </label>
            <textarea type="text" v-model="record.policyTerms_ar" :class="['form-control' ]"  ></textarea>
        </div>
         <div class="form-check ">
            <label  > أدخل  سياسة الخصوصية بالانجليزي  </label>
            <textarea type="text" v-model="record.policyTerms_en" :class="['form-control' ]"  ></textarea>
        </div>
        <div class="form-check ">
            <label  > عن التطبيق بالعربي </label>
            <textarea type="text"  v-model="record.aboutUs_ar" :class="['form-control']"  ></textarea>
        </div>
        <div class="form-check ">
            <label  > عن التطبيق بالانجليزي </label>
            <textarea type="text"  v-model="record.aboutUs_en" :class="['form-control']"  ></textarea>
        </div>
         <div class="form-check ">
            <label  >   شروط االستخدام  بالعربي </label>
            <textarea type="text"  v-model="record.privacy_ar" :class="['form-control']"  ></textarea>
        </div>
        <div class="form-check ">
            <label  >   شروط االستخدام  بالانجليزي </label>
            <textarea type="text"  v-model="record.privacy_en" :class="['form-control']"  ></textarea>
        </div>
        <div class="form-check ">
            <label  >     أدخل الرسوم </label>
            <input type="number"  v-model="record.fees" :class="['form-control']"  >
        </div>


        <hr>
        <button type="submit" class="btn btn-primary btn-lg mt-2" :disabled="allValidation == false ">
            <span v-if="loading">
                <span class="spinner-border spinner-border-sm" role="status" aria-hidden="true"></span>
                جاري التحميل ...
            </span>
            <span v-else>
                 حفظ
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
            },
        }
    },
    methods: {
        async onSubmit() {
            this.loading=true;
            let response = await this.Api('PUT',`app_settings/${this.record.id}`,this.record);
            this.loading=false;
            if(response.status==200)
             this.$swal("تم الاضافة بنجاح", "", "success")

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
            title: `حبابكم -   تعديل إعدادات التطبيق  `,
        }
    }
}
</script>
