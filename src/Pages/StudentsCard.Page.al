page 50106 "Student Card"
{
    ApplicationArea = All;
    Caption = 'Student Card';
    PageType = Card;
    Editable = false;
    SourceTable = "Student Table";

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
                field("Sur Name"; Rec."Sur Name")
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
                }

                field("ID No."; Rec."ID No.")
                {
                    ToolTip = 'Specifies the value of the ID No. field.', Comment = '%';
                }

                field("Captured By"; Rec."Captured By")
                {
                    ToolTip = 'Specifies the value of the Captured By field.', Comment = '%';
                    Editable = false;
                }
                field("Date of Acceptance"; Rec."Date of Acceptance")
                {
                    ToolTip = 'Specifies the value of the Date of Acceptance field.', Comment = '%';
                    Editable = false;
                }
                field("Date of Birth"; Rec."Date of Birth")
                {
                    ToolTip = 'Specifies the value of the Date of Birth field.', Comment = '%';
                }
                field("Home County"; Rec."Home County")
                {
                    ToolTip = 'Specifies the value of the Home County field.', Comment = '%';
                }
                field(age; Rec.age)
                {
                    ToolTip = 'Specifies the value of the age field.', Comment = '%';
                    Editable = false;
                }
            }

            group(Communication)
            {
                field("Phone No."; Rec."Phone No.")
                {
                    ToolTip = 'Specifies the value of the Phone No. field.', Comment = '%';
                }
                field(Email; Rec.Email)
                {
                    ToolTip = 'Specifies the value of the Email field.', Comment = '%';
                }
            }
            group(Academic)
            {
                field(Course; Rec.Course)
                {
                    ToolTip = 'Specifies the value of the Course field.', Comment = '%';
                }
            }
        }
    }
    actions
    {
        area(Navigation)
        {
            action("Next Of Kin")
            {
                ApplicationArea = All;
                Image = GetEntries;
                Promoted = true;
                PromotedCategory = Process;
                RunObject = page "Next Of Kin Read List";
                RunPageLink = "Student No." = field("Student No.");

                //Example code
                trigger OnAction()
                var
                    StudentRec: Record "Student Table";
                    NextOfKinRec: Record "Next Of Kin Table";
                begin
                    if StudentRec.Get(StudentRec."Student No.") then
                        if NextOfKinRec.Get(NextOfKinRec."Student No.") then begin
                            Message('Next of Kin Details: ' + NextOfKinRec."Student No.");
                        end
                        else
                            Error('Student record not found.');
                end;
                //Example Code
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
