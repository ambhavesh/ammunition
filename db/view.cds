namespace ammunation.db.view;

using {ammunation.db.schema as db} from '../db/schema';

@cds.odata.valuelist
define view ![Gun] as
    select from db.WEAPON {
        key Name as Name
    }

define view ![GunF4] as
    select from db.WEAPON {
        key Name as Name @(Commom: {
            Label    : 'Gun Name',
            ValueList: {
                CollectionPath: 'Gun',
                Parameters    : [{
                    $Type            : 'Common.ValueListParameterInOut',
                    LocalDataProperty: Name,
                    ValueListProperty: 'Name'
                }]
            }
        })
    }


// define view ![GunF4] as
//     select from db.WEAPON {
//         *,
//         @Common.ValueList.CollectionPath: 'Gun'
//         @Common.ValueList.Parameters    : [
//             {
//                 $Type            : 'Common.ValueListParameterInOut',
//                 LocalDataProperty: 'Name',
//                 ValueListProperty: 'Name'
//             },
//             {
//                 $Type            : 'Common.ValueListParameterDisplayOnly',
//                 ValueListProperty: 'Name'
//             }
//         ] Name
//     }
