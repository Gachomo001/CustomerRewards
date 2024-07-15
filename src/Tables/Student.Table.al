table 50114 "Student Table"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Student No."; Code[20])
        {
            DataClassification = ToBeClassified;
        }

        field(2; "First Name"; Text[20])
        {
            DataClassification = ToBeClassified;
        }

        field(3; "Second Name"; Text[20])
        {
            DataClassification = ToBeClassified;
        }

        field(4; "Sur Name"; Text[20])
        {
            DataClassification = ToBeClassified;
        }

        //auto generated full name comprising of first, second and sur names
        field(5; "Full Name"; Text[70])
        {
            DataClassification = ToBeClassified;
        }

        field(6; "ID No."; Code[20])
        {
            DataClassification = ToBeClassified;
        }

        field(7; "Captured By"; Code[100])
        {
            DataClassification = ToBeClassified;
        }

        field(8; "Date of Acceptance"; Date)
        {
            DataClassification = ToBeClassified;
        }

        field(9; Course; Code[20])
        {
            TableRelation = Course;
        }

        field(10; "Phone No."; Code[20])
        {
            DataClassification = ToBeClassified;
        }

        field(11; Email; Text[100])
        {
            DataClassification = ToBeClassified;
        }

        field(12; "Home County"; Code[50])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Home County";
        }

        field(13; "Date of Birth"; Date)
        {
            DataClassification = ToBeClassified;
            trigger OnValidate()
            begin
                if "Date of Birth" >= Today() then
                    Error('You cannot be born in the future');

                age := Date2DMY(Today, 3) - Date2DMY("Date of Birth", 3);
            end;
        }

        field(14; age; Integer)
        {
            DataClassification = ToBeClassified;
            Editable = false;
        }

        field(15; "No. Series"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(16; Created; Boolean)
        {
            DataClassification = ToBeClassified;
        }
        field(17; "Current Year Of Study"; Integer)
        {
            Caption = 'Current Year Of Study';
            DataClassification = ToBeClassified;
        }
        field(18; "Current Semester Of Study"; Integer)
        {
            Caption = 'Current Semester Of Study';
            DataClassification = ToBeClassified;
        }

    }

    keys
    {
        key(PK; "Student No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        NoSeries: Codeunit NoSeriesManagement;

    trigger OnInsert()
    begin


        if Rec."Student No." = '' then begin
            NoSeries.InitSeries('STDT', xRec."No. Series", 0D, "Student No.", "No. Series");
        end;

        "Captured By" := UserId;
        "Date of Acceptance" := Today;
    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}