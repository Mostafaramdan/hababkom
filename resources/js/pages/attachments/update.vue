<template>
    <div class="m-3" >
    <form @submit.prevent="onSubmit" class="border border-5 border-primary rounded ">
        <h3>
           {{$lang['update an attachment']}}
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
            :maxImage='1'
            :maxSizeImage="10"
            ></vue-upload-multiple-image>
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
import VueUploadMultipleImage from 'vue-upload-multiple-image'

  export default {
    components: {
        VueUploadMultipleImage,
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
        async uploadImageSuccess(formData, index, fileList) {
             let response=  await this.axios({
                method: 'POST',
                url: '/api/image',
                data:{image:fileList[index].path},
            })
            this.images.push(response.data.image)
        },
        async beforeRemove (index, done, fileList) {
            if (confirm(this.$lang['Are you sure to delete this item'])) {
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
        async onSubmit() {
            this.loading=true;
            this.record.images= JSON.stringify( this.images.map(a => a.id));
            let response = await this.Api('PUT',`attachments/${this.record.id}`,this.record);
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
        let response = await this.Api('GET',`attachments/${this.$route.params.id}`);
        this.record = response.data.record;
        this.images = response.data.record.images;
    },
    metaInfo() {
        return {
            title: `${this.$lang['app name']} - ${this.$lang['update an attachment']} `,
        }
    }

  }
</script>
