table 50128 "Student Cue"
{
    Caption = 'Student Cue';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Primary Key"; Code[20])
        {
            Caption = 'Primary Key';
        }
        field(2; "No. of Users Logged On"; Integer)
        {
            Caption = 'No. of Users Logged On';
            FieldClass = FlowField;
            CalcFormula = count("Active Session" where("Client Type" = const("Web Client")));
        }
        field(3; "Total No. of Minutes Logged On"; Decimal)
        {
            Caption = 'Total No. of Minutes Logged On';
            FieldClass = FlowField;
            CalcFormula = sum("User Time Register".Minutes);
        }
        field(4; "Number Of Student Applications"; Integer)
        {
            Caption = 'No. Of Student Applications';
            FieldClass = FlowField;
            CalcFormula = count("Student Application Table");
        }
        field(5; "Number Of Students"; Integer)
        {
            Caption = 'No. Of Students';
            FieldClass = FlowField;
            CalcFormula = count("Student Table");
        }
        field(6; "Number Of Courses Offered"; Integer)
        {
            Caption = 'No. of Courses Offered';
            FieldClass = FlowField;
            CalcFormula = count(Course);
        }
        field(7; "Number Of Units Offered"; Integer)
        {
            Caption = 'No. of Units Offered';
            FieldClass = FlowField;
            CalcFormula = count("Units Pool");
        }
    }
    keys
    {
        key(PK; "Primary Key")
        {
            Clustered = true;
        }
    }
}
