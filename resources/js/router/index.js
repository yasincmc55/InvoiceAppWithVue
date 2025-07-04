import { createRouter, createWebHashHistory } from 'vue-router';

import invoiceIndex from '../components/invoices/index.vue';
import createInvoice from '../components/invoices/createInvoice.vue';
import notFound from '../components/NotFound.vue';

const routes = [
    {
        path: '/',
        component: invoiceIndex,
    },
    {
        path:'/create-invoice',
        component: createInvoice
    },
    {
        path: '/:pathMatch(.*)*',
        component: notFound,
    }
];

const router = createRouter({
    history: createWebHashHistory(),
    routes,
});

export default router;
