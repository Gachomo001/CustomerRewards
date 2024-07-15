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
        }
        field(3; "Student No."; Code[20])
        {
            Caption = 'Student No.';
            TableRelation = "Student Table";
            trigger OnValidate()
            var
                Student: Record "Student Table";
            begin
                Student.get("Student No.");
                "Course Code" := Student.Course;
            end;
        }
        field(4; Year; Integer)
        {
            Caption = 'Year';
        }
        field(5; "Course Code"; Code[20])
        {
            Caption = 'Course Code';
            TableRelation = Course;
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
        key(Key1; "Student No.")
        {

        }
        key(Key2; Year)
        {

        }
        key(Key3; "Course Code")
        {

        }
    }
}
