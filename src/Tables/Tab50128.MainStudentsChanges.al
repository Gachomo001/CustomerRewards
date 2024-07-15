table 50129 "MainStudents Changes"
{
    Caption = 'MainStudents Changes';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Change Number"; Code[50])
        {
            Caption = 'Change Number';
            DataClassification = ToBeClassified;

            trigger OnValidate()
            begin
                if "Change Number" <> xRec."Change Number" then begin

                    NSetup.Get;
                    NoSeriesMgt.TestManual(NSetup."Student Change No.");


                    "No. Series" := '';
                end;
            end;

        }
        field(2; "ID Number"; Code[50])
        {
            Caption = 'ID Number';
            DataClassification = ToBeClassified;
        }
        field(3; "New ID Number"; Code[50])
        {
            Caption = 'New ID Number';
            DataClassification = ToBeClassified;
        }
        field(4; "First Name"; Text[30])
        {
            Caption = 'First Name';
            DataClassification = ToBeClassified;
        }
        field(5; "New First Name"; Text[30])
        {
            Caption = 'New First Name';
            DataClassification = ToBeClassified;
        }
        field(6; "Middle Name"; Text[30])
        {
            Caption = 'Middle Name';
            DataClassification = ToBeClassified;
        }
        field(7; "New Middle Name"; Text[30])
        {
            Caption = 'New Middle Name';
            DataClassification = ToBeClassified;
        }
        field(8; "Sur Name"; Text[30])
        {
            Caption = 'Sur Name';
            DataClassification = ToBeClassified;
        }
        field(9; "New Sur Name"; Text[30])
        {
            Caption = 'New Sur Name';
            DataClassification = ToBeClassified;
        }
        field(10; "Full Name"; Text[100])
        {
            Caption = 'Full Name';
            DataClassification = ToBeClassified;
        }
        field(11; "New Full Name"; Text[100])
        {
            Caption = 'New Full Name';
            DataClassification = ToBeClassified;
        }
        field(12; "Captured By"; Code[50])
        {
            Caption = 'Captured By';
            DataClassification = ToBeClassified;
        }
        field(13; "New Captured By"; Code[50])
        {
            Caption = 'New Captured By';
            DataClassification = ToBeClassified;
        }
        field(14; "Date Of Acceptance"; Date)
        {
            Caption = 'Date Of Acceptance';
            DataClassification = ToBeClassified;
        }
        field(15; "New Date Of Acceptance"; Date)
        {
            Caption = 'New Date Of Acceptance';
            DataClassification = ToBeClassified;
        }
        field(16; Course; Code[30])
        {
            Caption = 'Course';
            DataClassification = ToBeClassified;
            TableRelation = Course;
        }
        field(17; "New Course"; Code[30])
        {
            Caption = 'New Course';
            DataClassification = ToBeClassified;
            TableRelation = Course;
        }
        field(18; "Phone Number"; Code[30])
        {
            Caption = 'Phone Number';
            DataClassification = ToBeClassified;
        }
        field(19; "New Phone Number"; Code[30])
        {
            Caption = 'New Phone Number';
            DataClassification = ToBeClassified;
        }
        field(20; "Email Address"; Code[50])
        {
            Caption = 'Email Address';
            DataClassification = ToBeClassified;
        }
        field(21; "New Email Address"; Code[50])
        {
            Caption = 'New Email Address';
            DataClassification = ToBeClassified;
        }
        field(22; "Home County"; Code[100])
        {
            Caption = 'Home County';
            DataClassification = ToBeClassified;
            TableRelation = "Home County";
        }
        field(23; "New Home County"; Code[100])
        {
            Caption = 'New Home County';
            DataClassification = ToBeClassified;
            TableRelation = "Home County";
        }
        field(24; "No. series"; Code[100])
        {
            Caption = 'Number series';
            TableRelation = "No. Series";
        }
        field(25; Age; Integer)
        {
            Caption = 'Age';
            DataClassification = ToBeClassified;
        }
        field(26; "New Age"; Integer)
        {
            Caption = 'New Age';
            DataClassification = ToBeClassified;
        }
        field(27; "Date Of Birth"; Date)
        {
            Caption = 'Date Of Birth';
            DataClassification = ToBeClassified;
        }
        field(28; "New Date Of Birth"; Date)
        {
            Caption = 'New Date Of Birth';
            DataClassification = ToBeClassified;
        }
        field(29; "Current Year Of Study"; Integer)
        {
            Caption = 'Current Year Of Study';
            DataClassification = ToBeClassified;
        }
        field(30; "New Current Year Of Study"; Integer)
        {
            Caption = 'New Current Year Of Study';
            DataClassification = ToBeClassified;
        }
        field(31; "Current Semester Of Study"; Integer)
        {
            Caption = 'Current Semester Of Study';
            DataClassification = ToBeClassified;
        }
        field(32; "New Current Semester Of Study"; Integer)
        {
            Caption = 'New Current Semester Of Study';
            DataClassification = ToBeClassified;
        }
        field(33; "Student Number"; code[50])
        {
            Caption = 'Student Number';
            DataClassification = ToBeClassified;

            trigger OnValidate()
            begin
                IntFields();
                GetMemberDetails();

            end;



        }
        field(34; "Posted"; Boolean)
        {
            Caption = 'Posted';
            DataClassification = ToBeClassified;



        }
        field(35; "Status"; Option)
        {
            Caption = 'Status';
            DataClassification = ToBeClassified;
            OptionCaption = 'Open,Pending,Approved';
            OptionMembers = Open,Pending,Approved;


        }
        field(36; "Change Type"; Option)
        {
            Caption = 'Change Type';
            DataClassification = ToBeClassified;
            OptionCaption = ' ,General,Communication,Academics';
            OptionMembers = " ",General,Communication,Academics;




        }
    }
    keys
    {
        key(PK; "Student Number", "Change Number")
        {
            Clustered = true;
        }
    }
    var
        NoseriesMgt: Codeunit NoSeriesManagement;
        NSetup: record "Sales & Receivables Setup";
        Students: record Students;
        StdNo: code[20];

    trigger OnInsert()
    begin
        IF "Change Number" = '' THEN begin
            NSetup.Get();
            NSetup.TestField("Student Change No.");
            NoseriesMgt.InitSeries(NSetup."Student Change No.", xRec."No. Series", 0D, "Change Number", "No. Series");
            // if rec."Change Number" = '' then begin
            // NoseriesMgt.InitSeries('CHANG_STDT', xRec."No. Series", 0D, "Change Number", "No. Series");
        end;
        "Captured By" := UserId;
        "New Captured By" := UserId;
        "Date Of Acceptance" := Today;

    end;

    procedure IntFields()

    begin
        "First Name" := '';
        "Middle Name" := '';
        "Sur Name" := '';
        "Full Name" := '';
        "Date Of Birth" := 0D;
        Age := 0;

        //NEW
        "New First Name" := '';
        "New Middle Name" := '';
        "New Sur Name" := '';
        "New Full Name" := '';
        "New Date Of Birth" := 0D;
        "New Age" := 0;
        // continue
    end;

    procedure GetMemberDetails()
    begin
        IntFields();
        if Students.Get() then begin
            "First Name" := Students."First Name";
            "Middle Name" := Students."Second Name";
            "Sur Name" := Students."Sur Name";
            "Full Name" := Students."Full Name";
            "Date Of Birth" := Students."Date of Birth";
            Age := Students.Age;

            //continue

        end;
    end;

    procedure UpdateStudents(StdNo: Code[20])
    var
        OldStudent: Record Student;

    begin
        if OldStudent.Get(StdNo) then begin
            if Students.Get(StdNo) then begin
                if "Change Type" = "Change Type"::General then begin
                    if "New First Name" <> '' then
                        Students."First Name" := "New First Name";
                    Students.Modify();
                end;
            end;
        end;
    end;



}
