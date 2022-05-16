<template>
    <div class="m-3" >
    <form @submit.prevent="onSubmit" class="border border-5 border-primary rounded ">
        <h3>
           {{$lang.update}}
        </h3>
        <hr>
        <div class="form-check ">
            <label  > {{$lang['enter the Arabic name'] }}   </label>
            <input type="text" v-model="record.name_ar" :class="['form-control' ,{'is-valid':validateName_ar },{'is-invalid':record.name_ar&&!validateName_ar}]"  >
            <div class="valid-feedback">
                {{$lang.correct}}
            </div>
            <div class="invalid-feedback">
                <span>{{$lang['The Arabic name must be entered in correctly'] }}</span>
            </div>
        </div>
         <div class="form-check ">
            <label  > {{$lang['enter the English name'] }}  </label>
            <input type="text" v-model="record.name_en" :class="['form-control' ,{'is-valid':validateName_en },{'is-invalid':record.name_en&&!validateName_en}]"  >
            <div class="valid-feedback">
                {{$lang.correct}}
            </div>
            <div class="invalid-feedback">
                <span>{{$lang['The English name must be entered in correctly'] }}</span>
            </div>
        </div>

        <hr>
        <button type="submit" class="btn btn-primary btn-lg mt-2" :disabled="allValidation == false ">
            <span v-if="loading">
                <span class="spinner-border spinner-border-sm" role="status" aria-hidden="true"></span>
                {{ $lang["loading..."] }}
            </span>
            <span v-else>
                 {{$lang.save}}
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
            images:[],
            record:{
                name_ar:'',
                name_en:'',
            },
        }
    },
    methods: {

        async onSubmit() {
            this.loading=true;
            let response = await this.Api('PUT',`regions/${this.record.id}`,this.record);
            this.loading=false;
             this.$swal(this.$lang["updated successfully"], "", "success")
        }
    },
    computed: {
        validateName_ar(){
            return this.record.name_ar.length > 3
        },
        validateName_en(){
            return this.record.name_en.length > 3
        },
        allValidation(){
            return this.validateName_ar && this.validateName_en  &&  !this.loading
        }
    },
    async mounted(){
        this.$store.state.isLoading = false;
        let response = await this.Api('GET',`regions/${this.$route.params.id}`);
        this.record = response.data.record;
    },
    metaInfo() {
        return {
            title: `حبابكم -  تعديل الدولة  `,
        }
    }

  }
</script>
