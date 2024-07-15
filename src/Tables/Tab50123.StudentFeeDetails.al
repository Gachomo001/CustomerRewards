table 50123 "Student Fee Details"
{
    Caption = 'Student Fee Details';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Receipt No."; Code[30])
        {
            Caption = 'Receipt No.';
        }
        field(2; "Student No."; Code[30])
        {
            Caption = 'Student No.';
        }
        field(3; "Year "; Integer)
        {
            Caption = 'Year ';
        }
        field(4; Semester; Integer)
        {
            Caption = 'Semester';
        }
        field(5; "Amount Paid"; Decimal)
        {
            Caption = 'Amount Paid';
        }
    }
    keys
    {
        key(PK; "Receipt No.")
        {
            Clustered = true;
        }
        key(key1; "Student No.")
        {

        }
    }
}
