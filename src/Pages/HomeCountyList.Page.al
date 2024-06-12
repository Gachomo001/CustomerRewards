page 50112 "Home County"
{
    ApplicationArea = All;
    Caption = 'Home County';
    PageType = List;
    SourceTable = "Home County";
    UsageCategory = Lists;
    
    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("County Code"; Rec."County Code")
                {
                    ToolTip = 'Specifies the value of the County Code field.', Comment = '%';
                }
                field("County Name"; Rec."County Name")
                {
                    ToolTip = 'Specifies the value of the County Name field.', Comment = '%';
                }
            }
        }
    }
}
