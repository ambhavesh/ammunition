using ammunation.srv.service.AMMUNATION_SRV as service from '../../srv/service';

annotate service.Weapons with @(
    UI.SelectionFields           : [Name],
    UI.LineItem                  : [
        {
            $Type                : 'UI.DataField',
            Label                : 'Name',
            Value                : Name,
            ![@HTML5.CssDefaults]: {width: '30%'}
        },
        {
            $Type                : 'UI.DataField',
            Label                : 'Manufacturer',
            Value                : Manufacturer,
            ![@HTML5.CssDefaults]: {width: '30%'}
        },
        {
            $Type                : 'UI.DataField',
            Label                : 'Model',
            Value                : Model,
            ![@HTML5.CssDefaults]: {width: '30%'}
        },
        {
            $Type                : 'UI.DataField',
            Label                : 'Type',
            Value                : Type,
            ![@HTML5.CssDefaults]: {width: '30%'}
        },
        {
            $Type                : 'UI.DataField',
            Label                : 'Caliber',
            Value                : Caliber,
            ![@HTML5.CssDefaults]: {width: '30%'}
        },
        {
            $Type                : 'UI.DataField',
            Label                : 'Range',
            Value                : Range,
            ![@HTML5.CssDefaults]: {width: '30%'}
        },
        {
            $Type                : 'UI.DataField',
            Label                : 'Accuracy',
            Value                : Accuracy,
            ![@HTML5.CssDefaults]: {width: '30%'}
        }
    ],
    UI.FieldGroup #GeneratedGroup: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Label: 'Name',
                Value: Name,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Manufacturer',
                Value: Manufacturer,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Model',
                Value: Model,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Type',
                Value: Type,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Caliber',
                Value: Caliber,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Range',
                Value: Range,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Accuracy',
                Value: Accuracy,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Base Damage',
                Value: BaseDamage,
            },
            {
                $Type: 'UI.DataField',
                Label: 'AP Damage',
                Value: APDamage,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Cost',
                Value: Cost,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Weight',
                Value: Weight,
            },
        ],
    },
    UI.Facets                    : [{
        $Type : 'UI.ReferenceFacet',
        ID    : 'GeneratedFacet1',
        Label : 'General Information',
        Target: '@UI.FieldGroup#GeneratedGroup',
    }, ]

);

annotate service.Weapons with {
    Name @Common: {ValueList: {
        Label         : 'Gun Name',
        $Type         : 'Common.ValueListType',
        CollectionPath: 'Weapons',
        Parameters    : [
            {
                $Type            : 'Common.ValueListParameterInOut',
                LocalDataProperty: Name,
                ValueListProperty: 'Name'
            },
            {
                $Type            : 'Common.ValueListParameterInOut',
                LocalDataProperty: Type,
                ValueListProperty: 'Type'
            }
        ]
    }, }
};
