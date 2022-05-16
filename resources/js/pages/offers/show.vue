<template >
    <div>

        <div class="row row-cols-1 row-cols-md-1 ">
            <div class="col">
                <div class="card " >
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-3 ">
                                <label><h5 >{{$lang.room }} : </h5></label>
                            </div>
                            <div class="col-md-3">
                                <b> <button class="btn btn-primary " @click="goToHousing(record.housing_units_id)"><i class="fas  fa-eye"></i></button></b>
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-md-3 ">
                                <label><h5 >{{$lang['Arabic name'] }} : </h5></label>
                            </div>
                            <div class="col-md-3">
                                <b>{{ record.name_ar }}</b>
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-md-3 ">
                                <label><h5 >{{$lang['English name'] }} : </h5></label>
                            </div>
                            <div class="col-md-3">
                                <b>{{ record.name_en }}</b>
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-md-3 ">
                                <label><h5 >{{$lang['Arabic description'] }} : </h5></label>
                            </div>
                            <div class="col-md-3">
                                <b>{{ record.description_ar }}</b>
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-md-3 ">
                                <label><h5 >{{$lang['English description'] }} : </h5></label>
                            </div>
                            <div class="col-md-3">
                                <b>{{ record.description_en }}</b>
                            </div>
                        </div>
                        <hr>
                         <div class="row">
                            <div class="col-md-3 ">
                                <label><h5 >{{$lang['discount'] }} : </h5></label>
                            </div>
                            <div class="col-md-3">
                                <b>{{ record.discount }}%</b>
                            </div>
                        </div>
                        <hr>
                         <div class="row">
                            <div class="col-md-3 ">
                                <label><h5 >{{$lang['start at'] }} : </h5></label>
                            </div>
                            <div class="col-md-3">
                                <b>{{ record.start_at }}</b>
                            </div>
                        </div>
                        <hr>
                         <div class="row">
                            <div class="col-md-3 ">
                                <label><h5 >{{$lang['end at'] }} : </h5></label>
                            </div>
                            <div class="col-md-3">
                                <b>{{ record.end_at }}</b>
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
        onSlideStart(slide) {
            this.sliding = true
        },
        onSlideEnd(slide) {
            this.sliding = false
        },
        goToHousing(id){
             this.$router.push( {name:'housing_unitsShow' , params: { id: id }});
        },

    },
    async mounted(){
        this.$store.state.isLoading = false;
        let response = await this.Api('GET',`offers/${this.$route.params.id}`);
        this.record = response.data.record;
    },
    metaInfo() {
        return {
            title: `${this.$lang['app name']} -  ${this.record['name_'+this.$lang.currentLang]} `,
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
