<script lang="ts" setup></script>

<template>
    <div id="home" class="relative flex items-center justify-center w-full h-screen bg-black">
        <img src="/woman-relaxing-spa1.png" alt="" class="absolute top-0 w-full h-full">
        <div class="absolute px-2 py-2 flex flex-col items-center   ">
            <h1 class="leading-snug font-bold text-5xl text-[#F1E7CE] text-center">Your Journey to Relaxation Starts <br>
                with
                <span class="text-[#FFE195]">YST Family</span>
            </h1>
            <p class=" pt-5 font-normal text-lg text-center text-[#F1E7CE70]">Dilayani oleh terapis berpengalaman dan
                berkomitmen, serta kombinasi <br> teknik tradisional dan inovatif untuk pengalaman maksimal.</p>
            <a href="#about">
                <button
                    class="mt-10 font-medium text-base text-[#f1e7ce] w-[188px] h-[50px] flex items-center justify-center border-[1px] border-[#f1e7ce] rounded-full transition-all hover:bg-[#f1e7ce] hover:text-[#593630]">Explore
                    More</button>
            </a>
        </div>
    </div>
</template>

<style scoped>
#home>div::after {
    position: absolute;
    content: '';
    top: -10px;
    left: -25px;
    border-radius: 100px;
    width: 100px;
    height: 100px;
    border-top: 3px solid #FFE195;
    border-left: 3px solid #FFE195;
    transform: rotate(-20deg);
}
</style>