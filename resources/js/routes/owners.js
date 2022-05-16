import owners from '@/pages/owners/index';
import create from '@/pages/owners/create';
import update from '@/pages/owners/update';
import show from '@/pages/owners/show';
const baseDash= '/dashboard';

export default [
    {
        path: `${baseDash}/owners`,
        name: `owners`,
        component: owners,
    },
    {
        path: `${baseDash}/owners/create`,
        name: `ownersCreate`,
        component: create,
    },
    {
        path: `${baseDash}/owners/update/:id`,
        name: `ownersUpdate`,
        component: update,
    },
    {
        path: `${baseDash}/owners/:id`,
        name: `ownersShow`,
        component: show,
    }
];
