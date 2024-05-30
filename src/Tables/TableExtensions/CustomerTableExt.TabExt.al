tableextension 50100 CustomerTableExt extends Customer
{
    fields
    {
        field(50100; "Account Type"; Enum "Account Type")
        {
            Caption = 'Account Type';
            DataClassification = ToBeClassified;
        }
    }
}
