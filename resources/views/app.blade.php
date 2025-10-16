<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>AmautaDev - Desarrollo Web, Ciberseguridad y Soluciones Digitales</title>
    <meta name="description" content="AmautaDev crea soluciones digitales, desarrollo web, ciberseguridad y automatización empresarial en Latinoamérica.">
    <meta name="keywords" content="AmautaDev, desarrollo web, ciberseguridad, fintech, SaaS, ecommerce, Perú, Argentina, Chile, Ecuador">
    <meta name="author" content="AmautaDev">
    <meta name="theme-color" content="#0A66CC">

    <link rel="icon" type="image/x-icon" href="{{ asset('favicon.ico') }}?v={{ time() }}">

    <link rel="manifest" href="{{ asset('manifest.json') }}">

    <meta property="og:title" content="AmautaDev - Desarrollo Web y Ciberseguridad">
    <meta property="og:description" content="Impulsamos tu marca con tecnología segura, moderna y escalable.">
    <meta property="og:image" content="{{ asset('images/preview.png') }}">
    <meta property="og:type" content="website">
    <meta property="og:url" content="{{ url()->current() }}">

    <link rel="preconnect" href="https://fonts.bunny.net">
    <link href="https://fonts.bunny.net/css?family=inter:400,500,600,700,800&display=swap" rel="stylesheet">

    @vite(['resources/js/app.js', "resources/js/Pages/{$page['component']}.vue"])
    @inertiaHead
  </head>

  <body class="font-sans antialiased bg-white text-slate-800 selection:bg-[#0A66CC]/20">
    @inertia
  </body>
</html>
