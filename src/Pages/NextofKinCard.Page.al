page 50105 "Next Of Kin Card"
{
    ApplicationArea = All;
    Caption = 'NextofKin';
    PageType = Card;
    SourceTable = "Next Of Kin Table";

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';

                field("Student No."; Rec."Student No.")
                {
                    ToolTip = 'Specifies the value of the Student No. field.', Comment = '%';
                    Editable = false;
                }
                field(Relationship; Rec.Relationship)
                {
                    ToolTip = 'Specifies the value of the Relationship field.', Comment = '%';
                }
                field("First Name"; Rec."First Name")
                {
                    ToolTip = 'Specifies the value of the First Name field.', Comment = '%';
                    trigger OnValidate()
                    begin
                        UpdateNames();
                    end;
                }

                field("Second Name"; Rec."Second Name")
                {
                    ToolTip = 'Specifies the value of the Second Name field.', Comment = '%';
                    trigger OnValidate()
                    begin
                        UpdateNames();
                    end;
                }
                field("SurName"; Rec."Sur Name")
                {
                    ToolTip = 'Specifies the value of the Sur Name field.', Comment = '%';
                    trigger OnValidate()
                    begin
                        UpdateNames();
                    end;
                }
                field("Full Name"; Rec."Full Name")
                {
                    ToolTip = 'Specifies the value of the Full Name field.', Comment = '%';
                    Editable = false;
                }
                field("Phone No."; Rec."Phone No.")
                {
                    ToolTip = 'Specifies the value of the Phone No. field.', Comment = '%';
                }
                field(Email; Rec.Email)
                {
                    ToolTip = 'Specifies the value of the Email field.', Comment = '%';
                }
            }
        }
    }
    local procedure UpdateNames()

    begin
        Rec."Full Name" := '';
        if (Rec."First Name" <> '') then
            Rec."Full Name" += Rec."First Name";

        if (Rec."Second Name" <> '') then
            Rec."Full Name" += ' ' + Rec."Second Name";

        if (Rec."Sur Name" <> '') then
            Rec."Full Name" += ' ' + Rec."Sur Name";
    end;
}
