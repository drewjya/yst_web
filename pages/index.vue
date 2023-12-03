<script lang="ts" setup>
import About from "@/components/About.vue";
import Cabang from "@/components/Cabang.vue";
import Footer from "@/components/Footer.vue";
import Home from "@/components/Home.vue";
import Navbar from "@/components/Navbar.vue";
import Services from "@/components/Services.vue";
import ViewApk from "@/components/ViewApk.vue";

useHead({
  title: "YST Family",
  link: [
    {
      rel: "icon",
      type: "image/png",
      href: "/yst-family-logo.png",
    },
  ],
});
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
* {
  scroll-behavior: smooth;
}
</style>
