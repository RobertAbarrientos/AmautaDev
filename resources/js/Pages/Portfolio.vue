<script setup>
import AppLayout from '../Layouts/AppLayout.vue'

const projects = [
  {
    title: 'Facturación Electrónica SUNAT',
    category: 'Fintech / SaaS',
    image: '/images/sunat-logo-png_seeklogo-481077.png',
    description: 'Sistema integral de facturación electrónica con validación SUNAT, manejo de comprobantes y reportes tributarios automáticos.',
    link: '#'
  },
  {
    title: 'Plataforma E-Commerce Multi-Tienda',
    category: 'Retail / Comercio',
    image: '/images/best-ecommerce-websites-furniture-webshop.png',
    description: 'Desarrollamos un ecosistema e-commerce escalable con módulos de catálogo, carrito, pagos y control de inventario.',
    link: '#'
  },
  {
    title: 'App Bancaria Móvil',
    category: 'Banca / Seguridad',
    image: '/images/ce842d38-184c-43d9-90d0-0f2a5c9ecbd9.png',
    description: 'Aplicación móvil segura con login biométrico, token dinámico y monitoreo en tiempo real para cuentas bancarias.',
    link: '#'
  },
  {
    title: 'Dashboard Analítico Corporativo',
    category: 'Business Intelligence',
    image: '/images/86b9313e-cce9-44ce-b7f7-265ed24087f5.png',
    description: 'Dashboard de analítica avanzada con métricas financieras, gráficas dinámicas y reportes exportables en tiempo real.',
    link: '#'
  },
  {
    title: 'Integraciones API Empresariales',
    category: 'Automatización / Backend',
    image: '/images/api-gateway-2017.png',
    description: 'Automatizamos procesos y conectamos sistemas con APIs seguras (REST & GraphQL), optimizando la eficiencia del negocio.',
    link: '#'
  },
  {
    title: 'Portal Educativo Interactivo',
    category: 'Educación / LMS',
    image: '/images/New-additions.png',
    description: 'Plataforma LMS moderna con gestión de cursos, evaluaciones en línea y seguimiento académico avanzado.',
    link: '#'
  },
]
</script>

<template>
  <AppLayout>
    <section class="relative py-28 bg-gradient-to-b from-[#F8FBFF] to-white overflow-hidden">
      <!-- Glow de fondo -->
      <div
        class="absolute -top-40 left-1/2 -translate-x-1/2 w-[800px] h-[800px] bg-[#0A66CC]/10 blur-[130px] rounded-full"
      ></div>

      <div class="container mx-auto px-6 text-center relative z-10">
        <h1
          class="fade-on-scroll text-5xl md:text-6xl font-extrabold text-slate-900 tracking-tight mb-6
                 relative inline-block after:content-[''] after:block after:h-[4px] after:w-28 after:mx-auto after:mt-4
                 after:bg-gradient-to-r after:from-[#0A66CC] after:to-[#06B6D4] after:rounded-full"
        >
          Portafolio
        </h1>

        <p
          class="fade-on-scroll text-slate-600 text-lg md:text-xl mt-4 max-w-3xl mx-auto leading-relaxed"
        >
          Proyectos destacados desarrollados por
          <span class="text-[#0A66CC] font-semibold">AmautaDev</span>,
          combinando innovación, escalabilidad y experiencia de usuario.
        </p>

        <!-- 🔄 Tarjetas con efecto flip -->
        <div
          class="mt-20 grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-10 max-w-6xl mx-auto"
        >
          <div v-for="(project, i) in projects" :key="i" class="fade-on-scroll flip-container">
            <div class="flip-card">
              <!-- Cara frontal -->
              <div class="flip-front">
                <img
                  :src="project.image"
                  :alt="project.title"
                  class="project-img"
                />
                <div class="p-6 text-left">
                  <h3 class="text-2xl font-bold text-slate-800 mb-1">
                    {{ project.title }}
                  </h3>
                  <p class="text-sm text-[#0A66CC] font-medium mb-2">
                    {{ project.category }}
                  </p>
                  <p class="text-slate-600 leading-relaxed">
                    {{ project.description }}
                  </p>
                </div>
              </div>

              <!-- Cara trasera -->
              <div class="flip-back">
                <h3 class="text-2xl font-semibold mb-6">{{ project.title }}</h3>
                <a
                  :href="project.link"
                  target="_blank"
                  class="inline-block px-6 py-3 text-base font-semibold rounded-full bg-white text-[#0A66CC]
                         hover:scale-105 hover:shadow-lg transition-all duration-300"
                >
                  Ver proyecto →
                </a>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div
        class="absolute inset-0 bg-gradient-to-b from-transparent to-[#EAF3FF]/70"
      ></div>
    </section>
  </AppLayout>
</template>

<style scoped>
/* === Animaciones originales === */
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

/* === 💫 Efecto 3D Flip === */
.flip-container {
  perspective: 1000px;
}
.flip-card {
  position: relative;
  width: 100%;
  height: 500px;
  transform-style: preserve-3d;
  transition: transform 0.8s ease;
  border-radius: 1.5rem;
  box-shadow: 0 10px 25px rgba(0, 0, 0, 0.08);
  background: linear-gradient(180deg, #ffffff 0%, #f9fbff 100%);
  border: 1px solid rgba(10, 102, 204, 0.08);
  overflow: hidden;
}
.flip-container:hover .flip-card {
  transform: rotateY(180deg);
}

/* --- Frente --- */
.flip-front,
.flip-back {
  position: absolute;
  width: 100%;
  height: 100%;
  backface-visibility: hidden;
  border-radius: 1.5rem;
  overflow: hidden;
}

.project-img {
  height: 220px;
  width: 100%;
  object-fit: contain;
  background: #f8fbff;
  border-bottom: 1px solid rgba(10, 102, 204, 0.05);
  transition: transform 0.7s ease;
}
.flip-container:hover .project-img {
  transform: scale(1.05);
}

/* --- Reverso --- */
.flip-back {
  background: linear-gradient(145deg, #0A66CC, #4F46E5);
  box-shadow: inset 0 0 40px rgba(255, 255, 255, 0.1);
  color: white;
  transform: rotateY(180deg);
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  text-align: center;
}

/* Botón más definido */
.flip-back a {
  background: white;
  color: #0A66CC;
  box-shadow: 0 0 20px rgba(255, 255, 255, 0.3);
  transition: transform 0.3s ease, box-shadow 0.3s ease;
}
.flip-back a:hover {
  transform: scale(1.1);
  box-shadow: 0 0 35px rgba(255, 255, 255, 0.6);
}

/* 🧊 Bordes y suavidad */
.flip-container {
  perspective: 1200px;
}
.flip-card,
.flip-front,
.flip-back {
  border-radius: 20px;
}
</style>
