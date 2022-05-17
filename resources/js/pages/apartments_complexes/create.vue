<template>
    <div class="m-3" >
    <div  @submit.prevent="onSubmit" class="border border-5 border-primary rounded form">
        <h3>
             {{$lang['create an apartments complex']}}
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
            <label  > {{$lang['enter the Arabic description'] }}   </label>
            <input type="text" v-model="record.description_ar" :class="['form-control' ,{'is-valid':validateDescription_ar },{'is-invalid':record.description_ar&&!validateDescription_ar}]"  >
            <div class="valid-feedback">
                {{$lang.correct}}
            </div>
            <div class="invalid-feedback">
                <span>{{$lang['The Arabic description must be entered in correctly'] }}</span>
            </div>
        </div>
         <div class="form-check ">
            <label  > {{$lang['enter the English description'] }}  </label>
            <input type="text" v-model="record.description_en" :class="['form-control' ,{'is-valid':validateDescription_en },{'is-invalid':record.description_en&&!validateDescription_en}]"  >
            <div class="valid-feedback">
                {{$lang.correct}}
            </div>
            <div class="invalid-feedback">
                <span>{{$lang['The English description must be entered in correctly'] }}</span>
            </div>
        </div>   
        <div class="form-check ">
            <label  > {{$lang['enter the notes']}}  </label>
            <textarea type="text"  v-model="record.notes" :class="['form-control' ]"  ></textarea>

        </div>
        <div class="form-check ">
            <label  > {{$lang['Enter the payment method']}}  </label>
            <select type="text"  v-model="record.payment" :class="['form-select' ,{'is-valid':validatePayment },{'is-invalid':!validatePayment}]"  >
                <option value="" disabled>{{$lang.choose}}</option>
                <option value="cash">{{$lang['Upon arrival']}}  </option>
                <option value="visa"> {{$lang['online']}} </option>
            </select>
            <div class="valid-feedback">
                {{$lang.correct}}
            </div>
            <div class="invalid-feedback">
                <span>{{$lang['The payment type must be entered correctly']}}</span>
            </div>
        </div>
        <div class="btn-group mb-4 mt-4">
            <dropdown-menu
                model="regions"
                @choosen='cities_id = $event;record.regions_id=null'
                :records_id='cities_id'
                :column="'name_'+$lang.currentLang"
                :label="$lang.city"
                >
            </dropdown-menu>

            <dropdown-menu class="mr-3"
                model="regions"
                @choosen='record.regions_id = $event'
                :records_id='record.regions_id'
                :where=" {key: 'regions_id' , val: cities_id }"
                :column="'name_'+$lang.currentLang"
                :label="$lang.district"
                >
            </dropdown-menu>
        </div>
         <div class="form-check ">
            <label  > {{$lang['Enter the street']}}  </label>
            <input type="text" v-model="record.street" :class="['form-control' ]"  >
        </div>

        <div class="form-check ">
            <label  > {{$lang['Enter the attachments']}}  </label>
            <treeselect v-model="attachs" :multiple="true" :options="attachments" ></treeselect>
        </div>
        <hr>
        <br>
        <div class="form-check ">
        <!-- <google-map ></google-map> -->
            <label  > {{$lang['Enter the address from here']}} <a href='https://www.google.com/maps/' target="_blank">{{$lang['google map']}} </a>  </label>
            <input type="text" v-model="record.map_link" :class="['form-control' ]"  >
        </div>
        <hr>
        <!-- <upload-image 
            :dragText="$lang['Put the main picture here']"
                :id="'mainImage'" :max="1"
                :images="main_image">
        </upload-image> -->
        <upload-image 
            :dragText="$lang['Put the picture here']"
                :id="'images'" :max="10"
                :images="images">
        </upload-image>
        <hr>
        <button @click="onSubmit" type="submit" class="btn btn-primary btn-lg mt-2" :disabled="allValidation == false ">
            <span v-if="loading">
                <span class="spinner-border spinner-border-sm" role="status" aria-hidden="true"></span>
                {{ $lang["loading..."] }}
            </span>
            <span v-else>
                 {{$lang.save}}
            </span> 
        </button>
    </div>
  </div>
</template>

<script>
import googleMap from '@/pages/apartments_complexes/googleMap';
import Treeselect from '@riophae/vue-treeselect'
import '@riophae/vue-treeselect/dist/vue-treeselect.css'
import VueUploadMultipleImage from 'vue-upload-multiple-image'

export default {
    components: {
        googleMap,Treeselect,VueUploadMultipleImage
    },
    data() {
        return {
            // google: gmapApi,
            loading : false,
            payments_types:[{id:'cash',label:this.$lang['Upon arrival']},{label:this.$lang['online'],id:'visa'}],
            categories:[],
            attachments:[],
            attachs:[],
            countries:[],
            cities:[],
            cities_id:'',
            districts:[],
            countries:[],
            images:[],
            main_image:[],
            city: '',
            passwordConfirmed:'',
            record:{
                notes:'',
                payment:[],
                categories_id:'',
                street:'',
                regions_id:'',
                name_ar:'',
                name_en:'',
                description_ar:'',
                map_link:'',
                location:
                {lat: 30.0526633, lng: 31.3738656},
                description_en:'',
                housing_units_id: this.$route.query.housing_units_id
            },
        }
    },
    methods: {
        searchForCity($event){
            var  filter, ul, li, a, i, txtValue;
            filter = $event.target.value.toUpperCase();
            ul = document.getElementsByClassName("dropdown-menu")[1];
            li = ul.getElementsByTagName("li");
            for (i = 0; i < li.length; i++) {
                a = li[i].getElementsByTagName("a")[0];
                txtValue = a.textContent || a.innerText;
                if (txtValue.toUpperCase().indexOf(filter) > -1) {
                    li[i].style.display = "";
                } else {
                    li[i].style.display = "none";
                }
            }
        },
        chooseCity(index){
            this.city= this.cities[index].name_ar
            this.record.regions_id= this.cities[index].id
        },
        async onSubmit() {
            this.loading=true;
            this.record.images= JSON.stringify( this.images.map(a => a.id));
            this.record.main_image= JSON.stringify( this.main_image.map(a => a.id));
            this.record.attachments='';
            this.record.attachments= JSON.stringify( this.attachs);

            let response = await this.Api('POST','apartments_complexes',this.record);
            this.loading=false;
            if(response.data.status==200)
                this.$swal(`${this.$lang['Added successfully']}`, "", "success")
                this.$router.push( {name:'apartments_complexes'});

        },

    },
    computed: {
        validateName_ar(){
            return this.record.name_ar.length > 3
        }, 
        validateName_en(){
            return this.record.name_en.length > 3
        },
         validateDescription_ar(){
            return this.record.description_ar.length > 3
        },
         validatePayment(){
            return this.record.payment.length > 3
        },
        validateDescription_en(){
            return this.record.description_en.length > 3
        },
        allValidation(){
            return  this.validatePayment &&
            this.validateDescription_ar  && this.validateDescription_en  && this.validateName_ar  && this.validateName_en  &&  !this.loading
        }
    },
    async mounted(){
        this.$store.state.isLoading = false;
        let response =await  this.generalApi('POST','/api/getCategories',{})
        let response1 =await  this.generalApi('POST','/api/getCountries',{})
        let response2 =await  this.generalApi('POST','/api/getRegions',{dashboard:true})
        let response3 =await  this.Api('GET','getAllAttachments',{})

        this.countries = response1.data.countries;
        this.cities = response2.data.records;
        this.attachments = response3.data.records;

        this.attachments.map((element) => {
            return element.label = element.name_ar;
        });;
        this.categories=response.data.categories;

    },
    metaInfo() {
        return {
            title: `${this.$lang['app name']} - ${this.$lang['create an apartments complex']}`,
        }
    }
  }
</script>
<style >
.vue-map-container{
    margin-top : 10px
}
</style>
