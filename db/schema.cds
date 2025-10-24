namespace ammunation.db.schema;

entity WEAPON {
    key Id           : UUID;
        Name         : String;
        Manufacturer : String;
        Model        : String;
        Type         : String;
        Caliber      : String;
        Range        : Integer;
        Accuracy     : String;
        BaseDamage   : String;
        APDamage     : String;
        Cost         : String;
        Weight       : String;
}
