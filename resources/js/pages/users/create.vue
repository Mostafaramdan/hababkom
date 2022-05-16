<template>
    <div class="m-3" >
    <form @submit.prevent="onSubmit" class="border border-5 border-primary rounded ">
        <h3>
           أنشئ  مستخدم جديد
        </h3>
        <hr>
        <div class="form-check ">
            <label  > {{$lang['enter the name'] }}  </label>
            <input type="text" v-model="record.name" :class="['form-control' ,{'is-valid':validateName },{'is-invalid':record.name&&!validateName}]"  >
            <div class="valid-feedback">
                     صحيح
            </div>
            <div class="invalid-feedback">
                <span>يجب إدخال الاسم بشكل صحيح</span>
            </div>
        </div>
        <div class="form-check ">
            <label  > أدخل رقم التليفون  </label>
            <input type="number" v-model="record.phone" :class="['form-control' ,{'is-valid':record.phone.length>5 },{'is-invalid':record.phone&&record.phone.length<6}]"  >
            <div class="valid-feedback">
                     صحيح
            </div>
            <div class="invalid-feedback">
                <span>يجب إدخال رقم التليفون بشكل صحيح</span>
            </div>
        </div>
        <div class="form-check ">
            <label  > أدخل الايميل  </label>
            <input type="text" v-model="record.email" :class="['form-control' ,{'is-valid':record.email.length>7 && record.email.includes('@')},{'is-invalid':record.email&&(record.email.length<8 || !record.email.includes('@'))}]"  >
            <div class="valid-feedback">
                     صحيح
            </div>
            <div class="invalid-feedback">
                <span>يجب إدخال الايميل بشكل صحيح</span>
            </div>
        </div>
        <div class="form-check ">
            <label  > أدخل كلمة المرور  </label>
            <input type="password" v-model="record.password" :class="['form-control' ,{'is-valid':record.password.length>5 },{'is-invalid':record.password&&record.password.length<6}]"  >
            <div class="valid-feedback">
                     صحيح
            </div>
            <div class="invalid-feedback">
                <span>يجب إدخال كلمة المرور بشكل صحيح</span>
            </div>
        </div>

         <div class="form-check ">
            <label  > أدخل كلمة المرور  </label>
            <input type="password" v-model="record.password_confirm" :class="['form-control' ,{'is-valid':record.password&&record.password == record.password_confirm },{'is-invalid':record.password&&record.password != record.password_confirm }]"  >
            <div class="valid-feedback">
                صحيح
            </div>
            <div class="invalid-feedback">
                <span>كلمة المرور غير متطابق</span>
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
            dragText='قم بوضع الصور هنا'
            dropText='اترك الصور هنا'
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
                 حفظ
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
            if (confirm("هل تريد مسح الصورة")) {
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
             this.$swal("تمت الاضافة بنجاح", "", "success")

        },
    },
    computed: {
        validateName(){
            return this.record.name.length > 3
        },
        allValidation(){
            return this.validateName && this.record.email.length>7 &&
            this.record.phone.length>5 && this.record.email.length>7 &&
            this.record.email.includes('@')&&
            this.record.password && this.record.password == this.record.password_confirm
            !this.loading
        }
    },
    mounted(){
        this.$store.state.isLoading = false;
    },
        metaInfo() {
        return {
            title: `حبابكم -  إنشاء مستخدم جديد`,
        }
    }

  }
</script>
