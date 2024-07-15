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
            TableRelation = "Student Table";
        }
        field(4; Year; Integer)
        {
            Caption = 'Year';
            TableRelation = "Academic Year".Year;
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
        field(6; "Fee Payable"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(7; "Fee Paid"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; Semester, "Course Code")
        {
            Clustered = true;
        }
        key(key1; Year)
        {

        }
    }
    var
        AcaSem: Record "Academic Semester";
}
