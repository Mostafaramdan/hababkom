<template>
    <div class="m-3 "  >
    <form @submit.prevent="onSubmit" class="border border-5 border-primary rounded ">
        <div class="row login">
            <div class="col-md-3 col-sm-1"></div>
            <div class="col-md-6 col-sm-12">
                <h3 class="text-center">
                    {{$lang.login}}
                    </h3>
                <hr>

                <div class="form-check m-4">
                    <label  > {{$lang['Enter Email Or Phone']}}</label>
                    <input type="text" v-model="account.username" :class="['form-control' ,{'is-valid':validationUsername && !inValidUsername},{'is-invalid':account.username&&(!validationUsername || inValidUsername)}]"  >
                    <div class="valid-feedback">
                            {{$lang.correct}}
                    </div>
                    <div class="invalid-feedback">
                        <span v-if="inValidUsername">{{$lang['This email Or phone doesnt exists']}}</span>
                        <span v-else>{{$lang['Email Or Phone must be entered correctly']}}</span>
                    </div>
                </div>
                <div class="form-check m-4">
                    <label  >{{$lang['enter the password']}}</label>
                    <input type="password" v-model="account.password" :class="['form-control' ,{'is-valid':validationPassword && !inValidPassword},{'is-invalid':account.password&&(!validationPassword || inValidPassword)}]"  >
                    <div class="valid-feedback">
                        {{$lang['password is correct']}}
                    </div>
                    <div class="invalid-feedback">
                        <span v-if="inValidPassword">{{$lang['password is incorrect']}}</span>
                        <span v-else>{{$lang['password must be entered correctly']}}</span>
                    </div>
                </div>
                <button type="submit" class=" btn btn-primary btn-lg btn-block" :disabled="allValidation == false ">
                    <span v-if="loading">
                        <span class="spinner-border spinner-border-sm" role="status" aria-hidden="true"></span>
                        {{ $lang["loading..."] }}
                    </span>
                    <span v-else>
                        {{$lang['login']}}
                    </span>
                </button>
            </div>
        </div>
    </form>
  </div>
</template>

<script>
import { mapActions, mapGetters  } from 'vuex'

  export default {

    data() {
        return {
            inValidUsername:false,
            inValidPassword:false,
            account:{
                username: '',
                password: '',
                type : 'dashboard'
            },
            loading: false,
        }
    },
    methods: {
        ...mapActions([
            'updateUserAction'
        ]),
        async onSubmit() {
            this.loading=true;
            let response  =await this.Api('POST','login',this.account)
            if(response.data.status == 200){
                this.updateUserAction(response.data.account)
                this.$router.push({ name: "statistics"})
                this.inValidPassword=false;
                this.inValidUsername=false;
            }
            if(response.data.status == 232){
                this.inValidUsername=true;
                this.loading=false;
            }
            if(response.data.status == 233){
                this.inValidPassword=true;
                this.inValidUsername=false;
                this.loading=false;
            }
        }
    },
    computed: {
        ...mapGetters([
            'getUser'
        ]),
        validationUsername() {
            let result = false
            if(isNaN(this.account.username)){
                if(  this.account.username.length > 12 &&  this.account.username.length < 30
                && this.account.username.includes('@')
                )
                    result =  true
            }else {
                if(  this.account.username.length == 11)
                    result =  true
            }
            return result;
        },
        validationPassword() {
            return this.account.password.length > 5 &&  this.account.password.length < 30
        },
        allValidation(){
            return this.validationUsername && this.validationPassword && !this.loading
        }
        ,gettypeof(){
            return isNaN(this.account.username)
        }
    },
    mounted(){
        this.$store.state.isLoading = false;
    },
        metaInfo() {
        return {
                title: `${this.$lang['app name']} -  ${this.$lang.login} `,
        }
    }

}
</script>
<style scoped>
    @media only screen and (min-width: 768px) {
        form {
            padding: 40px;
        }
    }
    form {
        padding: 40px;
        background-color: #fff;
    }


</style>
