page 50102 Expressions
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(Input1; Input1)
                {
                    ApplicationArea = All;
                    Caption = 'Enter Input1';

                }

                field(Input2; Input2)
                {
                    ApplicationArea = All;
                    Caption = 'Enter Input2';

                }

                field(Result; Result)
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
            action(Results)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    if Input1 > Input2 then
                        Result := true
                    else
                        Result := false;

                end;
            }
        }
    }

    var
        Input1: Integer;
        Input2: Integer;
        Result: Boolean;
}