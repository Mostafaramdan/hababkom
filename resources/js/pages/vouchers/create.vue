<template>
    <div class="m-3" >
    <form  @submit.prevent="onSubmit" class="border border-5 border-primary rounded form">
        <h3>
           أنشئ  كود خصم جديد
        </h3>
        <hr>
        <div class="form-check ">
            <label  >  أدخل الخصم % </label>
            <input type="number" min='1' max='99' v-model="record.discount" :class="['form-control' ,{'is-valid':validateDiscount },{'is-invalid':!validateDiscount}]"  >
            <div class="valid-feedback">
                     صحيح
            </div>
            <div class="invalid-feedback">
                <span>يجب إدخال الخصم بشكل صحيح</span>
            </div>
        </div>
         <div class="form-check ">
            <label  > أدخل عدد تاريخ البداية  </label>
            <input type="date" v-model="record.start_at" :class="['form-control' ,{'is-valid':validateStart_at },{'is-invalid':!validateStart_at}]"  >
            <div class="valid-feedback">
                     صحيح
            </div>
            <div class="invalid-feedback">
                <span>يجب إدخال  تاريخ البداية بشكل صحيح</span>
            </div>
        </div>
        <div class="form-check ">
            <label  > أدخل عدد تاريخ النهاية  </label>
            <input type="date" v-model="record.end_at" :class="['form-control' ,{'is-valid':validateEnd_at },{'is-invalid':!validateEnd_at}]"  >
            <div class="valid-feedback">
                     صحيح
            </div>
            <div class="invalid-feedback">
                <span>يجب إدخال  تاريخ النهاية بشكل صحيح</span>
            </div>
        </div>
        <div class="form-check ">
            <label  > ادخال عدد مرات الاستخدام  </label>
            <input type="number" min='1' v-model="record.max_dudction" :class="['form-control' ,{'is-valid':validateMax_dudction },{'is-invalid':!validateMax_dudction}]"  >
            <div class="valid-feedback">
                     صحيح
            </div>
            <div class="invalid-feedback">
                <span>يجب إدخال عدد مرات الاستخدام بشكل صحيح</span>
            </div>
        </div>
        <div class="row">
            <div class="col-3">
                <button @click.prevent="randomString(8)" class="btn btn-primary form-control"  > <i class="fas fa-code"></i> </button>
            </div>
            <div class="col-6">
                    <input class="form-control" v-model="record.code">
            </div>
        </div>
        <hr>
        <div class="form-check ">
            <label  >   اختر المدن   </label>
            <tree-select v-model="record.regions_ids"
                        :multiple="true"
                        :options="cities"
                        placeholder='اختر المدن '
                        label='name_ar' >
            </tree-select>

        </div>
        <hr>
        <div class="form-check ">
            <label  >   اختر المدن   </label>
            <tree-select v-model="record.estates_ids"
                        :multiple="true"
                        :options="estates"
                        placeholder='اختر الفنادق '
                        label='name_ar' >
            </tree-select>
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
            estates : [],
            cities : [],
            selected_value:[],
            record:{
                estates_ids:[],
                regions_ids:[],
                discount:1,
                start_at:'',
                end_at:'',
                max_dudction:1,
                code:'',
            },
        }
    },
    methods: {
        removeRegion (removedOption){
            this.record.regions_ids.splice(this.record.regions_ids.indexOf(removedOption), 1);
        },
        selectRegion(selectedOption){
                this.record.regions_ids = this.record.regions_ids.filter( obj => obj.id != selectedOption.id);
        },
        removeEstate (removedOption){
            this.record.estates_ids.splice(this.record.estates_ids.indexOf(removedOption), 1);
        },
        selectEstate(selectedOption){
                this.record.estates_ids = this.record.estates_ids.filter( obj => obj.id != selectedOption.id);
        },
        async onSubmit() {
            this.loading=true;
            this.record.estates_ids= JSON.stringify( this.record.estates_ids);
            this.record.regions_ids= JSON.stringify( this.record.regions_ids);
            let response = await this.Api('POST','vouchers',this.record);
            if(response.data.status== 409){
                this.$swal("هذا الكود موجود مسبقاّ , برجاء إدخال كود مختلف  ", "", "error")
            }else{
                this.$swal(this.$lang["Added successfully"], "", "success");
                this.$router.push( {name:'vouchers',});
            }
            this.loading=false;

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
        validateMax_dudction(){
            return this.record.max_dudction
        },
        allValidation(){
            return this.validateDiscount && this.validateStart_at  && this.validateEnd_at && this.validateMax_dudction  &&  !this.loading
        }
    },
    async   mounted(){
        let response1 =await  this.Api('GET',`getAllRecords?model=regions`,{})
        let response2 =await  this.Api('GET',`getAllRecords?model=estates`,{})

        this.cities = response1.data.records;
        this.cities.map((element) => {
            return element.label = element.name_ar;
        });;

        this.estates = response2.data.records;
        this.estates.map((element) => {
            return element.label = element.name_ar;
        });;

        this.$store.state.isLoading = false;

    },
        metaInfo() {
        return {
            title: `حبابكم -  أنشئ  كود خصم جديدة `,
        }
    }

  }
</script>
