import admins from '@/pages/admins/index';
import create_estate from '@/pages/admins/create_estate';
import create from '@/pages/admins/create';
import update from '@/pages/admins/update';
import show from '@/pages/admins/show';
import permissions from '@/pages/admins/permissions';

const baseDash= '/dashboard';

export default [
    {
        path: `${baseDash}/admins`,
        name: `admins`,
        component: admins,
    },
    {
        path: `${baseDash}/admins/create`,
        name: `adminsCreate`,
        component: create,
    },
    {
        path: `${baseDash}/admins/create_estate`,
        name: `adminsCreateEstate`,
        component: create_estate,
    },
    {
        path: `${baseDash}/admins/update/:id`,
        name: `adminsUpdate`,
        component: update,
    },
    {
        path: `${baseDash}/admins/:id`,
        name: `adminsShow`,
        component: show,
    },
    {
        path: `${baseDash}/admins/permissions/:id`,
        name: `permissionsShow`,
        component: permissions,
    }
];
