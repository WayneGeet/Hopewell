<template>
    <div>
 
        <Header/>
        <main>
            <slot />
        </main>
    </div>
</template>

<script setup>
// No script logic needed for basic layout
</script>

<style scoped>
.navbar {
    display: flex;
    align-items: center;
    justify-content: space-between;
    background: #2c3e50;
    padding: 1rem 2rem;
    color: #fff;
}
.navbar-brand a {
    color: #fff;
    font-weight: bold;
    text-decoration: none;
    font-size: 1.5rem;
}
.navbar-menu {
    list-style: none;
    display: flex;
    gap: 1.5rem;
    margin: 0;
    padding: 0;
}
.navbar-menu a {
    color: #fff;
    text-decoration: none;
    font-size: 1rem;
}
.navbar-menu a:hover {
    text-decoration: underline;
}
/* main {
    padding: 2rem;
} */
</style>