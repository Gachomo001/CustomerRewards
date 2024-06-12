table 50115 "Home County"
{
    Caption = 'Home County';
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1; "County Code"; Code[20])
        {
            Caption = 'County Code';
        }
        field(2; "County Name"; Text[50])
        {
            Caption = 'County Name';
        }
    }
    keys
    {
        key(PK; "County Code")
        {
            Clustered = true;
        }
    }
}
