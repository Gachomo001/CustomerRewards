page 50126 "Units Pool List"
{
    ApplicationArea = All;
    Caption = 'Units Pool List';
    PageType = List;
    SourceTable = "Units Pool";
    UsageCategory = Lists;
    
    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Unit Code "; Rec."Unit Code ")
                {
                    ToolTip = 'Specifies the value of the Unit Code field.', Comment = '%';
                }
                field("Unit Name"; Rec."Unit Name")
                {
                    ToolTip = 'Specifies the value of the Unit Name field.', Comment = '%';
                }
            }
        }
    }
}
