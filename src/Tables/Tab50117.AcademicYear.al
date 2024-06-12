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
        }
        field(4; "Year Name"; Text[20])
        {
            Caption = 'Year Name';
        }
    }
    keys
    {
        key(PK; "Course Code",Year)
        {
            Clustered = true;
        }
    }
}
