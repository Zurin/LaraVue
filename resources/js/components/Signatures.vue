<template>
    <div>
        <div class="card-deck" style="margin-top:50px">
            <div class="col-12 col-sm-12 col-md-12 col-lg-4" v-for="signature in signatures" :key="signature.id">
                <div class="card mb-4">
                    <img class="card-img-top" :src="signature.avatar" :alt="signature.name">
                    <div class="card-body">
                        <h5 class="card-title">{{ signature.name }}</h5>
                        <p class="card-text">
                            {{ signature.body }}
                        </p>
                        <a href="#" class="btn btn-primary" id="comments" @click="report(signature.id)">Report</a>
                    </div>
                    <div class="card-footer">
                        <small class="text-muted">{{ signature.date }}</small>
                    </div>
                </div>
            </div>
        </div>
            <paginate
                    :page-count="pageCount"
                    :click-handler="fetch"
                    :prev-text="'<'"
                    :next-text="'>'"
                    :container-class="'pagination justify-content-center'"
                    :page-class="'page-item'"
                    :page-link-class="'page-link'"
                    :prev-class="'page-item'"
                    :prev-link-class="'page-link'"
                    :next-class="'page-item'"
                    :next-link-class="'page-link'"
                    :first-last-button=true
                    :first-button-text="'<<'"
                    :last-button-text="'>>'">
            </paginate>
    </div>
</template>

<script>
export default {
    data(){
        return{
            signatures: [],
            pageCount: 1,
            endpoint: 'api/signatures?page='
        };
    },

    created(){
        this.fetch();
    },

    methods: {
        fetch(page = 1){
            axios.get(this.endpoint + page)
                .then(({data}) => {
                    // console.log(data);
                    this.signatures = data.data;
                    this.pageCount = data.meta.last_page;
                    window.scrollTo(0,0);
                });
        },

        report(id){
            if (confirm('Yakin akan melaporkan tanda tangan ini?')) {
                axios.put('api/signatures/'+id+'/report')
                .then(response => this.removeSignature(id));
            }
        },

        removeSignature(id){
            this.signatures = _.remove(this.signatures, function (signature) {
                return signature.id !== id;
            });
        }
    }
}
</script>

