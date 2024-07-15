table 50120 "Course List Table"
{
    Caption = 'Course List Table';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Course Code"; Code[20])
        {
            Caption = 'Course Code';
        }
        field(2; "Course Name"; Code[50])
        {
            Caption = 'Course Name';
        }
    }
    keys
    {
        key(PK; "Course Code")
        {
            Clustered = true;
        }
        key(Key1; "Course Name")
        {

        }
    }
}
