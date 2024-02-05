page 50108 "Curso : Tipos de cursos"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Course;

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General', comment = 'ESP="General"';

                field("Course No."; Rec."No.")
                {
                    ApplicationArea = All;
                }

                field("Description"; Rec."Description")
                {
                    ApplicationArea = All;
                }
            }
            group(Profesor)
            {
                Caption = 'Teacher', comment = 'ESP="Profesor"';

                field("Teacher No."; Rec."No.")
                {
                    ApplicationArea = All;
                }
                field("Teacher Name"; Rec."Teacher Name")
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