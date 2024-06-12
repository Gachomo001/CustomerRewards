page 50114 "Units List"
{
    ApplicationArea = All;
    Caption = 'Units List';
    PageType = List;
    SourceTable = Units;
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
                field("Unit Code"; Rec."Unit Code")
                {
                    ToolTip = 'Specifies the value of the Unit Code field.', Comment = '%';
                }
                field("Unit Name"; Rec."Unit Name")
                {
                    ToolTip = 'Specifies the value of the Unit Name field.', Comment = '%';
                }
                field("Total Score"; Rec."Total Score")
                {
                    ToolTip = 'Specifies the value of the Total Score field.', Comment = '%';
                }
            }
        }
    }
}
