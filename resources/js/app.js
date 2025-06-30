import './bootstrap';
import { createApp } from 'vue';

import app from './components/app.vue' //main component imported

import router from './router/index.js' //routes imported

createApp(app).use(router).mount("#app")
