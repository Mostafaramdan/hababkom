<template>
    <div class="m-3" >
    <form @submit.prevent="onSubmit" class="border border-5 border-primary rounded ">
        <h3>
           {{$lang['create new housing unit']}}
        </h3>
        <hr>
        <div class="form-check ">
            <label  > {{$lang['enter the price per night (in dollars)']}}  </label>
            <input type="number" min="0" v-model="record.price" :class="['form-control' ,{'is-valid':validatePrice },{'is-invalid':record.price&&!validatePrice}]"  >
            <div class="valid-feedback">
                   {{$lang.correct}}
            </div>
            <div class="invalid-feedback">
                <span>{{$lang['The price must be entered correctly']}}</span>
            </div>
        </div>
        <div class="form-check ">
            <label  > {{$lang['enter the final price per night (in dollars)']}} </label>
            <input type="number" min="0" v-model="record.final_price" :class="['form-control' ,{'is-valid':validateFinalPrice },{'is-invalid':record.final_price&&!validateFinalPrice}]"  >
            <div class="valid-feedback">
                   {{$lang.correct}}
            </div>
            <div class="invalid-feedback">
                <span>{{$lang['The final price must be entered correctly']}}</span>
            </div>
        </div>
         <div class="form-check ">
            <label  > {{$lang['enter adult count']}} </label>
            <input type="number" min="0" v-model="record.adult_nums" :class="['form-control' ,{'is-valid':validateAdult_nums },{'is-invalid':record.adult_nums&&!validateAdult_nums}]"  >
            <div class="valid-feedback">
                   {{$lang.correct}}
            </div>
            <div class="invalid-feedback">
                <span>{{$lang['The number of children must be entered correctly']}}</span>
            </div>
        </div>
         <div class="form-check ">
            <label  > {{$lang['enter children count']}} </label>
            <input type="number" min="0" v-model="record.children_nums" :class="['form-control' ,{'is-valid':validateChildren_nums },{'is-invalid':record.children_nums&&!validateChildren_nums}]"  >
            <div class="valid-feedback">
                   {{$lang.correct}}
            </div>
            <div class="invalid-feedback">
                <span>{{$lang['The number of children must be entered correctly']}}</span>
            </div>
        </div>
        <upload-image 
            :dragText="$lang['Put the main picture here']"
                :id="'mainImage'" :max="1"
                :images="main_image">
        </upload-image>
        <upload-image 
            :dragText="$lang['Put the picture here']"
                :id="'images'" :max="10"
                :images="images">
        </upload-image>
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
import VueUploadMultipleImage from 'vue-upload-multiple-image'

  export default {
    components: {
        VueUploadMultipleImage,
    },
    data() {
        return {
            loading : false,
            images:[],
            main_image:[],
            record:{
                price:0,
                final_price:1,
                adult_nums:0,
                children_nums:0,
                estates_id:this.$route.query.estates_id ? this.$route.query.estates_id : this.$store.state.user.estates_id ,
            },
        }
    },
    methods: {
        async onSubmit() {
            this.loading=true;
            this.record.images= JSON.stringify( this.images.map(a => a.id));
            this.main_image.length ? this.record.main_image= this.main_image[0].id : null;
            let response = await this.Api('POST','housing_units',this.record);
            this.loading=false;
            this.$swal(this.$lang["Added successfully"], "", "success")

        }
    },
    computed: {
        validatePrice(){
            return this.record.price > 0
        },
        validateFinalPrice(){
            return this.record.final_price > 0
        },
        validateAdult_nums(){
            return this.record.adult_nums > 0
        },
        validateChildren_nums(){
            return this.record.children_nums > 0
        },
        allValidation(){
            return this.validatePrice && this.validateFinalPrice && this.validateAdult_nums && this.validateChildren_nums &&  !this.loading
        }
    },
    mounted(){
        this.$store.state.isLoading = false;
    },
        metaInfo() {
        return {
            title: `حبابكم -  أنشئ  غرفة جديدة `,
        }
    }

  }
</script>
