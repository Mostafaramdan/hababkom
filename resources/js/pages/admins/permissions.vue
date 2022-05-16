<template>
    <div class="m-3" >
    <form  @submit.prevent="onSubmit" class="border border-5 border-primary rounded form">
        <h3>
           {{$lang['Edit Permissions']}}
        </h3>
        <hr>
        <div class="form-check">
            <label class="form-check-label  " for="checkAll" >
                {{ $lang.checkAll}}
            </label>
            <input class="form-check-input " type="checkbox"  id="checkAll" v-model="checkAll" >
        </div>
        <hr>
        <div class="row">
            <div class="col mt-3" v-for="(permissionModule,moduleName,i) in permissions" :key="i">
                <div class="card " style="width: 18rem;">
                    <h5 class="card-header">
                        {{ $lang.lang == 'ar'? permissionModule.name_ar : moduleName}}
                    </h5>
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item position-relative" v-for="(val,key,index) in permissionModule.permissions" :key="index">
                            <div class="form-check">
                                <label class="form-check-label  position-absolute top-0 end-0" :for="moduleName+index+i" >
                                    {{ $lang.lang == 'ar'? lang_per[key] : key}}
                                </label>
                                <input class="form-check-input position-absolute top-0 start-50"
                                    type="checkbox" :id="moduleName+index+i"
                                    v-model="record.permissions[moduleName].permissions[key]"
                                    >
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <hr>
        <button type="submit" class="btn btn-primary btn-lg mt-2" :disabled="allValidation == false ">
            <span v-if="loading">
                <span class="spinner-border spinner-border-sm" role="status" aria-hidden="true"></span>
                {{$lang['loading...']}}
            </span>
            <span v-else>
                 {{$lang['save']}}
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
            checkAll:false,
            permissions:[],
            record:{
                id:'',
            },
            lang_per:{
                'create':this.$lang.create,
                'update':this.$lang.update,
                'view':this.$lang.view,
                'delete':this.$lang.delete,
            }
        }
    },
    methods: {
        async onSubmit() {
            this.loading=true;
            let response = await this.Api('PUT',`admins/${this.record.id}`,this.record);
            if(response.status== 200){
                this.$swal(`${this.$lang['updated successfully']}`, "", "success")
                this.loading=false;
            }
        },
    },
    computed: {

        allValidation(){
            return  !this.loading
        }
    },
    async created(){
        this.$store.state.isLoading = false;
        let response = await this.Api('GET',`admins/${this.$route.params.id}`);
        let response1 = await this.Api('GET',`permissions/${this.$route.params.id}`);
        this.record = response.data.record;
        delete this.record.password
        this.permissions = response1.data.permissions
    },
    metaInfo() {
        return {
            title: `${this.$lang['app name']} - ${this.$lang['Edit Permissions']} `,
        }
    },watch:{
        checkAll:function(newVal){
            for(let module in this.record.permissions){
                for(let permission in this.record.permissions[module].permissions){
                    this.record.permissions[module].permissions[permission]=newVal
                }
            }
        }
    } 
}
</script>
