page 50116 "Course SubPage"
{
    PageType = CardPart;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Course;
    Caption = 'Course SubPage', comment = 'ESP="Subpágina Curso"';

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
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                }

                field("Total hours"; Rec."Total hours")
                {
                    ApplicationArea = All;
                }
                field("Course fee"; Rec."Course fee")
                {
                    ApplicationArea = All;
                }
                field("Teacher Name";Rec."Teacher Name")
                {
                    ApplicationArea = All;
                }

                field("Course provider No.";Rec."Course provider No.")
                {
                    ApplicationArea = All;
                }
                field("Course provider Name";Rec."Course provider Name")
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