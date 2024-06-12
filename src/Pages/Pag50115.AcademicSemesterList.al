page 50115 "Academic Semester List"
{
    ApplicationArea = All;
    Caption = 'Academic Semester List';
    PageType = List;
    SourceTable = "Academic Semester";
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
                field(Semester; Rec.Semester)
                {
                    ToolTip = 'Specifies the value of the Semester field.', Comment = '%';
                }
                field("Current Semester"; Rec."Current Semester")
                {
                    ToolTip = 'Specifies the value of the Current Semester field.', Comment = '%';
                }
            }
        }
    }
}
