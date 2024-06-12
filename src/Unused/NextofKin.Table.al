table 50103 NextofKin
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

        field(6; "Phone No."; Integer)
        {
            DataClassification = ToBeClassified;
        }

        field(7; Email; Text[20])
        {
            DataClassification = ToBeClassified;
        }

        field(8; Relationship; Text[20])
        {
            DataClassification = ToBeClassified;
        }

        field(9; Relationships; Enum NextofKinEnum)
        {
            DataClassification = ToBeClassified;
        }


    }

    keys
    {
        key(PK1; "Full Name", "Student No.", Relationship)
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