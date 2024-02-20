page 50118 "Informacion del curso"
{
    PageType = CardPart;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Course;

    layout
    {
        area(Content)
        {
            cuegroup("Informacion del curso")
            {
                field("Number of Students"; Rec."Number of Students")
                {
                    ApplicationArea = All;
                    DrillDownPageId = "Student List";
                }
                field("Course fee"; Rec."Course fee")
                {
                    ApplicationArea = All;
                    DrillDownPageId = "Course List";
                }
                field("Total hours"; Rec."Total hours")
                {
                    ApplicationArea = All;
                    DrillDownPageId = "Schedule List";
                }
            }
        }
    }
    /*
        actions
        {
            area(Processing)
            {
                action(ActionName)
                {
                    ApplicationArea = All;

                    trigger OnAction();
                    begin

                    end;
                }
            }
        }

        trigger OnOpenPage()
        var
            myInt: Integer;
        begin

        end;
    */
}