<script setup>
const DataCabnagDummy = [
  {
    name: 'Yang Shen Tang',
    city: 'Jakarta',
    address: 'Jl. Cideng Barat 8 No.20',
    path: 'https://www.google.com/maps/place/Menara+Imperium/@-6.2103737,106.8285043,16.85z/data=!4m6!3m5!1s0x2e69f40f139955e1:0x7eed054747d3a97f!8m2!3d-6.2102343!4d106.8314343!16s%2Fg%2F11cpgdv58d?entry=ttu'
  },
  {
    name: 'Yang Shen Tang Hublife',
    city: 'Bandung',
    address: 'Jl. Tanjung Duren Timur No.2',
    path: 'https://www.google.com/maps/place/Menara+Imperium/@-6.2103737,106.8285043,16.85z/data=!4m6!3m5!1s0x2e69f40f139955e1:0x7eed054747d3a97f!8m2!3d-6.2102343!4d106.8314343!16s%2Fg%2F11cpgdv58d?entry=ttu'
  },
  {
    name: 'Yang Shen Tang',
    city: 'Cirebon',
    address: 'Jl. Curita Selatan 12 No.9',
    path: 'https://www.google.com/maps/place/Menara+Imperium/@-6.2103737,106.8285043,16.85z/data=!4m6!3m5!1s0x2e69f40f139955e1:0x7eed054747d3a97f!8m2!3d-6.2102343!4d106.8314343!16s%2Fg%2F11cpgdv58d?entry=ttu'
  }
]
</script>

<template>
  <div id="cabang" class="relative w-full min-h-max mt-10 pt-10 flex flex-col gap-48">
    <!-- header -->
    <div>
      <h1 class="font-extrabold text-base text-[#462722] text-center">CABANG</h1>
      <p class="font-medium text-xl text-[#593630] text-center">YST Family</p>
    </div>

    <div class="relative bottom-0 w-full h-[255px] bg-[#593630]">
      <!-- list -->
      <ul class="relative z-10 -top-24 flex w-full h-max px-[70px] "
      :class=" DataCabnagDummy.length <= 3 ? 'justify-evenly' : ''">
        <li v-for="(item, index) in DataCabnagDummy" :key="index" 
          class="list-items snap-center p-[10px] w-[320px] min-h-[200px] bg-[#ececec] rounded-md rounded-tl-xl rounded-tr-xl flex justify-center">
            <!-- img -->
            <div 
              class="absolute -top-14 w-[200px] h-[125px] p-[7px] rounded-[10px] border-[1.5px] border-r-[#593630] border-b-[#593630] border-t-[#593630]/50 border-l-[#593630]/70">
              <img src="/img-cabang.png" alt="" class="w-full h-full ">
            </div>

            <div class="pt-[70px] text-center">
              <h1 class="font-bold text-[18px] text-[#593630]">{{ item.name }} <span class="font-medium text-[15px] opacity-90">( {{ item.city }} )</span></h1>
              <p class="font-normal text-[16px] text-[#593630]/70 ">{{ item.address }}</p>
              <a href="{{ item.path }}" target="_blank" class="w-max border-2 border-green-200">
                <button class="mb-3 mt-5 px-10 py-2 rounded-full bg-[#593630] font-normal text-[14px]">Click to google maps</button>
              </a>
            </div>
        </li>
      </ul>

      <!-- pernak pernik pendukung -->
      <div class="absolute top-0 w-full h-full overflow-hidden">
        <div class="absolute w-[280px] h-[280px] -bottom-32 -left-32 rounded-full border-[20px] border-[#FFE195]/5 grid place-items-center">
          <div class="w-[200px] h-[200px] rounded-full border-[40px] border-[#FFE195]/10 grid place-items-center">
            <div class="w-[70px] h-[70px] rounded-full bg-[#FFE195]/10 grid place-items-center"></div>
          </div>
        </div>
        <div class="absolute w-[280px] h-[280px] -bottom-32 -right-32 rounded-full border-[20px] border-[#FFE195]/5 grid place-items-center">
          <div class="w-[200px] h-[200px] rounded-full border-[40px] border-[#FFE195]/10 grid place-items-center">
            <div class="w-[70px] h-[70px] rounded-full bg-[#FFE195]/10 grid place-items-center"></div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<style scoped>
.list-items {
  box-shadow: 0 0 20px rgba(0, 0, 0, .25);
}
</style>