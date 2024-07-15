page 50130 "MainStudent Changes List Page"
{
    ApplicationArea = All;
    Caption = 'MainStudent Changes List Page';
    PageType = List;
    SourceTable = "MainStudents Changes";
    UsageCategory = Lists;
    CardPageId = "MainStudents Changes CardPage";

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Change Number"; Rec."Change Number")
                {
                    ToolTip = 'Specifies the value of the Change Number field.', Comment = '%';
                    ApplicationArea = All;
                }
                field("Full Name"; Rec."Full Name")
                {
                    ToolTip = 'Specifies the value of the Full Name field.', Comment = '%';
                    ApplicationArea = All;
                }
                field("New Full Name"; Rec."New Full Name")
                {
                    ToolTip = 'Specifies the value of the New Full Name field.', Comment = '%';
                    ApplicationArea = All;
                }
                field(Course; Rec.Course)
                {
                    ToolTip = 'Specifies the value of the Course field.', Comment = '%';
                    ApplicationArea = All;
                }
                field("New Course"; Rec."New Course")
                {
                    ToolTip = 'Specifies the value of the New Course field.', Comment = '%';
                    ApplicationArea = All;
                }
                field("Captured By"; Rec."Captured By")
                {
                    ToolTip = 'Specifies the value of the Captured By field.', Comment = '%';
                    ApplicationArea = All;
                }
                field("New Captured By"; Rec."New Captured By")
                {
                    ToolTip = 'Specifies the value of the New Captured By field.', Comment = '%';
                    ApplicationArea = All;
                }
            }
        }
    }
}
