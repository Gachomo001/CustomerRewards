page 50122 "School Role Center"
{
    ApplicationArea = All;
    Caption = 'School Role Center';
    PageType = RoleCenter;

    layout
    {
        area(RoleCenter)
        {
            part(Headline; "Headline RC Business Manager")
            {
                ApplicationArea = Basic, Suite;
            }
            part(StudentActivities; "Student Activities")
            {
                ApplicationArea = Basic, Suite;
            }
        }
    }
    actions
    {
        area(Sections)
        {
            group(Application)
            {
                action("Student Applications")
                {
                    ApplicationArea = all;
                    RunObject = page StudentApplicationsList;
                }
            }
            group(Student)
            {
                action(Students)
                {
                    ApplicationArea = all;
                    RunObject = page "Student List";
                }
            }
            group(Courses)
            {
                action("Courses Offered")
                {
                    ApplicationArea = all;
                    RunObject = page "Course List";
                }
            }
        }
        area(Creation)
        {
            action("&Application")
            {
                ApplicationArea = All;
                RunObject = page "Student Application Card";
                RunPageMode = Create;
            }
        }
    }
}
profile Student
{
    ProfileDescription = 'Student';
    RoleCenter = "School Role Center";
    Caption = 'Student';
}
