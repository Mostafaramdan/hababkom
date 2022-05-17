<template>
        <div id="my-strictly-unique-vue-upload-multiple-image" style="display: flex; justify-content: center;">
            <vue-upload-multiple-image
                @upload-success="uploadImageSuccess"
                @before-remove="beforeRemove"
                @edit-image="editImage"
                :data-images="images"
                :idUpload="id"
                editUpload="myIdEdit"
                :dragText="dragText"
                :dropText="$lang['Leave the picture here']"
                :showPrimary='false'
                browseText=' '
                :maxImage='max'
                :maxSizeImage="10"
            >
            </vue-upload-multiple-image>
        </div>
</template>

<script>
export default {
    props: {
        dragText: { required: true },
        images: { required: true },
        max: { required: true },
        id: { required: true },

    },
    data() {
        return {
      };
    },
    methods:{
async uploadImageSuccess(formData, index, fileList) {
            let response=  await this.axios({
                method: 'POST',
                url: '/api/image',
                data:{image:fileList[index].path},
            })
            this.images.push(response.data.image)
        },
        async beforeRemove (index, done, fileList) {
            if (confirm(this.$lang['Are you sure to delete this item'])) {
                let response=  await this.axios({
                method: 'DELETE',
                url: `/api/image/${this.images[index].id}`,
            })
            this.images.splice(index,1)
            }
        },
        async editImage (formData, index, fileList) {

            let image = fileList[index];
            await setTimeout(function () {
                let response=     this.axios({
                    method: 'POST',
                    url: `/api/image/${fileList[index].id}`,
                    data:{image:fileList[index].path,_method:'PUT'},
                }).then((response)=>{
                    this.images[index]= response.data.image
                })
             }.bind(this), 1000)
        },
    },
    mounted(){
    },

}
</script>
