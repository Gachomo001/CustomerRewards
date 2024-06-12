table 50118 "Academic Semester"
{
    Caption = 'Academic Semester';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; Semester; Integer)
        {
            Caption = 'Semester';
        }
        field(2; "Course Code"; Code[20])
        {
            Caption = 'Course Code';
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
        field(5; "Current Semester"; Boolean)
        {
            Caption = 'Current Semester';
        }
    }
    keys
    {
        key(PK; Semester, "Course Code")
        {
            Clustered = true;
        }
    }
}
