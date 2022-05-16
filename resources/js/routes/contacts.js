import contacts from '@/pages/contacts/index';
import show from '@/pages/contacts/show';
const baseDash= '/dashboard';

export default [
    {
        path: `${baseDash}/contacts`,
        name: `contacts`,
        component: contacts,
    },
    {
        path: `${baseDash}/contacts/:id`,
        name: `contactsShow`,
        component: show,
    }
];
