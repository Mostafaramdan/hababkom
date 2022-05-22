<template>
    <div class="m-3" >
   
  </div>
</template>

<script>

  export default {
    components: {
    },
    data() {
        return {
        }
    },
    methods: {
    },
    computed: {
    },
    mounted(){
        this.$store.state.isLoading = false;
    },
    metaInfo() {
        return {
            title: `حبابكم -  أنشئ  عرض جديد `,
        }
    }

  }
</script>
