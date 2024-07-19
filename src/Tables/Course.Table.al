table 50107 Course
{
    Caption = 'Course Table';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Course Code"; Code[20])
        {
            Caption = 'Course Code';
        }
        field(2; "Course Name"; Code[100])
        {
            Caption = 'Course Name';
        }
        field(3; "Student No."; Code[20])
        {
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(Key1; "Course Code", "Course Name")
        {
            Clustered = true;
        }
        key(Key2; "Student No.")
        {

        }
    }
}
