page 50124 "Fees Details"
{
    ApplicationArea = All;
    Caption = 'Fees Details';
    PageType = List;
    SourceTable = "Student Fee Table";
    UsageCategory = Lists;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Student No."; Rec."Student No.")
                {
                    ToolTip = 'Specifies the value of the Student No. field.', Comment = '%';
                    TableRelation = "Student Table";
                }
                field("Annual Fee Payable"; Rec."Annual Fee Payable")
                {
                    ToolTip = 'Specifies the value of the Annual Fee Payable field.', Comment = '%';
                }
                field("Current Semester Fee Payable"; Rec."Current Semester Fee Payable")
                {
                    ToolTip = 'Specifies the value of the Current Semester Fee Payable field.', Comment = '%';
                }
                field("Annual Fee Paid"; Rec."Annual Fee Paid")
                {
                    ToolTip = 'Specifies the value of the Annual Fee Paid field.', Comment = '%';
                }
                field("Annual Fee Balance"; Rec."Annual Fee Balance")
                {
                    ToolTip = 'Specifies the value of the Annual Fee Balance field.', Comment = '%';
                }
            }
        }
    }
}
