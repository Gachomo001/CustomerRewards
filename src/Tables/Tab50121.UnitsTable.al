table 50121 "Units Table"
{
    Caption = 'Units Table';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Unit Code"; Code[30])
        {
            Caption = 'Unit Code';
            TableRelation = "Units Pool";

            trigger OnValidate()
            var
                UnitsPool: Record "Units Pool";
            begin
                if UnitsPool.Get("Unit Code") then
                    "Unit Name" := UnitsPool."Unit Name"
                else
                    Error('Unit is not found');
            end;
        }
        field(2; "Student No."; Code[30])
        {
            Caption = 'Student No.';
            TableRelation = "Student Table";
            trigger OnValidate()
            var
                Student: Record "Student Table";
            begin
                Student.get("Student No.");
                "Course Code" := Student.Course;
                "Student Name" := Student."Full Name";
            end;
        }
        field(3; "Semester "; Integer)
        {
            Caption = 'Semester ';
            TableRelation = "Academic Semesters Table".Semester;
            trigger OnValidate()
            var
                AcaSem: Record "Academic Semesters Table";
            begin
                AcaSem.Reset();
                AcaSem.SetRange(Semester, "Semester ");
                AcaSem.SetRange("Year ", Year);
                if AcaSem.FindFirst() then begin
                    "Current Semester" := AcaSem."Current Semester";
                    "Semester " := AcaSem.Semester;

                end;
            end;
        }
        field(4; "Course Code"; Code[30])
        {
            Caption = 'Course Code';
            TableRelation = Course;
        }
        field(5; Year; Integer)
        {
            Caption = 'Year';
            TableRelation = "Academic Year".Year;
            trigger OnValidate()
            var
                AcaSem: Record "Academic Semesters Table";
            begin
                AcaSem.Reset();
                AcaSem.SetRange(Semester, "Semester ");
                AcaSem.SetRange("Year ", Year);
                if AcaSem.FindFirst() then begin
                    "Current Semester" := AcaSem."Current Semester";
                    "Semester " := AcaSem.Semester;

                end;
            end;
        }
        field(6; "Unit Name"; Text[50])
        {
            Caption = 'Unit Name';
            Editable = false;
        }
        field(7; "CAT 1"; Decimal)
        {
            Caption = 'CAT 1';
            trigger OnValidate();
            begin
                TotalCalculator();
            end;
        }
        field(8; "CAT 2"; Decimal)
        {
            Caption = 'CAT 2';
            trigger OnValidate();
            begin
                TotalCalculator();
            end;
        }
        field(9; "Main Exam"; Decimal)
        {
            Caption = 'Main Exam';
            trigger OnValidate();
            begin
                TotalCalculator();
            end;
        }
        field(10; "Total Score"; Decimal)
        {
            Caption = 'Total Score';
            Editable = false;
        }
        field(11; "Current Semester"; Boolean)
        {
            Caption = 'Current Semester';
            Editable = false;
        }
        field(12; "Student Name"; Text[100])
        {
            Caption = 'Student Name';
            Editable = false;
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; "Unit Code", "Student No.", "Semester ")
        {
            Clustered = true;
        }
    }
    local procedure TotalCalculator()
    begin
        Rec."Total Score" := (Rec."CAT 1" + Rec."CAT 2") / 2 + Rec."Main Exam"
    end;
}
