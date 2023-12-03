<script lang="ts" setup>
  import Navbar from '@/components/Navbar.vue';
  import Home from '@/components/Home.vue';
  import About from '@/components/About.vue';
  import Services from '@/components/Services.vue';
  import Cabang from '@/components/Cabang.vue';
  import ViewApk from '@/components/ViewApk.vue';
  import Footer from '@/components/Footer.vue';
</script>

<template>
  <div class="bg-[#ECECEC] scroll-smooth font-sans">
    <Navbar />
    <Home />
    <About />
    <Services />
    <Cabang />
    <ViewApk />
    <Footer />
  </div>
</template>

<style scoped>
*{
  scroll-behavior: smooth;
}
</style>
