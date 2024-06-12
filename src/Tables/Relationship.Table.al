table 50113 Relationship
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; Relationship; Code[30])
        {
            DataClassification = ToBeClassified;

        }
    }

    keys
    {
        key(PK; Relationship)
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