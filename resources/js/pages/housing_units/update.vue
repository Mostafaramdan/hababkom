<template>
    <div class="m-3" >
    <form @submit.prevent="onSubmit" class="border border-5 border-primary rounded ">
        <h3>
           {{$lang['update housing unit']}}  
        </h3>
        <hr>
        <div class="form-check ">
            <label  > {{$lang['enter the price per night (in dollars)']}}  </label>
                <input type="number"   @input="computed_final_price" v-model="record.price" :class="['form-control' ]"  >
            <div class="valid-feedback">
                   {{$lang.correct}}
            </div>
            <div class="invalid-feedback">
                <span>{{$lang['The price must be entered correctly']}}</span>
            </div>
        </div>
        <div class="form-check " v-if="$store.state.user.type=='admin'">
            <label  > {{$lang['enter the final price per night (in dollars)']}} </label>
            <input type="number" min="0"  v-model="record.final_price" :class="['form-control' ,{'is-valid':validateFinalPrice },{'is-invalid':record.final_price&&!validateFinalPrice}]"  >
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
            final_price_equation:0,
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

            delete this.record.has_offer;
            let response = await this.Api('PUT',`housing_units/${this.record.id}`,this.record);
            if(response.data.status==200){
                this.$swal(this.$lang["updated successfully"], "", "success");
                this.$router.push( {name:'housing_units',query:{estates_id:this.record.estates_id}});
                this.loading=false;
            }
        },
        computed_final_price($e){
            this.record.price= $e.target.value
            this.record.final_price =  
                parseFloat(this.record.price) +
                parseFloat((this.final_price_equation/100)*this.record.price)
        },
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
    async mounted(){
        this.$store.state.isLoading = false;
        let response = await this.Api('GET',`housing_units/${this.$route.params.id}`);
        this.record = response.data.record;
        this.images = response.data.record.images;
        if(response.data.record.main_img)
            this.main_image.push(response.data.record.main_img);

        let response3 =await  this.Api('GET','getAllAttachments',{})
        this.attachments = response3.data.records;


        this.attachments.map((element) => {
            return element.label = element.name_ar;
        });;

        let response4 = await this.Api('GET','getFinal_price_equation');
        this.final_price_equation = response4.data.record.final_price_equation


    },
        metaInfo() {
        return {
            title: `${this.$lang['app name']} -  ${this.$lang['update housing unit']} `,
        }
    }
}
</script>
