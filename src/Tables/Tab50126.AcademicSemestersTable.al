table 50126 "Academic Semesters Table"
{
    Caption = 'Academic Semesters Table';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; Semester; Integer)
        {
            Caption = 'Semester';
        }
        field(2; "Year "; Integer)
        {
            Caption = 'Year ';
            TableRelation = "Academic Year".Year;
        }
        field(3; "Student No."; Code[30])
        {
            Caption = 'Student No.';
            TableRelation = "Student Table";
        }
        field(4; "Course Code"; Code[30])
        {
            Caption = 'Course Code';
        }
        field(5; "Current Semester"; Boolean)
        {
            Caption = 'Current Semester';
            trigger OnValidate()
            var
                myInt: Integer;
            begin
                AcaSem.Reset();
                AcaSem.SetRange("Current Semester", true);
                AcaSem.SetFilter(Semester, '<> %1', Rec.Semester);
                if AcaSem.FindFirst() then begin
                    repeat
                        AcaSem."Current Semester" := false;
                        AcaSem.Modify()
                    until AcaSem.Next() = 0;
                end;
            end;
        }
        field(6; "Fee Payable "; Decimal)
        {
            Caption = 'Fee Payable ';
        }
        field(7; "Fee Paid"; Decimal)
        {
            Caption = 'Fee Paid';
        }
    }
    keys
    {
        key(key1; Semester, "Year ", "Student No.")
        {
            Clustered = true;
        }
    }
    var
        AcaSem: Record "Academic Semesters Table";
}
