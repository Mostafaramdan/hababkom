<template>
    <div class="m-3" >
    <form @submit.prevent="onSubmit" class="border border-5 border-primary rounded ">
        <h3>
            {{$lang['Send new notification']}}
        </h3>
        <hr>
        <div class="form-check ">
            <label  >{{$lang['Enter the content in Arabic']}}  </label>
            <input type="text" v-model="record.content_ar" :class="['form-control' ,{'is-valid':validateContent_ar },{'is-invalid':record.content_ar&&!validateContent_ar}]"  >
            <div class="valid-feedback">
                {{$lang.correct}}
            </div>
            <div class="invalid-feedback">
                <span>{{$lang['The Arabic content must be entered correctly']}}</span>
            </div>
        </div>
         <div class="form-check ">
            <label  >{{$lang['Enter the content in English']}}  </label>
            <input type="text" v-model="record.content_en" :class="['form-control' ,{'is-valid':validateContent_en },{'is-invalid':record.content_en&&!validateContent_en}]"  >
            <div class="valid-feedback">
                {{$lang.correct}}
            </div>
            <div class="invalid-feedback">
                <span>{{$lang['The English content must be entered correctly']}}</span>
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
                content_ar:'',
                content_en:'',
                type:'dashboard',
                created_at :new Date() / 1000
            },
        }
    },
    methods: {

        async onSubmit() {
            this.loading=true;
            let response = await this.Api('POST','notifications',this.record);
            this.loading=false;
            this.$swal(this.$lang["Added successfully"], "", "success")

        }
    },
    computed: {
        validateContent_ar(){
            return this.record.content_ar.length > 3
        },
        validateContent_en(){
            return this.record.content_en.length > 3
        },
        allValidation(){
            return this.validateContent_ar && this.validateContent_en  &&  !this.loading
        }
    },
    mounted(){
        this.$store.state.isLoading = false;
    },
        metaInfo() {
        return {
            title: `${this.$lang['app name']} - ${this.$lang['Send new notification']} `,
        }
    }

  }
</script>
