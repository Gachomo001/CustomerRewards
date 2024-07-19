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
                    ApplicationArea = All;
                    TableRelation = Course."Course Code";
                    ToolTip = 'Specifies the value of the Course field.', Comment = '%';

                }
                field("Current Semester Of Study"; Rec."Current Semester Of Study")
                {
                    ApplicationArea = All;
                    Caption = 'Current Semester';
                    TableRelation = "Academic Semesters Table".Semester;
                    ToolTip = 'Specifies the value of the Course field.', Comment = '%';

                }
                field("Current Year Of Study"; Rec."Current Year Of Study")
                {
                    ApplicationArea = All;
                    Caption = 'Current Year';
                    TableRelation = "Academic Year".Year;
                    ToolTip = 'Specifies the value of the Course field.', Comment = '%';

                }
                field(CurrSemUnits; CurrentSemUnits)
                {
                    ApplicationArea = All;
                    Caption = 'Current Sem. Units';
                    ToolTip = 'Specifies the value of the Course field.', Comment = '%';
                }
            }
            part(UnitsTaken; "Units Registered")
            {
                ApplicationArea = all;
                SubPageLink = "Student No." = field("Student No."), "Current Semester" = const(true);
            }
        }
        area(FactBoxes)
        {
            part("Fee Details"; "Student Financial Details")
            {
                ApplicationArea = All;
                SubPageLink = "Student No." = field("Student No.");
            }
        }
    }
    actions
    {
        area(Processing)
        {
            /* 
            //Units Registration action that open a card page with listparts

            action("Register Units")
            {
                ApplicationArea = All;
                RunObject = page "Current Course";
                RunPageLink = "Student No." = field("Student No.");
                trigger OnAction()
                begin
                    CurrPage.Close();
                    Page.Run(Page::"Units Registration");
                end;
            }
            */
        }
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

                /*
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
                */
            }

            action("Register Units")
            {
                ApplicationArea = All;
                Image = GetEntries;
                Promoted = true;
                PromotedCategory = Process;
                RunObject = page "Units Registration";
                RunPageLink = "Student No." = field("Student No.");
            }
            action("Fees")
            {
                ApplicationArea = All;
                Image = GetEntries;
                Promoted = true;
                PromotedCategory = Process;
                RunObject = page "Fee Payment";
                RunPageLink = "Student No." = field("Student No.");
            }
            action("Student Changes")
            {
                ApplicationArea = All;
                Image = GetEntries;
                Promoted = true;
                PromotedCategory = Process;
                RunObject = page "MainStudents Changes CardPage";
                RunPageLink = "Student Number" = field("Student No.");
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

    var
        CurrentSemUnits: Integer;
        Units: Record "Units Table";
        CurrSem: Record "Academic Semesters Table";

    trigger OnOpenPage()
    var
        myInt: Integer;
    begin
        Units.Reset();
        Units.SetRange("Student No.", Rec."Student No.");
        Units.SetRange("Current Semester", true);
        //units.SetFilter("Total Score", '>%1', 50);
        if Units.FindFirst() then begin
            CurrentSemUnits := Units.Count;
            Rec."Current Semester Of Study" := Units."Semester ";
            Rec."Current Year Of Study" := Units.Year;
            Rec.Modify(true);
        end;

        /*
                CurrSem.Reset();
                CurrSem.SetRange("Student No.", Rec."Student No.");
                CurrSem.SetRange("Current Semester", true);
                if CurrSem.FindFirst() then begin
                    if Rec."Current Semester Of Study" <> CurrSem.Semester then
                        Rec."Current Semester Of Study" := CurrSem.Semester;
                    if Rec."Current Year Of Study" <> CurrSem."Year " then
                        Rec."Current Year Of Study" := CurrSem."Year ";
                    Rec.Modify()
                end;
        */
    end;

}
