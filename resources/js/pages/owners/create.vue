<template>
    <div class="m-3" v-if="authorized.create">
    <form  @submit.prevent="onSubmit" class="border border-5 border-primary rounded form">
        <h3>
           أنشئ  عرض جديد
        </h3>
        <hr>
         <div class="form-check ">
            <label  > {{$lang['enter the name'] }} بالعربي  </label>
            <input type="text" v-model="record.name_ar" :class="['form-control' ,{'is-valid':validateName_ar },{'is-invalid':!validateName_ar}]"  >
            <div class="valid-feedback">
                     {{$lang['correct']}}
            </div>
            <div class="invalid-feedback">
                <span>يجب إدخال الاسم بالعربي بشكل </span>
            </div>
        </div>
         <div class="form-check ">
            <label  > أدخل عدد الاسم بالانجليزي  </label>
            <input type="text" v-model="record.name_en" :class="['form-control' ,{'is-valid':validateName_en },{'is-invalid':!validateName_en}]"  >
            <div class="valid-feedback">
                {{$lang['correct']}}
            </div>
            <div class="invalid-feedback">
                <span>يجب إدخال الاسم بالانجليزي بشكل </span>
            </div>
        </div>
         <div class="form-check ">
            <label  > أدخل الوصف بالعربي  </label>
            <input type="text" v-model="record.description_ar" :class="['form-control' ,{'is-valid':validateDescription_ar },{'is-invalid':!validateDescription_ar}]"  >
            <div class="valid-feedback">
                {{$lang['correct']}}
            </div>
            <div class="invalid-feedback">
                <span>يجب إدخال الوصف بالعربي بشكل </span>
            </div>
        </div>
         <div class="form-check ">
            <label  > أدخل الوصف بالانجليزي  </label>
            <input type="text" v-model="record.description_en" :class="['form-control' ,{'is-valid':validateDescription_en },{'is-invalid':!validateDescription_en}]"  >
            <div class="valid-feedback">
                     {{$lang['correct']}}
            </div>
            <div class="invalid-feedback">
                <span>يجب إدخال عدد الوصف بالانجليزي بشكل </span>
            </div>
        </div>
        <div class="form-check ">
            <label  > أدخل الخصم  </label>
            <input type="number" min='1' max='99' v-model="record.discount" :class="['form-control' ,{'is-valid':validateDiscount },{'is-invalid':!validateDiscount}]"  >
            <div class="valid-feedback">
                     {{$lang['correct']}}
            </div>
            <div class="invalid-feedback">
                <span>يجب إدخال الخصم بشكل </span>
            </div>
        </div>
         <div class="form-check ">
            <label  > أدخل عدد تاريخ البداية  </label>
            <input type="date" v-model="record.start_at" :class="['form-control' ,{'is-valid':validateStart_at },{'is-invalid':!validateStart_at}]"  >
            <div class="valid-feedback">
                     {{$lang['correct']}}
            </div>
            <div class="invalid-feedback">
                <span>يجب إدخال  تاريخ البداية بشكل </span>
            </div>
        </div>
        <div class="form-check ">
            <label  > أدخل عدد تاريخ النهاية  </label>
            <input type="date" v-model="record.end_at" :class="['form-control' ,{'is-valid':validateEnd_at },{'is-invalid':!validateEnd_at}]"  >
            <div class="valid-feedback">
                     {{$lang['correct']}}
            </div>
            <div class="invalid-feedback">
                <span>يجب إدخال  تاريخ النهاية بشكل </span>
            </div>
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

  export default {
    components: {
    },
    data() {
        return {
            loading : false,
            record:{
                start_at:'',
                end_at:'',
                name_ar:'',
                name_en:'',
                description_ar:'',
                description_en:'',
                housing_units_id: this.$route.query.housing_units_id
            },
        }
    },
    methods: {
        async onSubmit() {
            this.loading=true;
            let response = await this.Api('POST','offers',this.record);
            this.loading=false;
            if(response.status==200)
             this.$swal(`${this.$lang['Added successfully']}`, "", "success")

        },
        randomString(length) {
            // $event.preventDefault;
            var result = '';
            let chars= '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
            for (var i = length; i > 0; --i) result += chars[Math.floor(Math.random() * chars.length)];
            this.record.code= result;
        }
    },
    computed: {
        validateDiscount(){
            return this.record.discount > 0
        },
        validateStart_at(){
            return this.record.start_at.length > 0
        },
        validateEnd_at(){
            return this.record.end_at.length > 0
        },
        validateName_ar(){
            return this.record.name_ar.length > 0
        },
        validateName_en(){
            return this.record.name_en.length > 0
        },
         validateDescription_ar(){
            return this.record.description_ar.length > 0
        },
        validateDescription_en(){
            return this.record.description_en.length > 0
        },
        allValidation(){
            return this.validateDiscount && this.validateStart_at  && this.validateEnd_at &&
            this.validateDescription_ar  && this.validateDescription_en  &&  !this.loading
        }
    },
    mounted(){
        this.$store.state.isLoading = false;
    },
        metaInfo() {
        return {
            title: `حبابكم -  أنشئ  عرض جديد `,
        }
    }

  }
</script>
