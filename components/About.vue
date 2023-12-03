<script lang="en" setup></script>

<template>
    <div id="about" class="px-[70px] w-full h-screen flex flex-col items-center font-sans py-8 overflow-hidden">
        <!-- header -->
        <h1 class="font-extrabold text-base text-[#462722] text-center">TENTANG</h1>
        <p class="font-medium text-xl text-[#593630] text-center">YST Family</p>

        <!-- content -->
        <div class="relative z-10 w-full mt-7 flex justify-between">
            <!-- text -->
            <div class="px-3">
                <p class="font-normal text-[#593630]/90 text-base">
                    Sejak berdirinya pada tahun 1945, Family Reflexology telah menjadi pionir dalam membawa refleksologi ke
                    tingkat yang baru. Perjalanan kami dimulai dengan tekad untuk menciptakan ruang yang memeluk ketenangan
                    dan kebahagiaan. Dengan setiap tahun yang berlalu, kami terus memperkaya pengalaman pelanggan kami,
                    menjadi destinasi utama untuk pencarian kesejahteraan. <br><br>

                    Di Family Reflexology, kami memandang kesehatan dan kesejahteraan sebagai warisan berharga yang harus
                    dihargai setiap hari. Nilai-nilai inti kami mencakup kepedulian, kejujuran, inovasi, dan komitmen untuk
                    menciptakan lingkungan yang mendukung perkembangan pribadi dan kesejahteraan holistik. Kami percaya
                    bahwa setiap individu memiliki potensi untuk menemukan harmoni dalam diri mereka, dan itulah yang kami
                    dorong setiap harinya. <br><br>

                    Di balik keberhasilan Family Reflexology adalah tim manajemen yang berdedikasi dan berpengalaman.
                    Dipimpin oleh [Nama Pemimpin], seorang ahli dalam bidang refleksologi dan kesehatan holistik, tim kami
                    terdiri dari individu-individu yang berkomitmen untuk memberikan layanan berkualitas tinggi. Dengan
                    keberagaman latar belakang dan keahlian, kami bersatu untuk menciptakan pengalaman pelanggan yang tak
                    terlupakan. </p>
            </div>
            <div
                class="relative pr-5 pl-8 flex flex-col gap-3 items-center after:absolute after:-z-10 after:w-[200px] after:h-[300px] after:-top-10 after:-right-8 after:rounded-lg after:bg-[#462722]/20 before:absolute before:-z-10 before:w-[100px] before:h-[200px] before:-bottom-7 before:-left-3 before:rounded-lg before:bg-[#462722]/20">
                <div class="flex gap-[17px]">
                    <div class="image-about w-[150px] h-[150px] bg-red-400 rounded-md shadow-">
                        <img src="/img-about1.png" alt="" class="w-full h-full">
                    </div>
                    <div class="image-about w-[250px] h-[150px] bg-blue-400 rounded-md shadow-">
                        <img src="/img-about2.png" alt="" class="w-full h-full">
                    </div>
                </div>
                <div class="flex gap-[17px]">
                    <div class="image-about w-[250px] h-[150px] bg-blue-400 rounded-md shadow-">
                        <img src="/img-about3.png" alt="" class="w-full h-full">
                    </div>
                    <div class="image-about w-[150px] h-[150px] bg-red-400 rounded-md shadow-">
                        <img src="/img-about4.png" alt="" class="w-full h-full">
                    </div>
                </div>
                <div class="image-about w-full h-[150px] bg-green-400 rounded-md shadow-">
                    <img src="/img-about5.png" alt="" class="w-full h-full">
                </div>
            </div>
        </div>
    </div>
</template>

<style scoped>
.image-about {
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.5);
}
</style>