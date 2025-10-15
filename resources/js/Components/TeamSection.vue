<template>
  <section class="relative py-20 overflow-hidden bg-slate-950 text-white">
    <div class="absolute inset-0 z-0">
      <canvas ref="canvas" class="w-full h-full opacity-40"></canvas>
    </div>

    <div class="container relative z-10 mx-auto px-6 text-center">
      <h2 class="text-4xl font-bold mb-6 text-[#0A66CC]">Nuestro equipo</h2>
      <p class="text-gray-300 mb-12 text-lg">
        Innovadores, desarrolladores y visionarios impulsando el futuro digital de tu marca.
      </p>

      <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-10">
        <Motion
          v-for="(member, index) in team"
          :key="index"
          :initial="{ opacity: 0, y: 40 }"
          :animate="{ opacity: 1, y: 0 }"
          :transition="{ delay: index * 0.2, duration: 0.8 }"
          class="bg-slate-900/70 rounded-2xl shadow-lg hover:shadow-[#0A66CC]/30 transition p-6"
        >
          <img
            :src="member.photo"
            alt="team member"
            class="w-28 h-28 rounded-full mx-auto border-2 border-[#0A66CC] mb-4 object-cover"
          />
          <h3 class="text-xl font-semibold">{{ member.name }}</h3>
          <p class="text-[#0A66CC] font-medium">{{ member.role }}</p>
          <p class="text-gray-400 mt-3 text-sm">{{ member.desc }}</p>
        </Motion>
      </div>
    </div>
  </section>
</template>

<script setup>
import { ref, onMounted } from 'vue'
import { Motion } from '@oku-ui/motion'

const team = ref([
  {
    name: 'Alexis Núñez',
    role: 'Full Stack Developer',
    desc: 'Diseña arquitecturas web seguras y optimizadas para alto rendimiento.',
    photo: 'https://i.imgur.com/hq6HqjZ.png'
  },
  {
    name: 'Lucía Ortega',
    role: 'UI/UX Designer',
    desc: 'Transforma ideas en experiencias visuales atractivas y funcionales.',
    photo: 'https://i.imgur.com/VtnmKpS.png'
  },
  {
    name: 'Carlos Vega',
    role: 'Cybersecurity Specialist',
    desc: 'Protege los sistemas y datos de los clientes con soluciones avanzadas.',
    photo: 'https://i.imgur.com/6Y7mHnR.png'
  }
])

const canvas = ref(null)

onMounted(() => {
  const ctx = canvas.value.getContext('2d')
  const w = (canvas.value.width = window.innerWidth)
  const h = (canvas.value.height = window.innerHeight)
  const particles = Array.from({ length: 80 }, () => ({
    x: Math.random() * w,
    y: Math.random() * h,
    r: Math.random() * 2,
    dx: (Math.random() - 0.5) * 0.5,
    dy: (Math.random() - 0.5) * 0.5
  }))

  function draw() {
    ctx.clearRect(0, 0, w, h)
    ctx.fillStyle = '#0A66CC'
    for (const p of particles) {
      ctx.beginPath()
      ctx.arc(p.x, p.y, p.r, 0, Math.PI * 2)
      ctx.fill()
      p.x += p.dx
      p.y += p.dy
      if (p.x < 0 || p.x > w) p.dx *= -1
      if (p.y < 0 || p.y > h) p.dy *= -1
    }
    requestAnimationFrame(draw)
  }

  draw()
})
</script>

<style scoped>
.container {
  max-width: 1200px;
}
</style>
