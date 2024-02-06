page 50113 "Matricula CardPart"
{
    PageType = CardPart;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Registration;

    layout
    {
        area(Content)
        {
            repeater(Courses)
            {
                field("No."; Rec."No.") { }
                field("Course"; Rec."Name Enrolled Course") { }
                field("Date/Time"; Rec."Date/Time Registration") { }
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