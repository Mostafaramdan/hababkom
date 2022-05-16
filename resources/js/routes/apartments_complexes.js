import apartments_complexes from '@/pages/apartments_complexes/index';
import create from '@/pages/apartments_complexes/create';
import update from '@/pages/apartments_complexes/update';
import show from '@/pages/apartments_complexes/show';
const baseDash= '/dashboard';

export default [
    {
        path: `${baseDash}/apartments_complexes`,
        name: `apartments_complexes`,
        component: apartments_complexes,
    },
    {
        path: `${baseDash}/apartments_complexes/create`,
        name: `apartments_complexesCreate`,
        component: create,
    },
    {
        path: `${baseDash}/apartments_complexes/update/:id`,
        name: `apartments_complexesUpdate`,
        component: update,
    },
    {
        path: `${baseDash}/apartments_complexes/:id`,
        name: `apartments_complexesShow`,
        component: show,
    }
];
