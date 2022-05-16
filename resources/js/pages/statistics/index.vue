<template >
    <div class="row" >
        <div class="col-md-4 m-2">
            <label for="from" class="form-label"> {{$lang.from}} : </label>
            <input type="date" class="form-control" v-model="from" id="from">
        </div>
        <div class="col-md-4 m-2">
            <label for="to" class="form-label">  {{$lang.to}} : </label>
            <input type="date" class="form-control"  v-model="to" id="to">
        </div>
        <div class="col-md-4 m-2">
            <label for="to" class="form-label">  {{$lang['choose period']}}  : </label>
            <select class="form-control"   v-model="period">
                <option value="today">{{$lang['today']}}</option>
                <option value="yesterday">{{$lang['yesterday']}}</option>
                <option value="thisWeak">{{$lang['this weak']}}</option>
                <option value="thisMonth">{{$lang['this month']}}</option>
                <option value="lastMonth">{{$lang['last month']}}</option>
                <option value="all">{{ $lang.all }}</option>
                </select>
        </div>
        <hr>
        <div class="col-3  text-white bg-primary m-3" style="max-width: 18rem;">
            <div class="card-text m-2 text-wrap">{{$lang['unconfirmed orders']}}</div>
            <hr><div class="card-body">
                <h5 class="card-title">{{record.waiting}}</h5>
            </div>
        </div>

        <div class="col-3  text-white bg-secondary m-3" style="max-width: 18rem;">
            <div class="card-text m-2 text-wrap">{{$lang['confirmed orders']}}</div>
            <hr><div class="card-body">
                <h5 class="card-title">{{record.coming}}</h5>
            </div>
        </div>

        <div class="col-3  text-white bg-info m-3" style="max-width: 18rem;">
            <div class="card-text m-2 text-wrap">{{$lang['finished orders']}}</div>
            <hr><div class="card-body">
                <h5 class="card-title">{{record.finished}}</h5>
            </div>
        </div>

        <div class="col-3  text-white bg-warning  m-3" style="max-width: 18rem;">
            <div class="card-text m-2 text-wrap">{{$lang['cancelled orders']}}</div>
            <hr><div class="card-body">
                <h5 class="card-title">{{record.cancelled}}</h5>
            </div>
        </div>

        <div class="col-3  text-white bg-danger  m-3" style="max-width: 18rem;">
            <div class="card-text m-2 text-wrap">{{$lang['rejected orders']}}</div>
            <hr><div class="card-body">
                <h5 class="card-title">{{record.refused}}</h5>
            </div>
        </div>
        <hr>
        <div class="col-3  text-white bg-primary  m-3" style="max-width: 18rem;">
            <div class="card-text m-2 text-wrap">{{$lang['total orders']}} </div>
            <hr><div class="card-body">
                <h5 class="card-title">{{record.orders}}</h5>
            </div>
        </div>

        <div class="col-3  text-white bg-dark  m-3" style="max-width: 18rem;">
            <div class="card-text m-2 text-wrap"> {{$lang['total amount paid']}} </div>
            <hr><div class="card-body">
                <h5 class="card-title">{{record.total}}</h5>
            </div>
        </div>

        <div class="col-3  text-white bg-dark  m-3" style="max-width: 18rem;">
            <div class="card-text m-2 text-wrap">{{$lang['total benefits of the application']}} </div>
            <hr><div class="card-body">
                <h5 class="card-title">{{record.fees}}</h5>
            </div>
        </div>
        <hr>
        <div class="col-3  text-white bg-info m-3" style="max-width: 18rem;">
            <div class="card-text m-2 text-wrap">{{$lang['total number of estates']}} </div>
            <hr><div class="card-body">
                <h5 class="card-title">{{record.estates}}</h5>
            </div>
        </div>
        <div class="col-3  text-white bg-primary m-3" style="max-width: 18rem;">
            <div class="card-text m-2 text-wrap">{{$lang['total number of housing units']}} </div>
            <hr><div class="card-body">
                <h5 class="card-title">{{record.housing_units}}</h5>
            </div>
        </div>
        <div class="col-3  text-white bg-info m-3" style="max-width: 18rem;">
            <div class="card-text m-2 text-wrap">{{$lang['total number of users']}}  </div>
            <hr><div class="card-body">
                <h5 class="card-title">{{record.users}}</h5>
            </div>
        </div>
        <div class="col-3  text-white bg-primary m-3" style="max-width: 18rem;">
            <div class="card-text m-2 text-wrap">{{$lang['technical support messages']}} </div>
            <hr><div class="card-body">
                <h5 class="card-title">{{record.contacts}}</h5>
            </div>
        </div>
    </div>
</template>
<script>

export default {
    data(){
        return {
            record:{},
            from:'',
            period:'all',
            to:'',
            visible:false
        }
    },
    computed:{
        fromTo(){
            if(this.period != 'all'){
                this.from='';
                this.to='';
            }
        }
    },
    methods:{
        show() {
            this.visible = true
        },
        update(index){
             this.$router.push( {name:'statisticsUpdate', params: { id: this.record.id }});
        },
        async getRecords(){
            this.$store.state.isLoading = true;
            let response = await this.Api('GET','statistics',{from:this.from,to:this.to,period:this.period});
            this.record=response.data.record ;
            this.$store.state.isLoading = false;
        },
    },
    watch: {
        from:function(c){
            this.getRecords();
        },
        to:function(){
            this.getRecords();
        },
        period:function(v1){
            console.log(v1)
            if(v1 !== 'all'){
                this.from='';
                this.to='';
            }

            this.getRecords();
        },
    },
    async mounted(){
        await this.getRecords();
    },
    metaInfo() {
        return {
            title: `${this.$lang['app name']} -   ${this.$lang.statistics} `,
        }
    },
}
</script>
