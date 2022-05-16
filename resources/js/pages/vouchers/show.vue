<template >
    <div>

        <div class="row row-cols-1 row-cols-md-1 ">
            <div class="col">
                <div class="card " >
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-3 ">
                                <label><h5 >{{$lang['code']}} : </h5></label>
                            </div>
                            <div class="col-md-6">
                                <b> {{record.code}}</b>
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-md-3 ">
                                <label><h5 >{{$lang['discount']}} : </h5></label>
                            </div>
                            <div class="col-md-6">
                                <b> %{{record.discount}}</b>
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-md-3 ">
                                <label><h5 >{{$lang['start at']}} : </h5></label>
                            </div>
                            <div class="col-md-6">
                                <b> {{record.start_at}}</b>
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-md-3 ">
                                <label><h5 >{{$lang['end at']}} : </h5></label>
                            </div>
                            <div class="col-md-6">
                                <b> {{record.end_at}}</b>
                            </div>
                        </div>
                        <hr>
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
        onSlideStart(slide) {
            this.sliding = true
        },
        onSlideEnd(slide) {
            this.sliding = false
        }

    },
    async mounted(){
        this.$store.state.isLoading = false;
        let response = await this.Api('GET',`vouchers/${this.$route.params.id}`);
        this.record = response.data.record;
    },
    metaInfo() {
        return {
            title: `${this.$lang['app name']} -   ${this.record.code} `,
        }
    }
}
</script>
<style scoped>
    .example-slide {
        align-items: center;
        background-color: #666;
        color: #999;
        display: flex;
        font-size: 1.5rem;
        justify-content: center;
        min-height: 10rem;
    }
</style>
