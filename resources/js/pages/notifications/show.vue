<template>
    <div>
        <div class="row row-cols-1 row-cols-md-1 ">
            <div class="col">
                <div class="card ">
                    <div class="card-body">
                         <div class="row">
                            <div class="col-md-3 ">
                                <label><h5 >{{$lang['Arabic content'] }} : </h5></label>
                            </div>
                            <div class="col-md-3">
                                <b> {{record.content_ar}}</b>
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-md-3 ">
                                <label><h5 >{{$lang['Arabic content'] }} : </h5></label>
                            </div>
                            <div class="col-md-3">
                                <b> {{record.content_en}}</b>
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
    components: {},
    data() {
        return {
            record: {},
            slide: 0,
            sliding: null,
            visible: false
        };
    },
    methods: {
        onSlideStart(slide) {
            this.sliding = true;
        },
        onSlideEnd(slide) {
            this.sliding = false;
        }
    },
    async mounted() {
        this.$store.state.isLoading = false;
        let response = await this.Api(
            "GET",
            `notifications/${this.$route.params.id}`
        );
        this.record = response.data.record;
    },
    metaInfo() {
        return {
            title: `${this.$lang['app name']} -  ${this.record['content_'+this.$lang.currentLang]} `,
        };
    }
};
</script>

