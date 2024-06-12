table 50102 Student
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
        field(5; "Full Name"; Text[20])
        {
            DataClassification = ToBeClassified;
        }

        field(6; "ID No."; Integer)
        {
            DataClassification = ToBeClassified;
        }

        field(7; "Captured By"; Blob)
        {
            DataClassification = ToBeClassified;
        }

        field(8; "Date of Application"; Date)
        {
            DataClassification = ToBeClassified;
        }

        field(9; Course; Text[20])
        {
            DataClassification = ToBeClassified;
        }

        field(10; "Phone No."; Integer)
        {
            DataClassification = ToBeClassified;
        }

        field(11; Email; Text[20])
        {
            DataClassification = ToBeClassified;
        }

        field(12; "Home County"; Text[15])
        {
            DataClassification = ToBeClassified;
        }

        field(13; "Date of Birth"; Date)
        {
            DataClassification = ToBeClassified;
        }

        field(14; age; Integer)
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK1; "Student No.", "ID No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

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