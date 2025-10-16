<script setup>
import { reactive } from 'vue'
import Swal from 'sweetalert2'
import AppLayout from '../Layouts/AppLayout.vue'

const plans = [
  { name: 'Básico', price: 'S/ 490' },
  { name: 'Profesional', price: 'S/ 890' },
  { name: 'Premium', price: 'S/ 1490' },
]

const WHATSAPP_NUMBER = '51966895939'


const form = reactive({
  name: '',
  email: '',
  plan: '',
  message: '',
})

const sendToWhatsApp = () => {
  if (!form.name || !form.email || !form.plan || !form.message) {
    Swal.fire({
      icon: 'warning',
      title: 'Campos incompletos',
      text: 'Por favor completa todos los campos.',
      confirmButtonColor: '#0A66CC',
      confirmButtonText: 'Entendido',
      background: '#F8FBFF',
      color: '#1E293B',
    })
    return
  }

  const text = ` 👋¡Hola AmautaDev! 
Soy *${form.name}* (${form.email}).
Estoy interesado en el plan *${form.plan}*.
Mensaje: ${form.message}`

  const encoded = encodeURIComponent(text)
  const url = `https://wa.me/${WHATSAPP_NUMBER}?text=${encoded}`

  Swal.fire({
    icon: 'success',
    title: 'Redirigiendo a WhatsApp...',
    text: 'Estamos abriendo tu chat con AmautaDev 💬',
    showConfirmButton: false,
    timer: 1800,
    timerProgressBar: true,
    background: '#F8FBFF',
    color: '#0A66CC',
  })

  setTimeout(() => window.open(url, '_blank'), 1500)
}
</script>

<template>
  <AppLayout>
    <section
      class="relative py-28 bg-gradient-to-b from-[#F8FBFF] to-white overflow-hidden"
    >
      <div
        class="absolute -top-40 left-1/2 -translate-x-1/2 w-[900px] h-[900px] bg-[#0A66CC]/10 blur-[140px] rounded-full"
      ></div>

      <div class="container mx-auto px-6 text-center relative z-10">
        <h1
          class="fade-on-scroll text-5xl md:text-6xl font-extrabold text-slate-900 tracking-tight mb-6
                 relative inline-block after:content-[''] after:block after:h-[4px] after:w-28 after:mx-auto after:mt-4
                 after:bg-gradient-to-r after:from-[#0A66CC] after:to-[#06B6D4] after:rounded-full"
        >
          Contáctanos
        </h1>

        <p
          class="fade-on-scroll text-slate-600 text-lg md:text-xl mt-4 max-w-2xl mx-auto leading-relaxed"
        >
          Completa el siguiente formulario y uno de nuestros asesores te
          atenderá por WhatsApp Business 📲.
        </p>

        <form
          @submit.prevent="sendToWhatsApp"
          class="max-w-2xl mx-auto mt-12 bg-white/80 backdrop-blur-sm p-10 rounded-3xl shadow-lg border border-slate-100"
        >
          <div class="grid md:grid-cols-2 gap-6">
            <div class="text-left">
              <label class="block text-slate-700 font-medium mb-2"
                >Nombre completo</label
              >
              <input
                v-model="form.name"
                type="text"
                placeholder="Tu nombre"
                class="w-full border border-slate-300 rounded-xl py-3 px-4 focus:ring-2 focus:ring-[#0A66CC] outline-none"
              />
            </div>

            <div class="text-left">
              <label class="block text-slate-700 font-medium mb-2">Email</label>
              <input
                v-model="form.email"
                type="email"
                placeholder="tucorreo@ejemplo.com"
                class="w-full border border-slate-300 rounded-xl py-3 px-4 focus:ring-2 focus:ring-[#0A66CC] outline-none"
              />
            </div>
          </div>

          <div class="mt-6 text-left">
            <label class="block text-slate-700 font-medium mb-2"
              >Selecciona un plan</label
            >
            <select
              v-model="form.plan"
              class="w-full border border-slate-300 rounded-xl py-3 px-4 bg-white focus:ring-2 focus:ring-[#0A66CC] outline-none"
            >
              <option disabled value="">Elige un plan...</option>
              <option v-for="(plan, i) in plans" :key="i" :value="plan.name">
                {{ plan.name }} - {{ plan.price }}
              </option>
            </select>
          </div>

          <div class="mt-6 text-left">
            <label class="block text-slate-700 font-medium mb-2"
              >Mensaje adicional</label
            >
            <textarea
              v-model="form.message"
              rows="4"
              placeholder="Cuéntanos brevemente qué necesitas..."
              class="w-full border border-slate-300 rounded-xl py-3 px-4 focus:ring-2 focus:ring-[#0A66CC] outline-none resize-none"
            ></textarea>
          </div>

          <button
            type="submit"
            class="mt-8 w-full flex items-center justify-center gap-3 py-4 text-white font-semibold text-lg rounded-full 
                     bg-gradient-to-r from-[#25D366] to-[#128C7E]
                     hover:shadow-lg hover:shadow-[#128C7E]/40 transition-all duration-300"
          >
            <svg xmlns="http://www.w3.org/2000/svg" width="28" height="28" viewBox="0 0 48 48">
              <path fill="#fff" d="M4.9,43.3l2.7-9.8C5.9,30.6,5,27.3,5,24C5,13.5,13.5,5,24,5c5.1,0,9.8,2,13.4,5.6	C41,14.2,43,18.9,43,24c0,10.5-8.5,19-19,19c0,0,0,0,0,0h0c-3.2,0-6.3-0.8-9.1-2.3L4.9,43.3z"></path>
              <path fill="#40c351" d="M35.2,12.8c-3-3-6.9-4.6-11.2-4.6C15.3,8.2,8.2,15.3,8.2,24c0,3,0.8,5.9,2.4,8.4L11,33l-1.6,5.8	l6-1.6l0.6,0.3c2.4,1.4,5.2,2.2,8,2.2h0c8.7,0,15.8-7.1,15.8-15.8C39.8,19.8,38.2,15.8,35.2,12.8z"></path>
              <path fill="#fff" fill-rule="evenodd" d="M19.3,16c-0.4-0.8-0.7-0.8-1.1-0.8c-0.3,0-0.6,0-0.9,0
              s-0.8,0.1-1.3,0.6c-0.4,0.5-1.7,1.6-1.7,4s1.7,4.6,1.9,4.9s3.3,5.3,8.1,7.2c4,1.6,4.8,1.3,5.7,1.2
              c0.9-0.1,2.8-1.1,3.2-2.3c0.4-1.1,0.4-2.1,0.3-2.3c-0.1-0.2-0.4-0.3-0.9-0.6s-2.8-1.4-3.2-1.5
              c-0.4-0.2-0.8-0.2-1.1,0.2c-0.3,0.5-1.2,1.5-1.5,1.9c-0.3,0.3-0.6,0.4-1,0.1c-0.5-0.2-2-0.7-3.8-2.4
              c-1.4-1.3-2.4-2.8-2.6-3.3c-0.3-0.5,0-0.7,0.2-1c0.2-0.2,0.5-0.6,0.7-0.8
              c0.2-0.3,0.3-0.5,0.5-0.8c0.2-0.3,0.1-0.6,0-0.8C20.6,19.3,19.7,17,19.3,16z"
              clip-rule="evenodd"></path>
            </svg>
            Enviar a WhatsApp
          </button>
        </form>
      </div>

      <div class="absolute inset-0 bg-gradient-to-b from-transparent to-[#EAF3FF]/70"></div>
    </section>
  </AppLayout>
</template>

<style scoped>
@keyframes fadeInUp {
  from {
    opacity: 0;
    transform: translateY(50px);
  }
  to {
    opacity: 1;
    transform: translateY(0);
  }
}
.fade-on-scroll {
  opacity: 0;
  transition: opacity 0.6s ease, transform 0.6s ease;
}
.animate-fadeInUp {
  animation: fadeInUp 0.8s ease-out forwards;
}
</style>
