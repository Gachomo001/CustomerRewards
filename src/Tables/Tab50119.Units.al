table 50119 Units
{
    Caption = 'Units';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Unit Code"; Code[30])
        {
            Caption = 'Unit Code';
        }
        field(2; Semester; Integer)
        {
            Caption = 'Semester';
            TableRelation = "Academic Semester";
        }
        field(3; "Student No."; Code[20])
        {
            Caption = 'Student No.';
        }
        field(4; Year; Integer)
        {
            Caption = 'Year';
            TableRelation = "Academic Year";
        }
        field(5; "Course Code"; Code[20])
        {
            Caption = 'Course Code';
        }
        field(6; "Unit Name"; Text[50])
        {
            Caption = 'Unit Name';
        }
        field(7; "CAT 1"; Decimal)
        {
            Caption = 'CAT 1';
        }
        field(8; "CAT 2"; Decimal)
        {
            Caption = 'CAT 2';
        }
        field(9; Exam; Decimal)
        {
            Caption = 'Exam';
        }
        field(10; "Total Score"; Decimal)
        {
            Caption = 'Total Score';
        }
    }
    keys
    {
        key(PK; "Unit Code", Semester)
        {
            Clustered = true;
        }
    }
}
