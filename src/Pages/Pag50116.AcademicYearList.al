page 50116 "Academic Year List"
{
    ApplicationArea = All;
    Caption = 'Academic Year List';
    PageType = List;
    SourceTable = "Academic Year";
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
                field(Year; Rec.Year)
                {
                    ToolTip = 'Specifies the value of the Year field.', Comment = '%';
                }
                field("Year Name"; Rec."Year Name")
                {
                    ToolTip = 'Specifies the value of the Year Name field.', Comment = '%';
                }
                field("Annual Fee"; Rec."Annual Fee")
                {
                    ToolTip = 'Specifies the value of the Annual Fee field.', Comment = '%';
                }
            }
        }
    }
}
