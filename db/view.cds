namespace ammunation.db.view;

using {ammunation.db.schema as db} from '../db/schema';

define view ![GunVH] as
    select from db.WEAPON {
        key Name as Name,
            Type as Type
    };

define view ![AccuracyVH] as
    select from db.WEAPON distinct{
        key Accuracy as Accuracy
    };
