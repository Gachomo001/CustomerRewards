page 50104 "Student Application Card"
{
    ApplicationArea = All;
    Caption = 'StudentApplication';
    PageType = Card;
    SourceTable = "Student Application Table";

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';

                field("Application No."; Rec."Application No.")
                {
                    ToolTip = 'Specifies the value of the Application No. field.', Comment = '%';
                    Editable = false;
                }
                field("First Name"; Rec."First Name")
                {
                    ToolTip = 'Specifies the value of the First Name field.', Comment = '%';
                    Editable = EditApplication;
                    trigger OnValidate()
                    begin
                        UpdateNames();
                    end;
                }
                field("Middle Name"; Rec."Second Name")
                {
                    ToolTip = 'Specifies the value of the Second Name field.', Comment = '%';
                    Editable = EditApplication;
                    trigger OnValidate()
                    begin
                        UpdateNames();
                    end;
                }
                field("SurName"; Rec."Sur Name")
                {
                    ToolTip = 'Specifies the value of the Sur Name field.', Comment = '%';
                    Editable = EditApplication;
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
                field(Course; Rec.Course)
                {
                    ToolTip = 'Specifies the value of the Course field.', Comment = '%';
                    Editable = EditApplication;
                }
                field(Email; Rec.Email)
                {
                    ToolTip = 'Specifies the value of the Email field.', Comment = '%';
                    Editable = EditApplication;
                }
                field("Phone No."; Rec."Phone No.")
                {
                    ToolTip = 'Specifies the value of the Phone No. field.', Comment = '%';
                    Editable = EditApplication;
                }
                field("ID No."; Rec."ID No.")
                {
                    ToolTip = 'Specifies the value of the ID No. field.', Comment = '%';
                    Editable = EditApplication;
                }
                field("Date of Birth"; Rec."Date of Birth")
                {
                    ToolTip = 'Specifies the value of the Date of Birth field.', Comment = '%';
                    Editable = EditApplication;
                }
                field(Age; Rec.age)
                {
                    ToolTip = 'Specifies the value of the age field.', Comment = '%';
                    Editable = false;
                }
                field("Home County"; Rec."Home County")
                {
                    ToolTip = 'Specifies the value of the Home County field.', Comment = '%';
                    Editable = EditApplication;
                }
                field("Date of Application"; Rec."Date of Application")
                {
                    ToolTip = 'Specifies the value of the Date of Application field.', Comment = '%';
                    Editable = false;
                }
                field("Captured By"; Rec."Captured By")
                {
                    ToolTip = 'Specifies the value of the Captured By field.', Comment = '%';
                    Editable = false;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action("Create Student")
            {
                ApplicationArea = All;
                trigger OnAction()
                begin
                    if Rec.Created then
                        Error('This student has already been created');
                    CreateStudent();
                    CurrPage.Close();
                    if Confirm('A new student has been created with Student No. %1. Do you want to open this record?', true, Student."Student No.") then begin
                        Page.Run(Page::"Student Card", Student);
                    end;
                end;
            }

        }
        area(Navigation)
        {
            action("Next Of Kin")
            {
                ApplicationArea = All;
                Image = GetEntries;
                Promoted = true;
                PromotedCategory = Process;
                RunObject = page "Next Of Kin List";
                RunPageLink = "Student No." = field("Application No.");

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

    local procedure CreateStudent()
    begin
        Student."Student No." := '';
        Student.Init();
        if Student."Student No." = '' then begin
            NoSeries.InitSeries('STDT', Student."No. Series", 0D, Student."Student No.", Student."No. Series");
        end;
        Student.TestField("Student No.");
        Student."First Name" := Rec."First Name";
        Student."Second Name" := Rec."Second Name";
        Student."Sur Name" := Rec."Sur Name";
        Student."Full Name" := Rec."Full Name";
        Student.Email := Rec.Email;
        Student.Course := Rec.Course;
        Student."Phone No." := Rec."Phone No.";
        Student."ID No." := Rec."ID No.";
        Student."Date of Birth" := Rec."Date of Birth";
        Student.age := Rec.age;
        Student."Home County" := Rec."Home County";
        Student.Insert(true);
        //Message('Member number is %1, Home County is %2', Student."Student No.", Student."Home County");
        Rec.Created := true;

        NextOfKinApplication.Reset();
        NextOfKinApplication.SetRange("Student No.", Rec."Application No.");
        if NextOfKinApplication.FindFirst() then begin
            repeat
                NextOfKin.Init();
                NextOfKin."Student No." := Student."Student No.";
                NextOfKin."First Name" := NextOfKinApplication."First Name";
                NextOfKin."Second Name" := NextOfKinApplication."Second Name";
                NextOfKin."Sur Name" := NextOfKinApplication."Sur Name";
                NextOfKin."Full Name" := NextOfKinApplication."Full Name";
                NextOfKin."Phone No." := NextOfKinApplication."Phone No.";
                NextOfKin.Email := NextOfKinApplication.Email;
                NextOfKin.Relationship := NextOfKinApplication.Relationship;
                NextOfKin.Insert();
            until NextOfKinApplication.Next() = 0;

        end;

        UpdateFields();
    end;

    local procedure UpdateFields()
    begin
        if Rec.Created = true then
            EditApplication := false
        else
            EditApplication := true;
    end;

    trigger OnOpenPage()
    begin
        UpdateFields();
    end;

    var
        Student: Record "Student Table";
        NoSeries: Codeunit NoSeriesManagement;
        EditApplication: Boolean;
        NextOfKin: Record "Next Of Kin Table";
        NextOfKinApplication: Record "Next Of Kin Table";

}