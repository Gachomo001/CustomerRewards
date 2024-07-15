table 50117 "Academic Year"
{
    Caption = 'Academic Year';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Course Code"; Code[20])
        {
            Caption = 'Course Code';
        }
        field(2; Year; Integer)
        {
            Caption = 'Year';
        }
        field(3; "Student No."; Code[20])
        {
            Caption = 'Student No.';
            TableRelation = "Student Table";
        }
        field(4; "Year Name"; Text[20])
        {
            Caption = 'Year Name';
        }
        field(5; "Annual Fee"; Decimal)
        {
            Caption = 'Annual Fee';
            FieldClass = FlowField;
            CalcFormula = sum("Academic Semester"."Fee Payable" where(Year = field(Year)));
        }
    }
    keys
    {
        key(PK; "Course Code", Year)
        {
            Clustered = true;
        }
    }
}
