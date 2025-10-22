namespace ammunation.srv.service;

using {ammunation.db.schema as db} from '../db/schema';
using {ammunation.db.view as view} from '../db/view';


service AMMUNATION_SRV @(path: '/srv-api') {
    entity Weapons as projection on db.WEAPON;
    entity GunF4   as projection on view.GunF4;
}
