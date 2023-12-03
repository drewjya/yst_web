<script setup>
const dataDummy = [
  {
    option: 'Happy Tour',
    type: '',
    jasa: [
      'Reflexology 30',
      'Reflexology 90',
      'Reflexology 120',
      'Massage Traditional 30',
      'Massage Traditional 90',
      'Massage Traditional 120',
    ]
  },
  {
    option: 'VIP Room',
    type: '',
    jasa: [
      'VIP Room 30',
      'VIP Room 90',
    ]
  },
  {
    option: 'Reflexology',
    type: 'Normal',
    jasa: [
      'Reflexology 30',
      'Reflexology 90',
      'Reflexology 120',
    ]
  },
  {
    option: 'Reflexology',
    type: 'Signature',
    jasa: [
      'Reflexology 30',
      'Reflexology 90',
      'Reflexology 120',
    ]
  },
  {
    option: 'Massage',
    type: 'Normal',
    jasa: [
      'Reflexology 30',
      'Reflexology 90',
      'Reflexology 120',
    ]
  },
  {
    option: 'Massage',
    type: 'Signature',
    jasa: [
      'Reflexology 30',
      'Reflexology 90',
      'Reflexology 120',
    ]
  },
  {
    option: 'Massage',
    type: 'Aromateraphy Oil',
    jasa: [
      'Reflexology 30',
      'Reflexology 90',
      'Reflexology 120',
    ]
  },
  {
    option: 'Massage',
    type: 'Kesehatan',
    jasa: [
      'Reflexology 30',
      'Reflexology 90',
      'Reflexology 120',
    ]
  },
  {
    option: 'Massage',
    type: 'Pengobatan',
    jasa: [
      'Reflexology 30',
      'Reflexology 90',
      'Reflexology 120',
    ]
  },
  {
    option: 'Treatment',
    type: 'By Shine',
    jasa: [
      'Reflexology 30',
      'Reflexology 90',
      'Reflexology 120',
    ]
  },
];
</script>


<template>
  <div id="service" class="relative w-full min-h-screen mb-10">
    <div class="relative z-10 w-full h-[255px] bg-[#593630] flex flex-col items-center font-sans py-8 px-[70px]">
      <!-- pernak pernik pendukung -->
      <div class="absolute top-0 w-full h-full overflow-hidden">
        <div class="absolute w-[280px] h-[280px] -top-32 -left-32 rounded-full border-[20px] border-[#FFE195]/5 grid place-items-center">
          <div class="w-[200px] h-[200px] rounded-full border-[40px] border-[#FFE195]/10 grid place-items-center">
            <div class="w-[70px] h-[70px] rounded-full bg-[#FFE195]/10 grid place-items-center"></div>
          </div>
        </div>
        <div class="absolute w-[280px] h-[280px] -top-32 -right-32 rounded-full border-[20px] border-[#FFE195]/5 grid place-items-center">
          <div class="w-[200px] h-[200px] rounded-full border-[40px] border-[#FFE195]/10 grid place-items-center">
            <div class="w-[70px] h-[70px] rounded-full bg-[#FFE195]/10 grid place-items-center"></div>
          </div>
        </div>
      </div>
      <!-- header -->
      <h1 class="font-extrabold text-base text-[#FFE195] text-center">SERVICE</h1>
      <p class="font-medium text-xl text-[#F1E7CE] text-center">Katagori Jasa</p>

      <!-- list itme -->
      <div class="no-scrollbar absolute z-30 snap-mandatory snap-x top-24 flex w-[88vw] my-8 overflow-x-auto pb-4">
        <ul class="w-max flex gap-[22px] pb-4 px-2">
          <li v-for="(item, index) in dataDummy" :key="index"
            class="snap-center p-[10px] w-[355px] min-h-[400px] bg-[#ececec] rounded-md rounded-tl-xl rounded-tr-xl shadow-lg">
            <div class="relative w-full h-[170]">
              <img src="/img-service.png" alt="" class="w-full h-full">
              <div class="absolute top-0 rounded-[6px] w-full h-full bg-gradient-to-t from-black/90 to-black/0"></div>
              <h1 class="absolute left-2 -bottom-5 px-5 py-2 bg-[#ececec] shadow-lg rounded-md font-bold text-[18px] text-[#593630]">
                {{ item.option }} 
                <span 
                  class="font-medium text-[16px] opacity-50">
                  {{ item.type == '' ? '' : "( " + item.type + " )" }}
                </span>
              </h1>
            </div>
            <p class="px-3 font-normal text-[14px] text-[#593630]/70 pt-7">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque ut hendrerit arcu. Etiam placerat sagittis semper. Aenean quis sem nibh. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus</p>
            <div class="px-3 w-full my-3 flex justify-between gap-20">
              <div class="w-2/4 border-[0.5px] border-[#593630]/30"></div>
              <div class="w-2/4 border-[0.5px] border-[#593630]/30"></div>
            </div>
            <ul class="w-full px-7 mb-4 flex flex-col gap-1">
              <li 
              v-for="(isiService, serviceIndex) in item.jasa" 
              :key="serviceIndex"
              class="list-disc font-normal text-[14px] text-[#593630]/50">
                {{ isiService + ' min'}}
              </li>
            </ul>
          </li>
        </ul>
      </div>
    </div>
  </div>
</template>
  
  <style scoped>
  .no-scrollbar::-webkit-scrollbar {
    display: none;
  }
  
  .no-scrollbar {
    -ms-overflow-style: none;
    scrollbar-width: none;
  }

</style>
