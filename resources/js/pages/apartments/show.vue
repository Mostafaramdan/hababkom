<template >
    <div>
        <div class="row row-cols-1 row-cols-md-1 ">
            <div class="col">
                <div class="card " >
                    <div class="card-body">
                        <vue-easy-lightbox
                                :imgs="record.images"
                                scDisabled
                                moveDisabled
                                :visible="visible"
                                :index="0"
                                @hide='visible=false'
                        ></vue-easy-lightbox>
                        <hr>
                        <h5 class="card-title">{{$lang['image']}} :
                            <button class="btn btn-info w-25"  @click="visible=true">
                                <i class="fas fa-image" ></i>
                            </button>
                        </h5>
                        <hr>

                        <h5 class="card-title">{{$lang['rooms count']}} : {{ record.rooms }}</h5>
                        <h5 class="card-title">{{$lang['kitchens count']}} : {{ record.kitchens }}</h5>
                        <h5 class="card-title">{{$lang['toilets count']}} : {{ record.toilets }}</h5>
                        <h5 class="card-title">{{$lang['price']}} : {{ record.price }}</h5>
                        <h5 class="card-title">{{$lang['attachments']}}  :
                            <button class="btn btn-success m-1" v-for="(attachment , index) in record.attachs" :key="index"> {{ attachment.name_ar }} </button>
                        </h5>
                        <h5 class="card-title">{{$lang['address']}}  : <a :href="record.map_link" target="_blank"> {{$lang['google map']}}</a></h5>
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
            visible:false
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
             this.$router.push( {name:'housing_units' , query: { apartments_id: this.record.id }});
        },

    },
    async mounted(){
        this.$store.state.isLoading = false;
        let response = await this.Api('GET',`apartments/${this.$route.params.id}`);
        this.record = response.data.record;
    },
    metaInfo() {
        return {
            title: `${this.$lang['app name']} - ${this.$lang['admins']} `,
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
