report 50100 "Student Application Report"
{
    ApplicationArea = All;
    Caption = 'Student Application Report';
    UsageCategory = ReportsAndAnalysis;
    RDLCLayout = 'Student Application Report.RDL';
    DefaultLayout = RDLC;

    dataset
    {
        dataitem(StudentApplicationTable; "Student Application Table")
        {
            column(ApplicationNo; "Application No.")
            {
            }
            column(FullName; "Full Name")
            {
            }
            column(Course; Course)
            {
            }
            column(PhoneNo; "Phone No.")
            {
            }
            column(IDNo; "ID No.")
            {
            }
        }
    }
    requestpage
    {
        layout
        {
            area(Content)
            {
                group(GroupName)
                {
                }
            }
        }
        actions
        {
            area(Processing)
            {
            }
        }
    }
}
