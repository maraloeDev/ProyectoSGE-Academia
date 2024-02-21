page 50119 "Informacion del Departamento"
{
    PageType = CardPart;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Department;

    layout
    {
        area(Content)
        {
            cuegroup("Informacion del Departamento")
            {
                field("Average fees"; Rec."Average fees")
                {
                    ApplicationArea = All;
                    DrillDownPageId = "Course List";
                }
                field("Number of teachers"; Rec."Number of teachers")
                {
                    ApplicationArea = All;
                    DrillDownPageId = "Teacher List";
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