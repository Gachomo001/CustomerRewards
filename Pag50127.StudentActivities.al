page 50127 "Student Activities"
{
    ApplicationArea = All;
    Caption = 'Activities';
    PageType = CardPart;
    SourceTable = "Student Cue";
    RefreshOnActivate = true;

    layout
    {
        area(Content)
        {
            cuegroup(General)
            {
                CuegroupLayout = Wide;
                ShowCaption = false;
                Caption = 'General';

                field("Total No. of Minutes Logged On"; Rec."Total No. of Minutes Logged On")
                {
                    ToolTip = 'Specifies the value of the Total No. of Minutes Logged On field.', Comment = '%';
                    ApplicationArea = Suite;
                    DrillDownPageId = "User Time Registers";
                }
            }
            cuegroup(StudentInfo)
            {
                field("No. of Users Logged On"; Rec."No. of Users Logged On")
                {
                    ToolTip = 'Specifies the value of the No. of Users Logged On field.', Comment = '%';
                    ApplicationArea = Suite;
                    DrillDownPageId = "Concurrent Session List";
                }
                field("Number Of Student Applications"; Rec."Number Of Student Applications")
                {
                    ToolTip = 'Specifies the value of the Number of Student Applications field', Comment = '%';
                    ApplicationArea = Suite;
                    DrillDownPageId = StudentApplicationsList;
                }
                field("Number Of Students"; Rec."Number Of Students")
                {
                    ToolTip = 'Specifies the value of the Number of Student field', Comment = '%';
                    ApplicationArea = Suite;
                    DrillDownPageId = "Student List";
                }
            }
            cuegroup(Overview)
            {
                field("Number Of Courses Offered"; Rec."Number Of Courses Offered")
                {
                    ToolTip = 'Specifies the value of the Number Of Courses Offered field';
                    ApplicationArea = Suite;
                    DrillDownPageId = "Course List";
                }
                field("Number Of Units Offered"; Rec."Number Of Units Offered")
                {
                    ToolTip = 'Specifies the value of the Number Of Units Offered field';
                    ApplicationArea = Suite;
                    DrillDownPageId = "Units Pool List";
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            action("Set Up Cues")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Set Up Cues';
                Image = Setup;
                ToolTip = 'Set up the cues (status tiles) related to the role';

                trigger OnAction()
                var
                    CuesAndKpis: Codeunit "Cues And KPIs";
                    CueRecordRef: RecordRef;
                begin
                    CueRecordRef.GetTable(Rec);
                    CuesAndKpis.OpenCustomizePageForCurrentUser(CueRecordRef.Number);
                end;
            }
        }
    }
    trigger OnOpenPage()
    begin
        if not Rec.get then begin
            Rec.Init();
            Rec.Insert();
        end;
    end;
}
