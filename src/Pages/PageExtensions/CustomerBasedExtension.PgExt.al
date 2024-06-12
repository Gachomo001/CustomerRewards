pageextension 50100 CustomerBasedExtension extends "Customer List"
{

    layout
    {
        // Add changes to page layout here
        addafter("Location Code")
        {
            field("Account Type"; Rec."Account Type")
            {
                ApplicationArea = All;

            }
        }

        modify(Name)
        {
            StyleExpr = MyStyleExpr;
        }

        modify("No.")
        {
            StyleExpr = MyStyleExpr;
        }

        modify("Location Code")
        {
            StyleExpr = MyStyleExpr;
        }

        modify(Contact)
        {
            StyleExpr = MyStyleExpr;
        }

    }
    trigger OnAfterGetRecord()

    begin
        MyStyleExpr := 'Standard';
        if Rec."Balance (LCY)" < 200000 then
            MyStyleExpr := 'Attention';

    end;

    var
        MyStyleExpr: Text;
}