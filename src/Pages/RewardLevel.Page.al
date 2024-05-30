page 50100 Reward_Level
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Reward_Level;

    layout
    {
        area(Content)
        {
            group(General)
            {
                field(Date; Rec.Date)
                {
                    ApplicationArea = All;

                }

                field("Created By"; Rec."Created By")
                {
                    ApplicationArea = All;

                }

                field("Customer No."; Rec."Customer No.")
                {
                    ApplicationArea = All;

                }

                field("Customer Name"; Rec."Customer Name")
                {
                    ApplicationArea = All;

                }

                field(Location; Rec.Location)
                {
                    ApplicationArea = All;

                }

                field(Rewarded; Rec.Rewarded)
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

    var
        myInt: Integer;
}