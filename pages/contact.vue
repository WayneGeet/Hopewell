<template>
    <section class="h-screen">
        <div id="contact-form" class="contact-form">
            <h1 class="contact-form_title ">Contact Form</h1>
            <div class="separator"></div>

            <div v-if="isSending" class="loading">Sending...</div>

            <form class="form" @submit="onSubmit">
                <input required name="name" v-model='contact.name' placeholder="Name" type="text" autocomplete="off">
                <input required name="email" v-model="contact.email" placeholder="E-mail" type="email" autocomplete="off">
                <textarea name="message" v-model="contact.message" rows="4" placeholder="Message"></textarea>
                    <button class="button">Send</button>
            </form>
        </div>
    </section>
</template>

<script setup>

const contact = ref({
    name:"",
    email:"",
    message: "",
})
const isSending = ref(false)

function onSubmit() {
    console.log("submitting")
}
</script>

<style lang="css" scoped>


.contact-form {
	font-size: 16px;
	margin: auto;
	max-width: 600px;
	width: 100%;
}

.contact-form .separator {
	border-bottom: solid 1px #ccc;
	margin-bottom: 15px;
}

.contact-form .form {
	display: flex;
	flex-direction: column;
	font-size: 16px;
}

.contact-form_title {
	color: #333;
	text-align: left;
	font-size: 28px;
}

.contact-form input[type="email"],
.contact-form input[type="text"],
.contact-form textarea {
	border: solid 1px #e8e8e8;
	font-family: 'Roboto', sans-serif;
	padding: 10px 7px;
	margin-bottom: 15px;
	outline: none;
	font-size: 15px;
	border-radius: 3px;
}

.contact-form textarea {
	resize: none;
}

.contact-form .button {
	background: #da552f;
	border: solid 1px #da552f;
	color: white;
	cursor: pointer;
	padding: 10px 50px;
	text-align: center;
	text-transform: uppercase;
	font-size: 15px;
	border-radius: 3px;
}

.contact-form .button:hover {
	background: #ea532a;
	border: solid 1px #ea532a;
}

</style>