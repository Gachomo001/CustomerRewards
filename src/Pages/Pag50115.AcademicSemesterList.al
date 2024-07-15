page 50115 "Academic Semester List"
{
    ApplicationArea = All;
    Caption = 'Academic Semester List';
    PageType = List;
    SourceTable = "Academic Semesters Table";
    UsageCategory = Lists;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Student No."; Rec."Student No.")
                {
                    ToolTip = 'Specifies the value of the Student No. field.', Comment = '%';
                }
                field("Course Code"; Rec."Course Code")
                {
                    ToolTip = 'Specifies the value of the Course Code field.', Comment = '%';
                }
                field(Year; Rec."Year ")
                {
                    ToolTip = 'Specifies the value of the Year field.', Comment = '%';
                }
                field(Semester; Rec.Semester)
                {
                    ToolTip = 'Specifies the value of the Semester field.', Comment = '%';
                }
                field("Current Semester"; Rec."Current Semester")
                {
                    ToolTip = 'Specifies the value of the Current Semester field.', Comment = '%';
                }
                field("Fee Payable"; Rec."Fee Payable ")
                {
                    ToolTip = 'Specifies the value of the Fee Payable field.', Comment = '%';
                }
                field("Fee Paid"; Rec."Fee Paid")
                {
                    ToolTip = 'Specifies the value of the Fee Paid field.', Comment = '%';
                    trigger OnValidate()
                    var
                        myInt: Integer;
                    begin
                        TempFeeBalance := Round((Rec."Fee Payable " - Rec."Fee Paid"))
                    end;
                }
                field(TempFeeBalance; TempFeeBalance)
                {
                    ToolTip = 'Specifies the value of the Fee Paid field.', Comment = '%';
                }
            }
        }
    }
    var
        TempFeeBalance: Decimal;
}
