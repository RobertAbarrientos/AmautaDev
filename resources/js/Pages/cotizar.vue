<script setup>
import AppLayout from '../Layouts/AppLayout.vue'

const plans = [
  {
    name: 'Básico',
    price: 'S/ 490',
    color: 'from-[#0A66CC] to-[#06B6D4]',
    features: [

      'Hosting gratis por 12 meses',
      'Diseño profesional',
      'Certificado SSL',
      'Diseño web adaptable a los dispositivos',
      '1 sección',
      'Galería con 7 imágenes y descripción',
      'Datos de contacto en el pie de página',
      'Mapa de ubicación de Google con botón de redirección a la navegación'
    ]
  },
  {
    name: 'Profesional',
    price: 'S/ 890',
    color: 'from-[#0A66CC] to-[#4F46E5]',
    features: [
      'Dominio Gratis .com',
      'Hosting gratis por 12 meses',
      'Diseño profesional',
      'Certificado SSL',
      'Diseño web adaptable a los dispositivos',
      '3 secciones',
      'Galería con 15 imágenes y descripción',
      'Datos de contacto en el pie de página',
      'Formulario de Contacto',
      'Integración con redes sociales'
    ]
  },
  {
    name: 'Premium',
    price: 'S/ 1490',
    color: 'from-[#06B6D4] to-[#0A66CC]',
    features: [
      'Dominio Gratis .com, .com.mx o .mx',
      'Hosting gratis por 12 meses',
      'Diseño corporativo',
      'Certificado SSL',
      'Redacción corporativa',
      'Diseño web adaptable a los dispositivos',
      '7 secciones',
      'Galería con 30 imágenes y descripción',
      'Datos de contacto en el pie de página',
      'SEO Especializado y Optimizado',
      'Formulario de Contacto',
      'Integración con redes sociales',
      'Integración con WhatsApp Business',
      'Mapa de ubicación de Google con botón de redirección a la navegación'
    ]
  }
]
</script>

<template>
  <AppLayout>
    <section class="relative py-28 bg-gradient-to-b from-[#F8FBFF] to-white overflow-hidden">
      <!-- Glow decorativo -->
      <div class="absolute -top-40 left-1/2 -translate-x-1/2 w-[900px] h-[900px] bg-[#0A66CC]/10 blur-[140px] rounded-full"></div>

      <div class="container mx-auto px-6 text-center relative z-10">
        <!-- Título -->
        <h1
          class="fade-on-scroll text-5xl md:text-6xl font-extrabold text-slate-900 tracking-tight mb-6
                 relative inline-block after:content-[''] after:block after:h-[4px] after:w-28 after:mx-auto after:mt-4
                 after:bg-gradient-to-r after:from-[#0A66CC] after:to-[#06B6D4] after:rounded-full">
          Planes de Páginas Web
        </h1>

        <p class="fade-on-scroll text-slate-600 text-lg md:text-xl mt-4 max-w-2xl mx-auto leading-relaxed">
          Desarrollamos tu sitio con la mejor calidad, optimización y seguridad.  
          Escoge el plan ideal para tu marca con <span class="text-[#0A66CC] font-semibold">AmautaDev</span>.
        </p>

        <!-- Grid de planes -->
        <div class="mt-16 grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-10 max-w-6xl mx-auto">
          <div
            v-for="(plan, i) in plans"
            :key="i"
            class="fade-on-scroll group bg-white/80 backdrop-blur-sm p-10 rounded-3xl shadow-md 
                   hover:shadow-2xl hover:-translate-y-3 border border-slate-100 hover:border-[#0A66CC]/40
                   transition-all duration-500 flex flex-col justify-between"
          >
            <div>
              <h3 class="text-3xl font-bold text-slate-800 mb-2">{{ plan.name }}</h3>
              <p class="text-4xl font-extrabold text-[#0A66CC] mb-6">{{ plan.price }}</p>
              <ul class="text-slate-600 text-left space-y-3 mb-6">
                <li v-for="(feature, j) in plan.features" :key="j" class="flex items-start space-x-2">
                  <span class="text-[#0A66CC]">•</span>
                  <span>{{ feature }}</span>
                </li>
              </ul>
            </div>

            <button
              class="mt-auto w-full py-3 text-white font-semibold text-lg rounded-full 
                     bg-gradient-to-r"
              :class="plan.color + ' hover:shadow-lg hover:shadow-[#0A66CC]/40 transition-all duration-300'"
            >
              Ver ejemplo
            </button>
          </div>
        </div>

        <!-- CTA final -->
        <div class="mt-20 text-center fade-on-scroll">
          <p class="text-slate-600 mb-4 text-lg">
            ¿Deseas un diseño personalizado o funcionalidades avanzadas?
          </p>
          <a
            href="mailto:contacto@amautadev.com"
            class="inline-block px-8 py-3 text-white text-lg font-semibold rounded-full 
                   bg-gradient-to-r from-[#0A66CC] to-[#06B6D4] hover:shadow-lg hover:shadow-[#0A66CC]/40 transition-all duration-300"
          >
            Contáctanos
          </a>
        </div>
      </div>

      <!-- Gradiente inferior -->
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
