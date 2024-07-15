table 50127 "Units Pool"
{
    Caption = 'Units Pool';
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1; "Unit Code "; Code[30])
        {
            Caption = 'Unit Code ';
        }
        field(2; "Unit Name"; Text[100])
        {
            Caption = 'Unit Name';
        }
    }
    keys
    {
        key(PK; "Unit Code ")
        {
            Clustered = true;
        }
    }
}
