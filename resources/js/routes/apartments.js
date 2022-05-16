import apartments from '@/pages/apartments/index';
import create from '@/pages/apartments/create';
import update from '@/pages/apartments/update';
import show from '@/pages/apartments/show';
const baseDash= '/dashboard';

export default [
    {
        path: `${baseDash}/apartments`,
        name: `apartments`,
        component: apartments,
    },
    {
        path: `${baseDash}/apartments/create`,
        name: `apartmentsCreate`,
        component: create,
    },
    {
        path: `${baseDash}/apartments/update/:id`,
        name: `apartmentsUpdate`,
        component: update,
    },
    {
        path: `${baseDash}/apartments/:id`,
        name: `apartmentsShow`,
        component: show,
    }
];
