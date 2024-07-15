page 50121 "Units Registration"
{
    ApplicationArea = All;
    Caption = 'Units Registration ';
    PageType = List;
    SourceTable = "Units Table";
    UsageCategory = Lists;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Unit Code"; Rec."Unit Code")
                {
                    ToolTip = 'Specifies the value of the Unit Code field.', Comment = '%';
                }
                field("Student No."; Rec."Student No.")
                {
                    ToolTip = 'Specifies the value of the Student No. field.', Comment = '%';
                    Editable = false;
                }
                field("Student Name."; Rec."Student Name")
                {
                    ToolTip = 'Specifies the value of the Student No. field.', Comment = '%';
                    Editable = false;
                }
                field("Semester "; Rec."Semester ")
                {
                    ToolTip = 'Specifies the value of the Semester field.', Comment = '%';
                }
                field(Year; Rec.Year)
                {
                    ToolTip = 'Specifies the value of the Year field.', Comment = '%';
                }
                field("Unit Name"; Rec."Unit Name")
                {
                    ToolTip = 'Specifies the value of the Unit Name field.', Comment = '%';
                }
                field("Course Code"; Rec."Course Code")
                {
                    ToolTip = 'Specifies the value of the Course Code field.', Comment = '%';
                    Editable = false;
                }
                field("Current Semester"; Rec."Current Semester")
                {
                    ToolTip = 'Specifies the value of the Current Semester field.', Comment = '%';
                }
                field("CAT 1"; Rec."CAT 1")
                {
                    ToolTip = 'Specifies the value of the CAT 1 field.', Comment = '%';
                }
                field("CAT 2"; Rec."CAT 2")
                {
                    ToolTip = 'Specifies the value of the CAT 2 field.', Comment = '%';
                }
                field("Main Exam"; Rec."Main Exam")
                {
                    ToolTip = 'Specifies the value of the Main Exam field.', Comment = '%';
                }
                field("Total Score"; Rec."Total Score")
                {
                    ToolTip = 'Specifies the value of the Total Score field.', Comment = '%';
                    Editable = false;
                }
            }
        }
    }
}
