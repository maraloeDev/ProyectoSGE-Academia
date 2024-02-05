page 50109 "Course-Registration CardPart"
{
    PageType = CardPart;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Course;
    layout
    {
        area(Content)
        {
            field("Description"; Rec."Description")
            {
                Caption = 'Description', comment = 'ESP="Descripción"';
                ApplicationArea = All;
                Editable = false;
            }
            field("Department"; Rec."Course provider Name")
            {
                Caption = 'Department', comment = 'ESP="Departamento"';
                ApplicationArea = All;
                Editable = false;
            }
            field("Teacher"; Rec."Teacher Name")
            {
                Caption = 'Teacher', comment = 'ESP="Profesor"';
                ApplicationArea = All;
                Editable = false;
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

                    trigger OnAction()
                    begin

                    end;
                }
            }
        }

            var
                myInt: Integer;*/
}