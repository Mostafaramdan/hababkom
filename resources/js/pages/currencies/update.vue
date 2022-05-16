<template>
    <div class="m-3" >
    <form  @submit.prevent="onSubmit" class="border border-5 border-primary rounded form">
        <h3>
           {{$lang['update a currency']}}
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
        <div class="form-check ">
            <label  > {{$lang['Enter the code']}}  </label>
            <input type="text"  v-model="record.code" :class="['form-control' ,{'is-valid':validateCode },{'is-invalid':record.code&&!validateCode}]"  >
            <div class="valid-feedback">
                {{$lang.correct}}
            </div>
            <div class="invalid-feedback">
                <span>{{$lang['The code must be entered correctly']}}</span>
            </div>
        </div>
        <div class="form-check ">
            <label  >{{$lang['Enter the value for $1']}}</label>
            <input type="text"  v-model="record.value_in_dollar" :class="['form-control' ,{'is-valid':validateValue_in_dollar },{'is-invalid':!validateValue_in_dollar}]"  >
            <div class="valid-feedback">
                {{$lang.correct}}
            </div>
            <div class="invalid-feedback">
                <span>{{$lang['The value must be entered correctly']}}</span>
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
            record:{
                value_in_dollar:0,
                name_ar:'',
                name_en:'',
                code:'',
            },
        }
    },
    methods: {
        async onSubmit() {
            this.loading=true;
            let response = await this.Api('PUT',`currencies/${this.record.id}`,this.record);
            this.loading=false;
            if(response.status==200)
             this.$swal(this.$lang["updated successfully"], "", "success")

        },
    },
    computed: {
        validateCode(){
            return this.record.code.length > 2
        },
        validateName_ar(){
            return this.record.name_ar.length > 3
        },
        validateName_en(){
            return this.record.name_en.length > 3
        },
        validateValue_in_dollar(){
            return this.record.value_in_dollar > 0
        },
        allValidation(){
            return this.validateCode && this.validateValue_in_dollar  &&
            this.validateName_en  && this.validateName_ar  &&  !this.loading
        }
    },
    async mounted(){
        this.$store.state.isLoading = false;
        let response = await this.Api('GET',`currencies/${this.$route.params.id}`);
        this.record = response.data.record;
        this.images = response.data.record.images;
    },

    metaInfo() {
        return {
            title: `${this.$lang['app name']} -  ${this.$lang['update a currency']} `,
        }
    }
}
</script>
