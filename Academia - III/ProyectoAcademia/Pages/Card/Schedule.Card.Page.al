page 50121 "Schedule CardPage"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Schedule;

    layout
    {
        area(Content)
        {
            group(General)
            {

                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                }

                field("Detail No."; Rec."Detail No.")
                {
                    ApplicationArea = All;
                }

                field(Weekday; Rec.Weekday)
                {
                    ApplicationArea = All;
                }

                field("Start Time"; Rec."Start Time")
                {
                    ApplicationArea = All;
                }

                field("End Time"; Rec."End Time")
                {
                    ApplicationArea = All;
                }

                field("Course No."; Rec."Course No.")
                {
                    ApplicationArea = All;
                }

                field("Course Name"; Rec."Course Name")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}