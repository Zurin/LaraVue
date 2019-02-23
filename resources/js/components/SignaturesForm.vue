<template>
    <div>
        <div class="alert alert-success" v-if="saved">
            <strong>Sukses!</strong> Tanda tangan anda berhasil disimpan.
        </div>
        <div class="well well-sm" id="signature-form">
            <form class="form-horizontal" method="post" @submit.prevent="onSubmit">
                <fieldset>
                    <legend class="text-center">Tanda tangani buku tamu</legend>
                    <div class="form-group">
                        <label for="name" class="col-md-3 control-label">Nama</label>
                        <div class="col-md-9" :class="{'has-error': errors.name}">
                            <input type="text" id="name" v-model="signature.name" placeholder="Nama Anda" class="form-control">
                            <span class="help-block text-danger" v-if="errors.name">{{ errors.name[0] }}</span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="name" class="col-md-3 control-label">E-mail Anda</label>
                        <div class="col-md-9" :class="{'has-error': errors.email}">
                            <input type="text" id="email" v-model="signature.email" placeholder="Email Anda" class="form-control">
                            <span class="help-block text-danger" v-if="errors.email">{{ errors.email[0] }}</span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="name" class="col-md-3 control-label">Pesan Anda</label>
                        <div class="col-md-9" :class="{'has-error': errors.body}">
                            <textarea class="form-control" id="body" v-model="signature.body" placeholder="Isi pesan Anda di sini...." rows="5"></textarea>
                            <span class="help-block text-danger" v-if="errors.body">{{ errors.body[0] }}</span>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-12 text-right">
                            <button type="submit" class="btn btn-primary btn-lg">Submit</button>
                        </div>
                    </div>
                </fieldset>
            </form>
        </div>
    </div>
</template>

<script>
export default {
    data() {
        return{
            errors: [],
            saved: false,
            signature: {
                name: null,
                email: null,
                body: null,
            }
        };
    },
    methods: {
        onSubmit(){
            this.saved = false;

            axios.post('api/signatures', this.signature)
                .then(({data}) => this.setSuccessMessage())
                .catch(({response}) => this.setErrors(response));
        },

        setErrors(response){
            this.errors = response.data.errors;
        },

        setSuccessMessage(){
            this.reset();
            this.saved = true;
        },

        reset(){
            this.errors = [];
            this.signature = {name:null, email:null, body:null};
        }
    }
}
</script>

