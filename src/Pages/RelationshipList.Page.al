page 50111 "Relationship List"
{
    ApplicationArea = All;
    Caption = 'Relationship';
    PageType = List;
    SourceTable = Relationship;
    UsageCategory = Lists;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(Relationship; Rec.Relationship)
                {
                    ApplicationArea = All;

                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }
}