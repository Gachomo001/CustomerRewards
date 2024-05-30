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

    }


}