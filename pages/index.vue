<template>
  <div>
    <!-- <Header/> -->
    <main>
      <section class="py-20 section-1" >
        <div class="container">
          <div class=" flex flex-col gap-4 md:grid md:grid-cols-2 md:gap-16">
            <div class="flow px-10">
              <h1 class="fs-primary-heading fw-bold">
                A Second Chance for Young Mothers, A Brighter Future for All
              </h1>
              <p class="inline-block md:w-[86%]">We believe every young mother deserves a second chance to achieve her dreams. Together, we can break the cycle of poverty 
                and build a future filled with opportunities.</p>
              <button class="inline-block w-full bg-orange-500 text-white font-semibold
               cursor-pointer rounded-full py-2 md:inline md:w-fit md:px-7 ">Donate</button>
            </div>
            
            <div class="relative flex justify-center">
              <div class="w-[19rem] h-[19rem] overflow-hidden rounded-full  md:w-[22rem] md:h-[22rem]">
                <img class="w-full h-full object-cover md:object-[50%_100%] md:max-w-full md:h-full md:rounded-full" src="~/assets/images/black_mother.jpg" alt="teenage mother with her child">
              </div>
              <div class="absolute w-[10rem] h-[10rem] overflow-hidden rounded-full -bottom-10 left-24 md:max-w-[20rem] md:max-h-[20rem] md:-top-5 md:left-[10%] ">
                <img class="w-full h-full object-cover md:object-center md:max-w-full md:w-[10rem] md:h-[10rem]" src="~/assets/images/child-1.jpg" alt="child">
              </div>
              
              <div class="absolute bg-white rounded-xl grid text-center px-2 py-3 text-sm left-[60%] md:top-[60%] md:-left-[5%]  md:px-4 md:py-5 md:text-base md:font-medium">
                <span class="text-base font-bold">30+</span>
                <span class="">Teen Mothers Recruited</span>
              </div>
            </div>

          </div>
        </div>
      </section>

      <section class=" max-w-5xl mx-auto">
        <article class="container">
            <div class="core-values ">
              <ul role="list" aria-label="Core Values" class="core-values-list">
                <li class="visions">
                  <h2 class="text-xl">Our Core Values</h2>
                  <p class="text-sm">At Hopewell Haven Centre, our core values guide everything we do. They reflect our commitment to making a positive impact in the lives 
                    of young mothers and their children.</p>
                </li>
                <li v-for="(value, index) in coreValues" :key="index" class="core-value-item auto-cols-fr">
                  <img :src="value.icon" alt="" class="mx-auto w-8 h-8 mb-2" />
                  <h3 class="text-base font-semibold">{{ value.value }}</h3>
                  <p class=" text-sm">{{ value.info }}</p>
                </li>
              </ul>
            </div>
        </article>
      </section>

      <section class="padding-block-large">
        <div class="container">
          <div class="even-columns">
            <div class="relative ">
              <div class="flex flex-col items-end">
                <img class="max-w-full w-40 h-40" src="~/assets/images/circle.svg" alt="blob">
                <img class="w-[20rem] h-[29rem] max-w-full object-cover object-[100%_90%] relative -top-24" src="~/assets/images/baby.jpg" alt="">

              </div>
              
              <img class="absolute max-w-full w-40 h-40 bottom-[38%] left-[20%] translate-1/2" src="~/assets/images/circle.svg" alt="blob">
              <div class="absolute top-0 bg-white p-3">
                <img class="max-w-full w-[18rem] h-[18rem] object-[100%_30%] object-cover" src="~/assets/images/teen-girl.jpg" alt="">
              </div>
            </div>
            <div class="flow">
              <h2 class="text-4xl font-semibold">You're the hope of others</h2>
              <p data-width="wide">
                HOPEWELL HAVEN CENTRE is a non-governmental organization improving lives across five counties in Kenya—Nakuru, Narok, Laikipia, Nyandarua, and Kericho. 
                We address interconnected social challenges through programs in education, health, human rights, disability inclusion, and poverty alleviation.
              </p>
              <div class="flex items-start gap-4">
                <div class="flex items-start gap-5">
                  <div class="">
                    <div class="flex items-center">
                      <img class="w-10 h-10" src="~/assets/images/mission.png" alt="target">
                      <h3 class="font-semibold">Our Missions</h3>

                    </div>
                    <p>To empower vulnerable populations by improving access to quality education, healthcare, and economic opportunities, while advocating for their rights and fostering community
                       partnerships to ensure holistic development.</p>
                  </div>
                </div>
                <div class="flex items-start gap-5">
                  <div class="">
                    <div class="flex items-center">
                      <img class="w-10 h-10" src="~/assets/images/vision.png" alt="target">
                      <h3 class="font-semibold">Our Vision</h3>
                    </div>
                    <p>A community where every person, regardless of their background, can achieve their full potential through equitable access to essential services and opportunities.</p>
                  </div>
                </div>
              </div>
              <button class="button">Support Us</button>
            </div>
          </div>
        </div>
      </section>

      
      <section class=" py-20 section-1">
        <div class=" max-w-5xl mx-auto px-4 py-2 ">
          <div>
            <h3 class="faq-head">Have Questions <span class="question-mark"></span></h3>
          </div>

          <div class="">
            <div v-for="(faq, index) in faqs" :key="index"
            class="">
              <article class="faq-el relative bg-[#ffffff] px-8 py-6  my-4">
                <div class="flex justify-between items-center relative">
                  <p class="inline">{{ faq.question }}</p>
                  <button @click="() => showAnswer(index)" class="text-2xl"><Plus/></button>
                
                </div>
                <div v-show="activeIndex === index" class="pr-4">
                  <p class="text-gray-600 mt-1 transition-all duration-300 ease-in">
                    {{ faq.answer }}
                  </p>
                </div>
              </article>
            </div>

          </div>
        </div>
      </section>
      
      <section class="cta | bg-accent-400 text-neutral-100 | py-10">
        <div class="max-w-5xl mx-auto flex items-center justify-between gap-4 md:gap-8 px-2 md:px-8">
          <div class="">
            <div class="flex items-start gap-4">
              <h4 class="text-2xl font-semibold ">Subscribe</h4>  
              <p class="in-block">Joins our journey of supporting teen mothers with care, opportunity, and hope. Get monthly updates, inspiring stories,
                 and ways to make a difference</p>
            </div>
          </div>


            <div class="">
              <form action="" class="flex items-center gap-1">
                <input type="email" placeholder="Enter your email" class="input">
                <button class="button-sec">Send</button>
              </form>
            </div>
          </div>
      </section>
    </main>

    <footer class="bg-neutral-900 text-neutral-100 | py-16">
      <div class="container">
        <div class="flex items-center flex-col gap-8">
          <div>
            <div class="w-8 h-8 rounded-full border border-black bg-white">
              <NuxtLink to="/">
                <img src="~/assets/images/logo.png" alt="logo" class="w-full h-full">
              </NuxtLink>
            </div>
          </div>

          <div class="border-b-[1px] border-[#696565] w-full pb-16">
            <nav class="footer-nav">
              <ul aria-label="Footer" role="list" class="flex items-center justify-center gap-4">
                <li>
                  <NuxtLink to="/">Home</NuxtLink>
                </li>
                <li>
                  <NuxtLink to="/about">About Us</NuxtLink>
                </li>
                <li>
                  <NuxtLink to="/about">Blogs and News</NuxtLink>
                </li>
                <li>
                  <NuxtLink to="/about">Contact us</NuxtLink>
                </li>
              </ul>
            </nav>
          </div>

          <div>
            <p>&copy; Copyright 2023. All Rights Reserved.</p>
          </div>
        </div>
      </div>

    </footer>
  </div>
</template>



<script setup lang="ts">
import compassion from '@/assets/images/compassion.png'
import empowerment from '@/assets/images/empowerment.png'
import integrity from '@/assets/images/integrity.png'
import inclusivity from '@/assets/images/inclusivity.png'
import sustainability from '@/assets/images/sustainability.png'
import collaboration from '@/assets/images/collaboration.png'
import respect from '@/assets/images/respect.png'


// import Icon
interface CoreValue {
  value: string
  info: string
  icon?: any
}

const coreValues = ref<CoreValue[]>([
  {value: "Compassion", info:"we care deeply about the well-being of every individual we serve.", icon:compassion },
  {value: "Empowerment", info: "we believe in enabling individuals to achieve their full potential.", icon: empowerment},
  {value: "Integrity", info: "transparency and honesty are at the heart of our operations.", icon: integrity},
  {value: "Inclusivity", info: "we embrace diversity and ensure everyone feels valued and included.", icon: inclusivity},
  {value: "Sustainability", info: "we are dedicated to creating lasting positive impacts.", icon: sustainability},
  {value: "Collaboration", info: "It is our belief that working together amplifies our impact.", icon: collaboration},
  {value: "Respect", info: "dignity and respect for all individuals is fundamental to our mission.", icon: respect},
])

const faqs = ref([
  {
    question: "When was Haven Hands initiated?",
    answer: `Haven Hands was founded in July of 2023 with the mission to support, empower, and uplift teen mothers through education, healthcare, and mentorship. 
    It was founded by Gladys Wamuyu, who has served as a project director at Child of Destiny for more than 20 years, changing and impacting lives.`
  },
  {
    question: "What services does Haven Hands provide to teen mothers?",
    answer: "We offer counseling, healthcare access, skill-building workshops, educational support, and safe housing for teen mothers in need."
  },
  {
    question: "How can I support or donate to Haven Hands?",
    answer: "You can support us by making a one-time or monthly donation, sponsoring a teen mother, or volunteering your time and skills. Visit our Donate page to learn more."
  },
  {
    question: "Is Haven Hands a registered non-profit organization?",
    answer: "Yes, Haven Hands is a fully registered non-profit organization. All contributions are used transparently to directly benefit the mothers we serve."
  },
  {
    question: "Where does Haven Hands operate?",
    answer: "As of now, Haven Hands does not have a physical office but you can reach us via our email."
  }
])

const activeIndex = ref<number | null>(null)


function showAnswer(index: number) {
  activeIndex.value = activeIndex.value === index ? null : index
}

</script>
<style lang="css">

.core-values {
  box-shadow: rgba(0, 0, 0, 0.1) 0px 4px 12px;
  padding: 2rem;
  border-radius: 0.5rem;
  background-color: var(--color-neutral-100);
  margin-bottom: 2rem;
  text-align: center;
}
.core-values-list {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
  /* grid-template-columns: repeat(3, 1fr); */
  gap: 2rem;
  list-style: none;
  align-items: center;

}

.visions {
  grid-column: 1 / span 2;
  font-size: 1.5rem;
  
}

.in-block {
  display: inline-block;
  width: min(80%, 400px);
}

.button-sec {
  display: inline-block;
  outline: 0;
  cursor: pointer;
  padding: 7px 16px;
  font-size: 14px;
  font-weight: 500;
  line-height: 1.42857; 
  vertical-align: middle;
  border: 1px solid;
  border-radius: 3px;
  color: #0366d6;
  background-color: #fafbfc;
  border-color: #1b1f2326;
  box-shadow: rgba(27, 31, 35, 0.04) 0px 1px 0px 0px, rgba(255, 255, 255, 0.25) 0px 1px 0px 0px inset;
  transition: 0.2s cubic-bezier(0.3, 0, 0.5, 1);
  transition-property: color, background-color, border-color;    
}
.button-sec:hover {
  color: #ffffff; 
  background-color: #0366d6;
  border-color: #1b1f2326;
  box-shadow: rgba(27, 31, 35, 0.1) 0px 1px 0px 0px, rgba(255, 255, 255, 0.03) 0px 1px 0px 0px inset;
  transition-duration: 0.1s;
}

input[type="email"]{
  background-color: rgb(250, 251, 252);
  border-color: rgb(223, 225, 230);
  color: rgb(9, 30, 66);
  cursor: text;
  border-radius: 3px;
  border-width: 2px;
  border-style: solid;
  box-sizing: border-box;
  font-size: 14px;
  transition: background-color 0.2s ease-in-out 0s, border-color 0.2s ease-in-out 0s;
  line-height: 1.42857; 
  padding: 5px 16px;
  height: 36px;        
}

input[type="email"]:hover{
  background-color: rgb(235, 236, 240);
}

input[type="email"]:focus{
  background-color: rgb(255, 255, 255);
  border-color: rgb(76, 154, 255);
}

.faq-el::before {
  content: "";
  position: absolute;
  width: 4px;
  height: 100%;
  background-color: rgb(30, 44, 121);
  left:0;
  top:0;
}

.faq-head {
  font-size: 2rem;
  color: rgb(30, 44, 121);
  font-weight: bold;
  position: relative;
  text-align: center;

}

.faq-head::after {
  content: "?";
  font-size: 4rem;
  position: absolute;
  transform: rotate(10deg);

}

.question-mark {
  font-size: 3rem;
  color: rgb(30, 44, 121);
  font-weight: bold;
  
}
                



</style>