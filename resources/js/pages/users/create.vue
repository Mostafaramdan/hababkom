<template>
    <div class="m-3" >
    <form @submit.prevent="onSubmit" class="border border-5 border-primary rounded ">
        <h3>
           {{$lang['create new user']}}
        </h3>
        <hr>
        <div class="form-check ">
            <label  > {{$lang['enter the name']}}  </label>
            <input type="text" v-model="record.name" :class="['form-control' ,{'is-valid':validateName },{'is-invalid':record.name&&!validateName}]"  >
            <div class="valid-feedback">
                {{$lang.correct}}
            </div>
            <div class="invalid-feedback">
                <span>{{$lang['the name must be entered correctly']}}</span>
            </div>
        </div>
         <div class="form-check ">
            <label  > {{$lang['enter the email']}}  </label>
            <input type="text" v-model="record.email" :class="['form-control' ,{'is-valid':validateEmail },{'is-invalid':record.email&&!validateEmail}]"  >
            <div class="valid-feedback">
                {{$lang.correct}}
            </div>
            <div class="invalid-feedback">
                <span>{{$lang['the email must be entered correctly']}}</span>
            </div>
        </div>
        <div class="form-check ">
            <label  > {{$lang['enter the phone']}}  </label>
            <input type="number" v-model="record.phone" :class="['form-control' ,{'is-valid':validatePhone },{'is-invalid':record.phone&&!validatePhone}]"  >
            <div class="valid-feedback">
                {{$lang.correct}}
            </div>
            <div class="invalid-feedback">
                <span>{{$lang['the phone must be entered correctly']}}</span>
            </div>
        </div>
        <div class="form-check ">
            <label  > {{$lang['enter the password']}}  </label>
            <input type="password" v-model="record.password" :class="['form-control' ,{'is-valid':validatePassword },{'is-invalid':record.password&&!validatePassword}]"  >
            <div class="valid-feedback">
                {{$lang.correct}}
            </div>
            <div class="invalid-feedback">
                <span>{{$lang['the phone must be entered correctly']}}</span>
            </div>
        </div>
        <div class="form-check ">
            <label  > {{$lang['re-enter the password']}}  </label>
            <input type="password" v-model="passwordConfirmed" :class="['form-control' ,{'is-valid':record.password&&record.password == passwordConfirmed },{'is-invalid':record.password&&record.password != passwordConfirmed }]"  >
            <div class="valid-feedback" v-if="passwordConfirmed == record.password">
                {{$lang.correct}}
            </div>
            <div class="invalid-feedback" v-if="passwordConfirmed !== record.password">
                <span>{{$lang['Password does not match']}}</span>
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
            :maxImage='50'
            :maxSizeImage="10"
            ></vue-upload-multiple-image>
        </div>
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
            passwordConfirmed:'',
            record:{
                name:'',
                email:'',
                phone:'',
                password:'',
                password_confirm:'',
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
            let response = await this.Api('POST','users',this.record);
            this.loading=false;
            if(response.status==200)
                this.$swal(this.$lang["Added successfully"], "", "success")
        },
    },
    computed: {
         validateName(){
            return this.record.name.length > 3 > 0
        },
        validateEmail(){
            return this.record.email.length > 3 && this.record.email.includes('@')
        },
        validatePhone(){
            return this.record.phone.length > 3

        },
        validatePassword(){
            return this.record.password.length > 3
        },
        allValidation(){
            return this.validateName && this.validateEmail  && this.validatePhone && this.validatePassword  &&  !this.loading
        }

        
    },
    mounted(){
        this.$store.state.isLoading = false;
    },
    metaInfo() {
        return {
            title: `${this.$lang['app name']} - ${this.$lang['create new user']} `,
        }
    }

  }
</script>
