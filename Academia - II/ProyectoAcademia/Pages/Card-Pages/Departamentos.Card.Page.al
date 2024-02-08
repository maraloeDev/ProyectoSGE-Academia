page 50113 "Departamento CardPage"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Department;

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
                field("Name"; Rec.Name)
                {
                    ApplicationArea = All;
                }
            }
            group(Comunication)
            {
                field("Head Professor"; Rec."Head Professor Name")
                {
                    ApplicationArea = All;
                }
                field("Office"; Rec."Assigned office")
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
            action("Navegar - Profesores")
            {
                ApplicationArea = All;
                RunObject = page "Teacher List";
                RunPageLink = "No. Depart. Asign." = field("No.");
                RunPageMode = View;
            }
            action("Navegar - Coordenador")
            {
                ApplicationArea = All;
                RunObject = page "Teacher List";
                RunPageLink = "No." = field("Head Professor No.");
                RunPageMode = View;
            }
            action("Cursos del Departamento")
            {
                ApplicationArea = All;
                RunObject = page "Departamento - Curso Subpage";
                RunPageLink = "Course provider No." = field("No.");
                RunPageMode = View;
            }
        }
    }

    var
        myInt: Integer;
}