<template>
    <div>
        <div class="row row-cols-1 row-cols-md-1 ">
            <div class="col">
                <div class="card ">
                    <div class="card-body">
                            <div class="row">
                                <div class="col-md-3 ">
                                    <label><h5 >{{$lang.name }} : </h5></label>
                                </div>
                                <div class="col-md-3">
                                    <b>
                                        <router-link :to="{name: 'usersShow',params:{id:record.users_id}}">
                                            {{record.name}}
                                        </router-link>
                                    </b>
                                </div>
                            </div>
                            <hr>
                            <div class="row">
                                <div class="col-md-3 ">
                                    <label><h5 >{{$lang.message }} : </h5></label>
                                </div>
                                <div class="col-md-6">
                                    <b>
                                        {{record.message}}
                                    </b>
                                </div>
                            </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
export default {
    components: {},
    data() {
        return {
            record: {
                message:''
            },
            slide: 0,
            sliding: null,
            visible: false
        };
    },
    async mounted() {
        this.$store.state.isLoading = false;
        let response = await this.Api(
            "GET",
            `contacts/${this.$route.params.id}`
        );
        this.record = response.data.record;
    },
    metaInfo() {
        return {
                title: `${this.$lang['app name']} -  ${this.record.message} `,
        };
    }
};
</script>

