pageextension 50101 "sales & Receivables Setup" extends "Sales & Receivables Setup"
{
    layout
    {
        addfirst(content)
        {
            group("Student Nos")
            {
                field("Student Change No."; Rec."Student Change No.")
                {
                    TableRelation = "No. Series";
                }
            }
        }
    }
}
