<template>
    <div class="m-3" >
    <form  @submit.prevent="onSubmit" class="border border-5 border-primary rounded form">
        <h3>
           {{$lang['update offer']}}
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
            <label  >  {{$lang['Enter discount %']}} </label>
            <input type="number" min='1' max='99' v-model="record.discount" :class="['form-control' ,{'is-valid':validateDiscount },{'is-invalid':!validateDiscount}]"  >
            <div class="valid-feedback">
                {{$lang.correct}}
            </div>
            <div class="invalid-feedback">
                <span>{{$lang['The discount must be entered correctly']}}</span>
            </div>
        </div>
         <div class="form-check ">
            <label  > {{$lang['The start date must be entered correctly']}}  </label>
            <input type="date" v-model="record.start_at" :class="['form-control' ,{'is-valid':validateStart_at },{'is-invalid':!validateStart_at}]"  >
            <div class="valid-feedback">
                {{$lang.correct}}
            </div>
            <div class="invalid-feedback">
                <span>{{$lang['The start date must be entered correctly']}}</span>
            </div>
        </div>
        <div class="form-check ">
            <label  > {{$lang['The end date must be entered correctly']}}  </label>
            <input type="date" v-model="record.end_at" :class="['form-control' ,{'is-valid':validateEnd_at },{'is-invalid':!validateEnd_at}]"  >
            <div class="valid-feedback">
                {{$lang.correct}}
            </div>
            <div class="invalid-feedback">
                <span>{{$lang['The start date must be entered correctly']}}</span>
            </div>
        </div>
        <hr>
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
            >
            </vue-upload-multiple-image>
        </div>
        <hr>
        <hr>
        <button type="submit" class="btn btn-primary btn-lg mt-2" :disabled="allValidation == false ">
            <span v-if="loading">
                <span class="spinner-border spinner-border-sm" role="status" aria-hidden="true"></span>
                {{ $lang["loading..."] }}
            </span>
            <span v-else>
                 {{ $lang.save }}
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
                start_at:'',
                end_at:'',
                name_ar:'',
                name_en:'',
                description_ar:'',
                description_en:'',
                housing_units_id: this.$route.query.housing_units_id
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
            this.record.images= JSON.stringify( this.images.map(a => a.id));
            let response = await this.Api('PUT',`offers/${this.record.id}`,this.record);

            this.loading=false;
            if(response.status==200)
             this.$swal(this.$lang["Added successfully"], "", "success")

        },
        randomString(length) {
            // $event.preventDefault;
            var result = '';
            let chars= '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
            for (var i = length; i > 0; --i) result += chars[Math.floor(Math.random() * chars.length)];
            this.record.code= result;
        }
    },
    computed: {
        validateDiscount(){
            return this.record.discount > 0
        },
        validateStart_at(){
            return this.record.start_at.length > 3
        },
        validateEnd_at(){
            return this.record.end_at.length > 3
        },
        validateName_ar(){
            return this.record.name_ar.length > 3
        },
        validateName_en(){
            return this.record.name_en.length > 3
        },
         validateDescription_ar(){
            return this.record.description_ar.length > 3
        },
        validateDescription_en(){
            return this.record.description_en.length > 3
        },
        allValidation(){
            return this.validateDiscount && this.validateStart_at  && this.validateEnd_at &&
            this.validateDescription_ar  && this.validateDescription_en  &&  !this.loading
        }
    },
    async mounted(){
        this.$store.state.isLoading = false;
        let response = await this.Api('GET',`offers/${this.$route.params.id}`);
        this.record = response.data.record;
        this.images = response.data.record.images;
    },
        metaInfo() {
        return {
            title: `${this.$lang['app name']} -  ${this.$lang['update offer']} `,
        }
    }

  }
</script>
