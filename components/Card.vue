<template>
    <div class="card">
        <span>{{ icon }}</span>
        <h3>{{ title }}</h3>
        <p>{{ info }}</p>
    </div>
</template>

<script setup>
const props = defineProps(["title", "icon", "info"])
</script>

<style lang="css" scoped>

</style>