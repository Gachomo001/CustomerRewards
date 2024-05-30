page 50103 SumOfTwo
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
                field(num1; num1)
                {
                    ApplicationArea = All;
                    Caption = 'Enter Number 1';

                }

                field(num2; num2)
                {
                    ApplicationArea = All;
                    Caption = 'Enter Number 2';

                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(Addition)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    Mycode.run();

                end;
            }
        }
    }

    var
        Mycode: Codeunit SumOfTwo;
        num1: Integer;
        num2: Integer;
}