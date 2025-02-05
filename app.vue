<template>
  <div>
    <Header/>
    <main>
      <section class="padding-block-large section-1" >
        <div class="container">
          <div class="even-columns hero">
            <div class="flow">
              <h1 class="fs-primary-heading fw-bold">
                A Second Chance for Young Mothers, A Brighter Future for All
              </h1>
              <p class="">We believe every young mother deserves a second chance to achieve her dreams. Together, we can break the cycle of poverty and build a future filled with opportunities.</p>
              <button class="button">Donate</button>
            </div>
            
            <div class="hero-right-side">
              <div class="hero-img-container hero-img-container-2">
                <img class="hero-img" src="~/assets/images/teen-girl-2.jpg" alt="teenage mother with her child">
              </div>
              <div class="hero-img-container hero-img-container-1">
                <img class="hero-img" src="~/assets/images/child-1.jpg" alt="child">
              </div>
              
              <div class="hero-info">
                <span class="num">30+</span>
                <span class="text">Teen Mothers Recruited</span>
              </div>
            </div>

          </div>
        </div>
      </section>

      <section>
        <div class="container">
          <div class="even-columns">
            <div class="">
              <h2 class="fs-secondary-heading fw-bold">
                Hopewell Haven Hands Core Values
              </h2>
              <p>  Our core values define who we are and guide our mission to empower vulnerable populations through compassion, integrity, and collaboration. These principles ensure that every action we take fosters inclusivity, sustainability, and respect for all.
              </p>
            </div>

            <div class="">
              <ul class="numbered-items | flow" role="list">
                <li v-for="item in coreValues" :key="item.value">
                  {{ console.log(item.icon) }}
                  <div class="flow" style="--flow-spacer: 1em">
                    <h3 class="fs-600 fw-bold">{{item.value}}</h3>
                    <p>{{ item.info }}</p>
                    <img class="" :src="item.icon" :alt="item.value">
                  </div>
                </li>
              </ul>
            </div>

          </div>
        </div>
      </section>

      <section class="padding-block-large">
        <div class="container">
          <div class="even-columns">
            <div class="section-2-right-container">
              <div class="section-2-image-container-2"><img class="section-2-image-2" src="~/assets/images/teen-girl.jpg" alt=""></div>
              <div class="section-2-image-container-1"><img class="section-2-image-1" src="~/assets/images/baby.jpg" alt=""></div>
              <!-- <div><img src="~/assets/images/circle-3-quarters-quarter-flip.svg" alt=""></div> -->
            </div>
            <div class="flow">
              <h2 class="fs-secondary-heading fw-bold">You're the hope of others</h2>
              <p data-width="wide">
                HOPEWELL HAVEN CENTRE is a non-governmental organization improving lives across five counties in Kenya—Nakuru, Narok, Laikipia, Nyandarua, and Kericho. We address interconnected social challenges through programs in education, health, human rights, disability inclusion, and poverty alleviation.
              </p>
              <div class="">
                <div class="mision"></div>
                <div class="vision"></div>
              </div>
              <button class="button">Support Us</button>
            </div>
          </div>
        </div>
      </section>

      
      <section class="cards">
        <div class="container">
          <div class="">
            
          </div>
        </div>
      </section>
      

      <section class="cta | bg-accent-400 text-neutral-100 | py-10">
        <div class="container">
          <div class="even-columns vertical-align-center">
            <div>        
              <p class="fs-secondary-heading fw-bold">Your donation means a lot to them. Donate what you can.</p>
            </div>

            <div class="mdLg:ml-auto ">
              <button class="button | " data-type="inverted">Donate</button>
            </div>
          </div>
        </div>
      </section>
    </main>

    <footer class="bg-neutral-900 text-neutral-100 | padding-block-large">
      <div class="container">
        <div class="even-columns">
          <div>
            <NuxtLink to="/">
              <img src="~/assets/images/logo.png" alt="logo">
            </NuxtLink>

            <ul role="list" aria-label="social links">
              <li>
                <NuxtLink to="#" aria-label="facebook"></NuxtLink>
              </li>
              <li>
                <NuxtLink to="#" aria-label="youtube"></NuxtLink>
              </li>
              <li>
                <NuxtLink to="#" aria-label="instagram"></NuxtLink>
              </li>
              <li>
                <NuxtLink to="#" aria-label="linkedin"></NuxtLink>
              </li>
            </ul>
          </div>
          <div>
            <nav class="footer-nav">
              <ul aria-label="Footer" role="list">
                <li>
                  <NuxtLink to="#">Home</NuxtLink>
                </li>
                <li>
                  <NuxtLink to="#">About Us</NuxtLink>
                </li>
                <li>
                  <NuxtLink to="#">Blogs and News</NuxtLink>
                </li>
                <li>
                  <NuxtLink to="#">Contact us</NuxtLink>
                </li>
              </ul>
            </nav>
          </div>

          <div>
            <form action="">
              <input type="email">
              <button class="button">Submit</button>
            </form>
            <p>&copy; Copyright 2023. All Rights Reserved.</p>
          </div>
        </div>
      </div>

    </footer>
  </div>
</template>

<script setup lang="ts">
interface CoreValue {
  value: string
  info: string
  icon?: any
}

const coreValues = ref<CoreValue[]>([
  {value: "Compassion", info:"we care deeply about the well-being of every individual we serve.", icon: new URL("~/assets/images/empowerment.png")},
  {value: "Empowerment", info: "we believe in enabling individuals to achieve their full potential."},
  {value: "Integrity", info: "we uphold honesty and transparency in all our actions."},
  {value: "Inclusivity", info: "we strive to create equitable opportunities for all."},
  {value: "Sustainability", info: "we are dedicated to creating lasting positive impacts."},
  {value: "Collaboration", info: "we work together with communities and partners to achieve common goals."},
  {value: "Respect", info: "we treat all individuals with dignity and value their unique circumstances."}
])
</script>
<style lang="css">


</style>