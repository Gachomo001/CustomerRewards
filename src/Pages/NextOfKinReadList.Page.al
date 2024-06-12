page 50113 "Next Of Kin Read List"
{
    ApplicationArea = All;
    Caption = 'Next Of Kin Read List';
    //PageType = List;
    SourceTable = "Next Of Kin Table";
    //UsageCategory = Lists;
    PageType = ListPart;
    Editable = false;

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
