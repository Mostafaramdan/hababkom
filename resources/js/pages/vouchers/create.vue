<template>
    <div class="m-3" >
    <form  @submit.prevent="onSubmit" class="border border-5 border-primary rounded form">
        <h3>
          {{$lang['Create a new discount code'] }}
        </h3>
        <hr>
        <div class="form-check ">
            <label  >  {{$lang['Enter discount %']}} </label>
            <input type="number" min='1' max='99' v-model="record.discount" :class="['form-control' ,{'is-valid':record.discount&&validateDiscount },{'is-invalid':!validateDiscount}]"  >
            <div class="valid-feedback">
                {{$lang.correct}}
            </div>
            <div class="invalid-feedback">
                <span>{{$lang['The discount must be entered correctly']}}</span>
            </div>
        </div>
         <div class="form-check ">
            <label  > {{$lang['start at']}}  </label>
            <input type="date" v-model="record.start_at"  :class="['form-control' ,{'is-valid':validateStart_at },{'is-invalid':record.start_at&&!validateStart_at}]"  >
            <div class="valid-feedback">
                {{$lang.correct}}
            </div>
            <div class="invalid-feedback">
                <span>{{$lang['The start date must be entered correctly']}}</span>
            </div>
        </div>
        <div class="form-check ">
            <label  > {{$lang['end at']}}  </label>
            <input type="date" v-model="record.end_at" :min="min_end_at()" :class="['form-control' ,{'is-valid':validateEnd_at },{'is-invalid':record.end_at&&!validateEnd_at}]"  >
            <div class="valid-feedback">
                {{$lang.correct}}
            </div>
            <div class="invalid-feedback">
                <span>{{$lang['The end date must be entered correctly']}}</span>
            </div>
        </div>
        <div class="form-check ">
            <label  > {{$lang['Enter the number of times you use it']}}  </label>
            <input type="number" min='1' v-model="record.max_dudction" :class="['form-control' ,{'is-valid':validateMax_dudction },{'is-invalid':record.max_dudction&&!validateMax_dudction}]"  >
            <div class="valid-feedback">
                {{$lang.correct}}
            </div>
            <div class="invalid-feedback">
                <span>{{$lang['The number of times of use must be entered correctly']}} </span>
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
            <label  > {{$lang['Choose cities']}}   </label>
            <tree-select v-model="record.regions_ids"
                        :multiple="true"
                        :options="cities"
                        :placeholder="$lang['Choose cities']"
                        label='name_ar' >
            </tree-select>

        </div>
        <hr>
        <div class="form-check ">
            <label  > {{$lang['Choose hotels']}}   </label>
            <tree-select v-model="record.estates_ids"
                        :multiple="true"
                        :options="estates"
                        :placeholder="$lang['Choose hotels']"
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
                this.$swal(this.$lang["This code already exists, please enter a different code"], "", "error")
            }else{
                this.$swal(this.$lang["Added successfully"], "", "success");
                this.$router.push( {name:'vouchers',});
            }
            this.loading=false;

        },
        today(){
            let today = new Date();
            let dd = today.getDate();
            let mm = today.getMonth() + 1; //January is 0!
            let yyyy = today.getFullYear();

            if (dd < 10) {
            dd = '0' + dd;
            }

            if (mm < 10) {
            mm = '0' + mm;
            } 
            today = yyyy + '-' + mm + '-' + dd;
            return today
        },
        min_end_at(){
            if(this.record.start_at > this.today())
                return this.record.start_at 
            return this.today();
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
            return element.label = element['name_'+this.$lang.currentLang];
        });;

        this.estates = response2.data.records;
        this.estates.map((element) => {
            return element.label = element['name_'+this.$lang.currentLang];
        });;

        this.$store.state.isLoading = false;

    },
    metaInfo() {
        return {
            title: `${this.$lang['app name']} - ${this.$lang['Create a new discount code']} `,
        }
    }

  }
</script>
