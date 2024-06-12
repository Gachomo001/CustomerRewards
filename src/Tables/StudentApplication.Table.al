table 50116 "Student Application Table"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Application No."; Code[20])
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
            trigger OnValidate()
            var
                TestID: Code[20];
            begin
                if "ID No." <> '' then begin
                    if StrLen("ID No.") < 6 then
                        Error('Invalid ID No.');

                    TestID := DelChr("ID No.", '=', 'A|B|C|D|E|E|F|G|H|I|J|K|L|M|N|O|P|Q|R|S|T|U|V|W|X|Y|Z|.|,|!|@|#|$|%|^|&|*|(|)|[|]|{|}|/|\|"|;|:|<|>|?|-|_');
                    if TestID <> "ID No." then
                        Error('Invalid ID No. Invalid Character detected');

                end;
            end;
        }

        field(7; "Captured By"; Code[50])
        {
            DataClassification = ToBeClassified;
        }

        field(8; "Date of Application"; Date)
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
            trigger OnValidate()
            var
                TestID: Code[20];
            begin
                if "Phone No." <> '' then begin
                    if StrLen("Phone No.") < 6 then
                        Error('Invalid Phone No.');

                    TestID := DelChr("Phone No.", '=', 'A|B|C|D|E|E|F|G|H|I|J|K|L|M|N|O|P|Q|R|S|T|U|V|W|X|Y|Z|.|,|!|@|#|$|%|^|&|*|(|)|[|]|{|}|/|\|"|;|:|<|>|?|-|_');
                    if TestID <> "Phone No." then
                        Error('Invalid Phone No. Invalid Character detected');

                end;
            end;
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

                if "Date of Birth" <> 0D then
                    age := Date2DMY(Today, 3) - Date2DMY("Date of Birth", 3);
            end;
        }

        field(14; age; Integer)
        {
            DataClassification = ToBeClassified;
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
    }

    keys
    {
        key(PK; "Application No.")
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


        if Rec."Application No." = '' then begin
            NoSeries.InitSeries('APPL', xRec."No. Series", 0D, "Application No.", "No. Series");
        end;
        "Captured By" := UserId;
        "Date of Application" := Today;
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