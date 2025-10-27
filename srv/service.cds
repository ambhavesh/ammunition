namespace ammunation.srv.service;

using {ammunation.db.schema as db} from '../db/schema';
using {ammunation.db.view as view} from '../db/view';


service AMMUNATION_SRV @(path: '/srv-api') {
    entity Weapons    as projection on db.WEAPON;
    entity GunVH      as projection on view.GunVH;
    entity AccuracyVH as projection on view.AccuracyVH;

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


    annotate service.AMMUNATION_SRV.Weapons with {
        Accuracy @Common: {
            Label                   : 'Accuracy',
            Text                    : Accuracy,
            TextArrangement         : #TextOnly,
            ValueListWithFixedValues: true,
            ValueList               : {
                $Type         : 'Common.ValueListType',
                CollectionPath: 'AccuracyVH',
                Parameters    : [{
                    $Type            : 'Common.ValueListParameterInOut',
                    LocalDataProperty: Accuracy,
                    ValueListProperty: 'Accuracy'
                }]
            },
        }
    };

}
