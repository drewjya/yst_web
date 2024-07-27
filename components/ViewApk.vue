<script setup>
const listFitur = [
  "Penyesuaian Pelayanan",
  "Jadwal Keluarga",
  "Feedback Interaktif",
  "Promo Khusus Keluarga",
  "Rekomendasi Kesehatan Holistik",
];
</script>

<template>
  <div class="w-full min-h-screen flex items-center justify-center gap-5">
    <div
      class="kotak-gambar w-[300px] h-[600px] border-[5px] border-black/70 scale-[.9] rounded-2xl overflow-hidden"
    >
      <img src="/app.jpeg" alt="" class="w-full h-full" />
    </div>

    <!-- text & btn -->
    <div class="max-w-[50vw] h-max p-5 rounded-lg kotak-content">
      <!-- header -->
      <h1 class="font-extrabold text-[14px] text-[#462722]">APPLICATION</h1>
      <p class="font-medium text-[18px] text-[#593630]">YST Family</p>

      <!-- desc -->
      <p class="pt-2 pb-3 font-normal text-[15px] text-[#593630]/60">
        Selamat datang di YST Family, di mana kesejahteraan dan kelegaan menemui
        harmoni. Aplikasi ini bukan hanya panduan refleksi keluarga, tetapi juga
        jendela eksklusif ke dunia kebahagiaan dan kesehatan bagi seluruh
        keluarga Anda. YST Family Companion dirancang untuk menjadi sahabat
        setia keluarga Anda dalam mencapai keseimbangan dan kesejahteraan.
        Nikmati sentuhan khusus refleksi untuk semua anggota keluarga, dari
        anak-anak hingga orang dewasa.
      </p>

      <!-- fitur -->
      <p class="font-medium text-[18px] text-[#593630]">Feature</p>
      <ul class="mt-1 flex flex-wrap gap-3 pt-2">
        <li
          v-for="(item, index) in listFitur"
          :key="index"
          class="text-[#593630]/70 font-normal text-[13px] px-5 py-2 rounded border-[1px] border-[#593630]/70"
        >
          <!-- {{'- '+ item }} -->
          {{ item }}
        </li>
      </ul>

      <!-- btn -->
      <div class="w-full h-max flex gap-5 mt-10">
        <a
          href="https://apps.apple.com/us/app/yst-family/id6498894913"
          target="_blank"
        >
          <div
            class="w-[150px] h-[45px] bg-black text-white rounded-lg flex items-center justify-center gap-3"
          >
            <img src="/appstore.png" alt="" width="20" />
            <div class="leading-none">
              <h1>App Store</h1>
            </div>
          </div>
        </a>
        <a
          href="https://play.google.com/store/apps/details?id=com.kodewizzard.ystfamily"
          target="_blank"
        >
          <div
            class="w-[150px] h-[45px] bg-black text-white rounded-lg flex items-center justify-center gap-3"
          >
            <img src="/playstore.png" alt="" width="20" />
            <div class="leading-none">
              <h1>Google Play</h1>
            </div>
          </div>
        </a>
      </div>
    </div>
  </div>
</template>

<style scoped>
.kotak-content,
.kotak-gambar {
  box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
}
</style>
