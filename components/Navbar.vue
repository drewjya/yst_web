<script lang="ts" setup>
import { ref, onMounted } from 'vue';

// background effect buat avbar saat di scroll
const isActive = ref()
onMounted(() => {
  window.addEventListener('scroll', e => {
    if (window.scrollY >= 20 && window.scrollY < 620) {
      isActive.value = "white-nav"
    } else if(window.scrollY >= 620 ){
      isActive.value = "black-nav"
    } 
    else {
      isActive.value = ""
    }
  })
})
</script>

<template>
  <nav
    class="fixed top-0 z-50 w-full h-[80px] flex justify-between px-[70px] items-center transition-all ease-in-out duration-75"
    :class="isActive">
    <img src="/yst-family-logo.png" alt="" width="77">
    <ul class="flex gap-2 text-[#593630]">
      <a href="#home">
        <li
          class="cursor-pointer text-[#F1E7CE] px-5 py-2 text-[16px] font-normal rounded-md flex items-center justify-center hover:bg-[#F1E7CE] hover:text-[#593630]">
          Home
        </li>
      </a>
      <a href="#about">
        <li
          class="cursor-pointer text-[#F1E7CE] px-8 py-2 text-[15px] font-normal rounded-md flex items-center justify-center hover:bg-[#F1E7CE] hover:text-[#593630]">
          About
        </li>
      </a>
      <a href="#service">
        <li
          class="cursor-pointer text-[#F1E7CE] px-8 py-2 text-[15px] font-normal rounded-md flex items-center justify-center hover:bg-[#F1E7CE] hover:text-[#593630]">
          Service
        </li>
      </a>
      <a href="#cabang">
        <li
          class="cursor-pointer text-[#F1E7CE] px-8 py-2 text-[15px] font-normal rounded-md flex items-center justify-center hover:bg-[#F1E7CE] hover:text-[#593630]">
          Cabang
        </li>
      </a>
      <a href="#privacy">
        <li
          class="cursor-pointer text-[#F1E7CE] px-8 py-2 text-[15px] font-normal rounded-md flex items-center justify-center hover:bg-[#F1E7CE] hover:text-[#593630]">
          Privacy
        </li>
      </a>
    </ul>
  </nav>
</template> 

<style scoped>
.white-nav {
  background-color: rgba(255, 255, 255, 0.086);
  backdrop-filter: blur(20px);
  box-shadow: 0 5px 10px rgba(0,0,0, .25);
}
.black-nav {
  background-color: rgba(0,0,0, .5);
  backdrop-filter: blur(20px);
  box-shadow: 0 5px 10px rgba(0,0,0, .25);
}
</style>

<!-- 
<script lang="ts" setup>
import { onClickOutside } from "@vueuse/core";
import { watch } from "vue";
import { useRoute } from "vue-router";
const isActive = ref(false);
const navIcon = ref(null);

const route = useRoute();
watch(route, () => {
  console.log(route);
  isActive.value = false;
});

onMounted(() => {
  onClickOutside(navIcon, (e) => {
    if (e.target instanceof HTMLElement) {
      const el = e.target;
      if (el.classList.contains("item-nav")) {
        return;
      }
    }

    isActive.value = false;
  });
});
</script>

<template>
  <div class="h-16 w-screen bg-black text-white flex items-center px-10">
    <div class="title grow flex">
      <div>X</div>
      <div>Motion Sports IDN</div>
    </div>
    <div class="hidden lg:block">
      <div class="flex items-center space-x-4 justify-center">
        <NuxtLink to="/">
          <div
            class="item-nav hover:bg-slate-300 hover:text-black hover:rounded-lg p-1"
            :class="route.fullPath == '/' ? 'text-sky-300' : ''"
          >
            Home
          </div>
        </NuxtLink>
        <NuxtLink to="/products">
          <div
            class="item-nav hover:bg-slate-300 hover:text-black hover:rounded-lg p-1"
            :class="route.fullPath == '/products' ? 'text-sky-300' : ''"
          >
            Products
          </div>
        </NuxtLink>
        <NuxtLink to="/gallery">
          <div
            class="item-nav hover:bg-slate-300 hover:text-black hover:rounded-lg p-1"
            :class="route.fullPath == '/gallery' ? 'text-sky-300' : ''"
          >
            Gallery
          </div>
        </NuxtLink>
        <NuxtLink to="/about">
          <div
            class="item-nav hover:bg-slate-300 hover:text-black hover:rounded-lg p-1"
            :class="route.fullPath == '/about' ? 'text-sky-300' : ''"
          >
            About Us
          </div>
        </NuxtLink>
        <NuxtLink to="/contact">
          <div
            class="item-nav hover:bg-slate-300 hover:text-black hover:rounded-lg p-1"
            :class="route.fullPath == '/contact' ? 'text-sky-300' : ''"
          >
            Contact Us
          </div>
        </NuxtLink>
        <UInput
          placeholder="Search..."
          class="w-24 lg:w-40"
          color="sky"
          size="xs"
          variant="outline"
        >
          <template #trailing>
            <span class="text-gray-500 dark:text-gray-400 text-xs"
              ><svg
                xmlns="http://www.w3.org/2000/svg"
                fill="none"
                viewBox="0 0 24 24"
                stroke-width="1.5"
                stroke="currentColor"
                class="w-4 h-4"
              >
                <path
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  d="M21 21l-5.197-5.197m0 0A7.5 7.5 0 105.196 5.196a7.5 7.5 0 0010.607 10.607z"
                />
              </svg>
            </span>
          </template>
        </UInput>
      </div>
    </div>

    <div class="block lg:hidden">
      <button
        class="flex flex-col h-12 w-12 justify-center items-center group"
        @click="isActive = !isActive"
        ref="navIcon"
      >
        <div
          class="h-0.5 w-6 my-0.5 rounded-full bg-white transition ease transform duration-300"
          :class="isActive ? 'rotate-45 translate-y-1.5' : ''"
        ></div>
        <div
          class="h-0.5 w-6 my-0.5 rounded-full bg-white transition ease transform duration-300"
          :class="isActive ? 'opacity-0' : ''"
        ></div>
        <div
          class="h-0.5 w-6 my-0.5 rounded-full bg-white transition ease transform duration-300"
          :class="isActive ? '-rotate-45 -translate-y-1.5' : ''"
        ></div>
      </button>
      <div class="relative">
        <div
          v-if="isActive"
          class="absolute w-[calc(50vw)] bg-black top-2 -right-9 z-[100]"
        >
          <ul>
            <NuxtLink to="/">
              <li
                class="p-2 item-nav text-white hover:bg-slate-100 hover:text-black m-2"
              >
                Home
              </li></NuxtLink
            >
            <NuxtLink to="/products">
              <li
                class="p-2 item-nav text-white hover:bg-slate-100 hover:text-black m-2"
              >
                Products
              </li></NuxtLink
            >
            <NuxtLink to="/gallery">
              <li
                class="p-2 item-nav text-white hover:bg-slate-100 hover:text-black m-2"
              >
                Gallery
              </li></NuxtLink
            >
            <NuxtLink to="/about">
              <li
                class="p-2 item-nav text-white hover:bg-slate-100 hover:text-black m-2"
              >
                About Us
              </li></NuxtLink
            >
            <NuxtLink to="/contact">
              <li
                class="p-2 item-nav text-white hover:bg-slate-100 hover:text-black m-2"
              >
                Contact Us
              </li></NuxtLink
            >
            <li>Search</li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</template>

<style scoped>
.title {
  font-family: "Jokey One";

  font-size: 1.85rem;
  font-style: normal;
  font-weight: 400;
}

.item-nav {
  font-family: "DM Sans", sans-serif;
  font-size: 0.85rem;
  font-style: normal;
  font-weight: 400;
}
</style> -->
