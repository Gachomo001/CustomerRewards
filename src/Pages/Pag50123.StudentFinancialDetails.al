page 50123 "Student Financial Details"
{
    ApplicationArea = All;
    Caption = 'Student Financial Details';
    PageType = CardPart;
    SourceTable = "Student Fee Table";

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("Student No."; Rec."Student No.")
                {
                    ToolTip = 'Specifies the value of the Student No. field.', Comment = '%';
                }
                field("Annual Fee Payable"; Rec."Annual Fee Payable")
                {
                    ToolTip = 'Specifies the value of the Annual Fee Payable field.', Comment = '%';
                }
                field("Current Semester Fee Payable"; Rec."Current Semester Fee Payable")
                {
                    ToolTip = 'Specifies the value of the Current Semester Fee Payable field.', Comment = '%';
                }
                field("Annual Fee Paid"; Rec."Annual Fee Paid")
                {
                    ToolTip = 'Specifies the value of the Annual Fee Paid field.', Comment = '%';
                }
                field("Annual Fee Balance"; Rec."Annual Fee Balance")
                {
                    ToolTip = 'Specifies the value of the Annual Fee Balance field.', Comment = '%';
                }
            }
        }
    }
    var
        StudName: Text;
        CurrYear: Integer;
        CurrSem: Integer;
        Student: Record "Student Table";
        AcaSem: Record "Academic Semester";


    trigger OnAfterGetRecord()
    var
        myInt: Integer;
    begin
        UpdateFields();
    end;


    local procedure UpdateFields()
    begin
        Student.Reset();
        Student.SetRange("Student No.", Rec."Student No.");
        if Student.FindFirst() then begin
            StudName := Student."Full Name";
            AcaSem.Reset();
            AcaSem.SetRange("Student No.", Student."Student No.");
            AcaSem.SetRange("Current Semester", true);
            if AcaSem.FindFirst() then begin
                CurrSem := AcaSem.Semester;
                CurrYear := AcaSem.Year;
            end
        end;
    end;
}
