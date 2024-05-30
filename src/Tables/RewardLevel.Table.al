table 50100 Reward_Level
{
    Caption = 'Reward Level Table';
    Description = 'Rewards given to Customers';

    DataClassification = ToBeClassified;

    fields
    {
        field(1; Date; Date)
        {
            DataClassification = ToBeClassified;

        }

        field(2; "Created By"; Text[15])
        {
            DataClassification = ToBeClassified;
        }

        field(3; "Customer No."; Integer)
        {
            DataClassification = ToBeClassified;
        }

        field(4; "Customer Name"; Text[15])
        {
            DataClassification = ToBeClassified;
        }

        field(5; Location; Text[15])
        {
            DataClassification = ToBeClassified;
        }

        field(6; Rewarded; Boolean)
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(Key1; "Customer No.")
        {
            Clustered = true;
        }

        key(sk; Location)
        {

        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        variable1: Integer;
        variable2: Integer;


    trigger OnInsert()
    begin
        Message('Data Inserted');
    end;

    trigger OnModify()
    begin
        Message('Data Modified');
    end;

    trigger OnDelete()
    begin
        Message('Data Deleted');
    end;

    trigger OnRename()
    begin
        Message('Data Renamed');
    end;

}