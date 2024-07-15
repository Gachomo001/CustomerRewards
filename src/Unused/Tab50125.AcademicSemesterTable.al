table 50125 "Academic Semester Table"
{
    Caption = 'Academic Semester Table';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; Semester; Code[30])
        {
            Caption = 'Semester';
        }
        field(2; Year; Code[30])
        {
            Caption = 'Year';
        }
        field(3; "Student No."; Code[30])
        {
            Caption = 'Student No.';
        }
        field(4; "Course Code"; Code[30])
        {
            Caption = 'Course Code';
        }
        field(5; "Current Semester"; Boolean)
        {
            Caption = 'Current Semester';
        }
        field(6; "Fee Payable"; Decimal)
        {
            Caption = 'Fee Payable';
        }
        field(7; "Fee Paid"; Decimal)
        {
            Caption = 'Fee Paid';
        }
    }
    keys
    {
        key(PK; Semester, Year)
        {
            Clustered = true;
        }
    }
    var
        AcaSem: Record "Academic Semester";
}
