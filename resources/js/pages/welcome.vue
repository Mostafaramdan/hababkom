<template>
    <div class="m-3 "  >
        <form @submit.prevent="onSubmit" class="border border-5 border-primary rounded ">
            <div class="row ">
                <div class="col-md-3 col-sm-1"></div>
                <div class="col-md-6 col-sm-12">
                    <h3 class="text-center">
                        {{$lang.welcomInApplication}}
                    </h3>
                </div>
            </div>
        </form>
  </div>
</template>

<script>
  export default {

    data() {
        return {
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