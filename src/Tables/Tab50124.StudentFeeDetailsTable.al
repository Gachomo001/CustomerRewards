table 50124 "Student Fee Details Table"
{
    Caption = 'Student Fee Details Table';
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
        field(3; "Year "; Code[30])
        {
            Caption = 'Year ';
        }
        field(4; Semester; Code[30])
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
        key(PK; "Receipt No.","Student No.")
        {
            Clustered = true;
        }
    }
}
