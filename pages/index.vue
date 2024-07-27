<script lang="ts" setup>
import About from "@/components/About.vue";
import Cabang from "@/components/Cabang.vue";
import Footer from "@/components/Footer.vue";
import Home from "@/components/Home.vue";
import Navbar from "@/components/Navbar.vue";
import Services from "@/components/Services.vue";
import ViewApk from "@/components/ViewApk.vue";
import type { Banner, CCabang, Service } from "~/type/types";

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

const banner = ref<Banner[]>([]);
const category = ref<Service[]>([]);
const loadCategory = async () => {
  const data = await fetch("https://api.ystfamily.com/api/category", {
    method: "get",
  });
  const val = await data.json();
  category.value = (val.data ?? []).map((e: any) => {
    return {
      nama: e.nama,
    };
  });
};
const loadPayload = async () => {
  const data = await fetch("https://api.ystfamily.com/api/banner", {
    method: "get",
  });
  const val = await data.json();

  banner.value = (val.data ?? []).map((e: any) => {
    return {
      picture: "https://api.ystfamily.com/img/" + e.picture,
    };
  });
  console.log(banner.value);
};

const cabang = ref<CCabang[]>([]);

const loadCabang = async () => {
  const data = await fetch("https://api.ystfamily.com/api/cabang", {
    method: "get",
  });
  const val = await data.json();
  cabang.value = (val.data ?? []).map((e: any) => {
    const cb: CCabang = {
      alamat: e.alamat,
      closeHour: e.closeHour,
      nama: e.nama,
      openHour: e.openHour,
      phoneNumber: e.phoneNumber,
      picture: "https://api.ystfamily.com/img/" + e.picture,
    }
    return cb;
  });
};
onMounted(() => {
  Promise.all([loadPayload(), loadCategory(), loadCabang()]);
});
</script>

<template>
  <div class="bg-[#ECECEC] scroll-smooth font-sans">
    <Navbar />
    <Home />
    <About :banner="banner" />
    <Services :banner="banner" :category="category" />
    <Cabang :cabang="cabang"/>
    <ViewApk />
    <PrivacyPolicy />
    <Footer />
  </div>
</template>

<style scoped>
* {
  scroll-behavior: smooth;
}
</style>
