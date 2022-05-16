<template >
    <div>
        <div class="row row-cols-1 row-cols-md-1 ">
            <div class="col">
                <div class="card " >
                    <div class="card-body">
                        <button class="btn btn-info" @click="update()"><i class="fas fa-edit"></i></button>
                        <div class="row">
                            <div class="col-md-3 ">
                                <label><h5 >{{$lang['name']}} : </h5></label>
                            </div>
                            <div class="col-md-6">
                                <b> {{record.name}}</b>
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-md-3 ">
                                <label><h5 >{{$lang['email']}} : </h5></label>
                            </div>
                            <div class="col-md-6">
                                <b> {{record.email}}</b>
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-md-3 ">
                                <label><h5 >{{$lang['phone']}} : </h5></label>
                            </div>
                            <div class="col-md-6">
                                <b> {{record.phone}}</b>
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
    components:{
    },
    data(){
        return {
            record:{},
            slide: 0,
            sliding: null,
        }
    },
    methods:{
        update(){
             this.$router.push( {name:'adminsUpdate', params: { id: this.record.id }});
        },
        onSlideStart(slide) {
            this.sliding = true
        },
        onSlideEnd(slide) {
            this.sliding = false
        }

    },
    async mounted(){
        this.$store.state.isLoading = false;
        let response = await this.Api('GET',`admins/${this.$route.params.id}`);
        this.record = response.data.record;
    },
    metaInfo() {
        return {
            title: `${this.$lang['app name']} -  ${this.record.name} `,
        }
    }
}
</script>
