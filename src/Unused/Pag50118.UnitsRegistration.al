page 50118 "Units Registrations"
{
    ApplicationArea = All;
    Caption = 'Units Registration';
    PageType = Card;

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';

            }
            group("Course Details")
            {
                part("Current Course"; "Current Course")
                {
                    ApplicationArea = All;
                }
            }
            group("Units Taken")
            {
                part("Current Units"; "Units Registered")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}

