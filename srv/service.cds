namespace ammunation.srv.service;

using {ammunation.db.schema as db} from '../db/schema';


service AMMUNATION_SRV @(path: '/srv-api') {
    entity Weapons as projection on db.WEAPON;

    @cds.persistence.skip
    entity GunVH   as
        projection on db.WEAPON {
            key Name as Name,
                Type as Type
        };
    
    annotate service.AMMUNATION_SRV.Weapons with {
        Name @Common: {ValueList: {
            $Type         : 'Common.ValueListType',
            CollectionPath: 'GunVH',
            Parameters    : [
                {
                    $Type            : 'Common.ValueListParameterInOut',
                    LocalDataProperty: Name,
                    ValueListProperty: 'Name'
                },
                {
                    $Type            : 'Common.ValueListParameterInOut',
                    ValueListProperty: 'Type'
                }
            ]
        }, }
    };

}
