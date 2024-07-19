table 50130 "Student Fees Details"
{
    Caption = 'Student Fees Details';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Student No."; Code[20])
        {
            Caption = 'Student No.';
        }
        field(2; "Annual Fee Payable"; Integer)
        {
            Caption = 'Annual Fee Payable';
        }
        field(3; "Current Semester Fee Payable"; Integer)
        {
            Caption = 'Current Semester Fee Payable';
        }
        field(4; "Annual Fee Paid"; Decimal)
        {
            Caption = 'Annual Fee Paid';
        }
        field(5; "Annual Fee Balance"; Decimal)
        {
            Caption = 'Annual Fee Balance';
        }
    }
    keys
    {
        key(PK; "Student No.", "Annual Fee Payable")
        {
            Clustered = true;
        }
    }
}
