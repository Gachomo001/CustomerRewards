page 50117 "Units Card"
{
    ApplicationArea = All;
    Caption = 'Units Card';
    PageType = Card;
    SourceTable = Units;

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';

                field("Student No."; Rec."Student No.")
                {
                    ToolTip = 'Specifies the value of the Student No. field.', Comment = '%';
                }
                field("Course Code"; Rec."Course Code")
                {
                    ToolTip = 'Specifies the value of the Course Code field.', Comment = '%';
                }
                field("Unit Code"; Rec."Unit Code")
                {
                    ToolTip = 'Specifies the value of the Unit Code field.', Comment = '%';
                }
                field("Unit Name"; Rec."Unit Name")
                {
                    ToolTip = 'Specifies the value of the Unit Name field.', Comment = '%';
                }
                field(Semester; Rec.Semester)
                {
                    ToolTip = 'Specifies the value of the Semester field.', Comment = '%';
                }
                field(Year; Rec.Year)
                {
                    ToolTip = 'Specifies the value of the Year field.', Comment = '%';
                }
                field("CAT 1"; Rec."CAT 1")
                {
                    ToolTip = 'Specifies the value of the CAT 1 field.', Comment = '%';
                    trigger OnValidate();
                    begin
                        TotalCalculator();
                    end;
                }
                field("CAT 2"; Rec."CAT 2")
                {
                    ToolTip = 'Specifies the value of the CAT 2 field.', Comment = '%';
                    trigger OnValidate();
                    begin
                        TotalCalculator();
                    end;
                }
                field(Exam; Rec.Exam)
                {
                    ToolTip = 'Specifies the value of the Exam field.', Comment = '%';
                    trigger OnValidate();
                    begin
                        TotalCalculator();
                    end;
                }
                field("Total Score"; Rec."Total Score")
                {
                    ToolTip = 'Specifies the value of the Total Score field.', Comment = '%';
                }
            }
        }
    }
    local procedure TotalCalculator()
    begin
        Rec."Total Score" := (Rec."CAT 1" + Rec."CAT 2") / 2 + Rec.Exam
    end;
}
