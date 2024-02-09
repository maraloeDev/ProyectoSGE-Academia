page 50115 "Stadistic - Couse SubPage"
{
    PageType = ListPart;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Course;

    layout
    {
        area(Content)
        {
            group("Stadistics")
            {
                Caption = 'Stadistics', comment = 'ESP="Estadísticas"';
                field("Number of Students"; Rec."Number of Students")
                {
                    Caption = 'Number of Students', comment = 'ESP="Número de alumnos"';
                    ApplicationArea = All;
                }
                field("Course provider Name"; Rec."Course provider Name")
                {
                    Caption = 'Course provider Name', comment = 'ESP="Nombre del departamento"';
                    ApplicationArea = All;
                }
            }
        }
    }
}