<template>
    <div>
        <header class="primary-header" :class="{'bg-red-400 ': showNav}" >
            <div class="container">
                <div class="nav-wrapper">
                    <NuxtLink to="/">
                        <img class="logo" src="~/assets/images/logo.png" alt="hopewell">
                    </NuxtLink>

                    <button @click="showNav = !showNav" aria-controls="primary-navigation" :aria-expanded="showNav" class="mobile-nav-toggle" >
                        <img class="icon-hambuger" src="~/assets/images/icon-open.svg" alt="" aria-hidden="true">
                        <img class="icon-close" src="~/assets/images/icon-close.svg" alt="" aria-hidden="true">
                        <span class="visually-hidden">Menu</span>
                    </button>

                    <nav :class="{'opened':showNav}" class="primary-navigation" id="primary-navigation">
                        <ul aria-label="Primary" role="list" class="nav-list">
                            <li v-for="item in navItems" :key="item.name">
                                <NuxtLink :to="item.link">{{ item.name }}</NuxtLink>
                            </li>
                        </ul>
                    </nav>
                    <button class="button | display-sm-none display-md-inline-flex">Donate</button>
                </div>
            </div>
        </header>




    </div>
</template>

<script setup lang="ts">
interface NavItem {
    name: string
    link: string
}

const showNav = ref <boolean>(false);

watch(showNav, () => {
    console.log("show nav", showNav.value)
})
const navItems = ref <NavItem[]>([
    {name:"Home", link:"/"},
    {name: "About Us", link:"/about"},
    {name: "Blogs", link:"/blogs"},
    {name: "Contact", link:"/contact"},
    {name: "Events", link:"/events"}
]);

</script>

<style lang="css" scoped>

</style>