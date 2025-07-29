<script setup>
import { theme } from "ant-design-vue";

const customTheme = {
  token: {
    colorPrimary: "#b89169", // Your primary color
    borderRadius: 8, // Customize border radius
  },
  algorithm: theme.defaultAlgorithm, // Default light theme
};
</script>

<template>
  <a-config-provider :theme="customTheme">
    <NuxtLayout>
      <NuxtPage />
    </NuxtLayout>
  </a-config-provider>
</template>
