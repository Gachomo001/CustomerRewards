page 50110 "Course List"
{
    ApplicationArea = All;
    Caption = 'Course';
    PageType = List;
    SourceTable = Course;
    UsageCategory = Lists;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Course Code"; Rec."Course Code")
                {
                    ToolTip = 'Specifies the value of the Course Code field.', Comment = '%';
                }
                field("Course Name"; Rec."Course Name")
                {
                    ToolTip = 'Specifies the value of the Course Name field.', Comment = '%';
                }
                field("Student No."; Rec."Student No.")
                {
                    ToolTip = 'Specifies the value of the Course Name field.', Comment = '%';
                }
            }
        }
    }
}
