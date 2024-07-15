table 50122 "Student Fee Table"
{
    Caption = 'Student Fee Table';
    DataClassification = ToBeClassified;


    fields
    {
        field(1; "Student No."; Code[30])
        {
            Caption = 'Student No.';
        }
        field(2; "Annual Fee Payable"; Code[30])
        {
            Caption = 'Annual Fee Payable';
        }
        field(3; "Current Semester Fee Payable"; Code[30])
        {
            Caption = 'Current Semester Fee Payable';
        }
        field(4; "Annual Fee Paid"; Code[30])
        {
            Caption = 'Annual Fee Paid';
        }
        field(5; "Annual Fee Balance"; Code[30])
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
