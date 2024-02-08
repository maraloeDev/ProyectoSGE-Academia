page 50109 "Departamento - Curso Subpage"
{
    PageType = ListPart;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Course;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(Name; NameSource)
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
            action("Curso - Matrículas")
            {
                ApplicationArea = All;
                RunObject = page "Teacher List";
                RunPageLink = "No." = field("Head Professor No.");
                RunPageMode = View;
            }
            action("Curso – Datos")
            {
                ApplicationArea = All;
                RunObject = page "Teacher List";
                RunPageLink = "No." = field("Head Professor No.");
                RunPageMode = View;
            }
        }
    }

    var
        myInt: Integer;
}