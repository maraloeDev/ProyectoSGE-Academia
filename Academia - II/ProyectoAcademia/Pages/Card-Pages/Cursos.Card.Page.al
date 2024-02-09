page 50108 "Curso Card"
{
    PageType = Card;
    SourceTable = Course;
    Caption = 'Gestión de Cursos';

    layout
    {

        area(content)
        {
            group("General")
            {
                Caption = 'General', comment = 'ESP="General"';
                field("Nombre del Curso"; Rec.Description)
                {
                    Caption = 'Name of Curse', comment = 'ESP="Nombre del Curso"';
                    ApplicationArea = All;
                }
            }

            group("Teacher")
            {
                Caption = 'Teacher', comment = 'ESP="Profesor"';
                field("Nombre del Profesor"; Rec."Teacher Name")
                {
                    Caption = 'Teacher name', comment = 'ESP="Nombre del Profesor"';
                    ApplicationArea = All;
                }
            }
            group("Estadísticas")
            {
                Caption = 'Estadísticas', comment = 'ESP="Estadísticas"';
                field("Número de Alumnos"; Rec."Number of Students")
                {
                    Caption = 'Number of Students', comment = 'ESP="Número de Alumnos"';
                    ApplicationArea = All;
                }
            }
        }
        area(FactBoxes)
        {
            part(Stadistics; "Stadistic - Couse SubPage")
            {
                Caption = 'Stadistics', comment = 'ESP="Estadisticas"';
                ApplicationArea = All;
                SubPageLink = "No." = field("No.");
            }
        }
    }

}
