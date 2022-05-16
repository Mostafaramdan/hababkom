<template>
    <div class="m-3" v-if="authorized.create">
        <div  @submit.prevent="onSubmit" class="border border-5 border-primary rounded form">
            <h3>
                {{$lang['Create a new apartment']}}
            </h3>
            <hr>
            <div class="form-check ">
                <label  > {{$lang['Enter the apartments count']}}  </label>
                <input type="number" v-model="record.N_Rooms" value="1" :class="['form-control' ]"  >
            </div>
            <div class="form-check ">
                <label  > {{$lang['enter the price per night (in dollars)']}}  </label>
                <input type="number"   @input="computed_final_price" v-model="record.price" :class="['form-control' ]"  >
            </div>
            <div class="form-check " v-if="$store.state.user.type=='admin'">
                <label  > {{$lang['enter the final price per night (in dollars)']}}   ({{final_price_equation+'%'}})  </label>
                <input type="number"  v-model="record.final_price" :class="['form-control' ]"  >
            </div>

            <div class="form-check ">
                <label  > {{$lang['rooms count']}}  </label>
                <input type="number"  v-model="record.rooms" :class="['form-control' ]"  >
            </div>

            <div class="form-check ">
                <label  > {{$lang['kitchens count']}}  </label>
                <input type="number"  v-model="record.kitchens" :class="['form-control' ]"  >
            </div>
            <div class="form-check ">
                <label  > {{$lang['toilets count']}}  </label>
                <input type="number"  v-model="record.toilets" :class="['form-control' ]"  >
            </div>
            <div class="form-check ">
                <label  > {{$lang['Enter the attachments']}}  </label>
                <treeselect 
                    v-model="record.attachs"
                    :multiple="true"
                    :options="attachments"
                ></treeselect>
            </div>
            <hr>
            <!-- <br>
            <div class="form-check ">
                <label  > {{$lang['Enter the address from here']}} <a href='https://www.google.com/maps/' target="_blank">  {{$lang['google map']}}</a>  </label>
                <input type="text" v-model="record.map_link" :class="['form-control' ]"  >
            </div>
            <hr> -->
            <div id="my-strictly-unique-vue-upload-multiple-image" style="display: flex; justify-content: center;">
                <vue-upload-multiple-image
                    @upload-success="uploadImageSuccess"
                    @before-remove="beforeRemove"
                    @edit-image="editImage"
                    :data-images="images"
                    idUpload="myIdUpload"
                    editUpload="myIdEdit"
                    :dragText="$lang['Put the picture here']"
                    :dropText="$lang['Leave the picture here']"
                    :showPrimary='false'
                    browseText=' '
                    :maxImage='50'
                    :maxSizeImage="10"
                ></vue-upload-multiple-image>
            </div>
            <hr>
            <button @click="onSubmit" type="submit" class="btn btn-primary btn-lg mt-2" :disabled="allValidation == false ">
                <span v-if="loading">
                    <span class="spinner-border spinner-border-sm" role="status" aria-hidden="true"></span>
                    {{$lang['loading...']}}
                </span>
                <span v-else>
                    {{$lang['save']}}
                </span>
            </button>
        </div>
    </div>
</template>

<script>
import googleMap from '@/pages/apartments/googleMap';
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
            final_price_equation:0, 
            attachments:[],
            images:[],
            passwordConfirmed:'',
            record:{
                notes:'',
                payment:'',
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
                apartments_complexes_id: this.$route.query.apartments_complexes_id
            },
        }
    },
    methods: {
        async uploadImageSuccess(formData, index, fileList) {
            let response=  await this.axios({
                method: 'POST',
                url: '/api/image',
                data:{image:fileList[index].path},
            })
            this.images.push(response.data.image)
        },
        async beforeRemove (index, done, fileList) {
            if (confirm(`${this.$lang['Are you sure to delete this item']}`)) {
                let response=  await this.axios({
                method: 'DELETE',
                url: `/api/image/${this.images[index].id}`,
            })
            this.images.splice(index,1)
            }
        },
        async editImage (formData, index, fileList) {

            let image = fileList[index];
            await setTimeout(function () {
                let response=     this.axios({
                    method: 'POST',
                    url: `/api/image/${fileList[index].id}`,
                    data:{image:fileList[index].path,_method:'PUT'},
                }).then((response)=>{
                    this.images[index]= response.data.image
                })
             }.bind(this), 1000)
        },
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
            this.record.attachments= JSON.stringify( this.record.attachs);
            let response = await this.Api('POST','apartments',this.record);
            if(!this.record.final_price){
                this.record.final_price=this.record.price
            }
            this.loading=false;
            if(response.data.status==200)
                this.$swal(`${this.$lang['Added successfully']}`, "", "success")

        },
        computed_final_price($e){
            this.record.price= $e.target.value
            this.record.final_price =   parseFloat(this.record.price) +
                    parseFloat((this.final_price_equation/100)*this.record.price)
        },
    },
    computed: {
        validateName_ar(){
            return this.record.name_ar.length > 0
        },
        validateName_en(){
            return this.record.name_en.length > 0
        },
         validateDescription_ar(){
            return this.record.description_ar.length > 0
        },
         validatePayment(){
            return this.record.payment.length > 0
        },
        validateDescription_en(){
            return this.record.description_en.length > 0
        },
        
        allValidation(){
            return  this.record.rooms &&  this.record.kitchens   && 
            this.record.toilets  &&  !this.loading
        }
    },
    async mounted(){
        this.$store.state.isLoading = false;
        
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
            title: `${this.$lang['app name']} -  ${this.$lang['Create a new apartment']}`,
        }
    }

  }
</script>
<style >
.vue-map-container{
    margin-top : 10px
}
</style>
