page 50108 "Next Of Kin List"
{
    ApplicationArea = All;
    Caption = 'NextofKin';
    PageType = List;
    SourceTable = "Next Of Kin Table";
    CardPageId = "Next Of Kin Card";
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
                    Editable = false;
                }
                field("Full Name"; Rec."Full Name")
                {
                    ToolTip = 'Specifies the value of the Full Name field.', Comment = '%';
                }
                field(Relationship; Rec.Relationship)
                {
                    ToolTip = 'Specifies the value of the Relationship field.', Comment = '%';
                }
                field("Phone No."; Rec."Phone No.")
                {
                    ToolTip = 'Specifies the value of the Phone No. field.', Comment = '%';
                }
            }
        }
    }
}
