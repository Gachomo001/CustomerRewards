report 50101 "Student Report"
{
    ApplicationArea = All;
    Caption = 'Student Report';
    UsageCategory = ReportsAndAnalysis;
    RDLCLayout = 'Student Report.RDL';
    DefaultLayout = RDLC;

    dataset
    {
        dataitem(StudentTable; "Student Table")
        {
            column(StudentNo; "Student No.")
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
            column(age; age)
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
