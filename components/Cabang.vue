<script setup lang="ts">
import type { CCabang } from "~/type/types";

const props = defineProps<{
  cabang: CCabang[];
}>();
</script>

<template>
  <div id="cabang" class="relative w-full mt-10 pt-10 flex flex-col gap-14">
    <!-- header -->
    <div>
      <h1 class="font-extrabold text-base text-[#462722] text-center">
        CABANG
      </h1>
      <p class="font-medium text-xl text-[#593630] text-center">YST Family</p>
    </div>

    <div class="relative bottom-0 w-full bg-[#593630]">
      <!-- list -->
      <!-- <ul class="relative z-10 -top-24 flex w-full px-[70px] overflow-auto">
        <li
          v-for="(item, index) in cabang"
          :key="index"
          class="list-items p-[10px] bg-[#ececec] rounded-md rounded-tl-xl rounded-tr-xl flex justify-center"
        >

          <img :src="item.picture" alt="" class="h-44" />

          <div class="pt-[70px] text-center">
            <h1 class="font-bold text-[18px] text-[#593630]">
              {{ item.nama }}
            </h1>
            <p class="font-normal text-[16px] text-[#593630]/70">
              {{ item.alamat }}
            </p>
          </div>
        </li>
      </ul> -->
      <div class="px-20 relative z-10">
        <div
          class="flex max-w-screen overflow-x-scroll relative z-10 gap-5 no-scrollbar"
        >
          <ul class="w-max flex gap-[22px] pb-4 px-2">
            <li
              v-for="(item, index) in cabang"
              :key="index"
              class="snap-center p-[10px] w-[355px] min-h-[400px] bg-[#ececec] rounded-md rounded-tl-xl rounded-tr-xl"
            >
              <div class="relative w-full h-[170]">
                <img
                  :src="item.picture"
                  alt=""
                  class="max-w-[12rem] h-full object-cover mx-auto"
                />

                <h1
                  class="absolute left-2 -bottom-5 px-5 py-2 bg-[#ececec] shadow-lg rounded-md font-bold text-[18px] text-[#593630]"
                >
                  {{ item.nama }} ({{ item.phoneNumber }})
                </h1>
              </div>
              <p class="px-3 font-normal text-[14px] text-[#593630]/70 pt-7">
                {{ item.alamat }}
              </p>

              <div
                class="px-3 w-full my-3 flex justify-between gap-20 text-[#593630]/70"
              >
                <div class="w-2/4 border-[0.5px] border-[#593630]/30">
                  Open: {{ item.openHour }}
                </div>
                <div class="w-2/4 border-[0.5px] border-[#593630]/30">
                  Close:{{ item.closeHour }}
                </div>
              </div>
            </li>
          </ul>
        </div>
      </div>

      <!-- pernak pernik pendukung -->
      <div class="absolute top-0 w-full h-full overflow-hidden">
        <div
          class="absolute w-[280px] h-[280px] -bottom-32 -left-32 rounded-full border-[20px] border-[#FFE195]/5 grid place-items-center"
        >
          <div
            class="w-[200px] h-[200px] rounded-full border-[40px] border-[#FFE195]/10 grid place-items-center"
          >
            <div
              class="w-[70px] h-[70px] rounded-full bg-[#FFE195]/10 grid place-items-center"
            ></div>
          </div>
        </div>
        <div
          class="absolute w-[280px] h-[280px] -bottom-32 -right-32 rounded-full border-[20px] border-[#FFE195]/5 grid place-items-center"
        >
          <div
            class="w-[200px] h-[200px] rounded-full border-[40px] border-[#FFE195]/10 grid place-items-center"
          >
            <div
              class="w-[70px] h-[70px] rounded-full bg-[#FFE195]/10 grid place-items-center"
            ></div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<style scoped>
.list-items {
  box-shadow: 0 0 20px rgba(0, 0, 0, 0.25);
}
.no-scrollbar::-webkit-scrollbar {
  display: none;
}

.no-scrollbar {
  -ms-overflow-style: none;
  scrollbar-width: none;
}
</style>
