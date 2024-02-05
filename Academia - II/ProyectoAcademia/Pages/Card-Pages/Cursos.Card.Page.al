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
                field("Nombre del Curso"; Rec.Description)
                {
                    ApplicationArea = All;
                }
            }

            group("Teacher")
            {
                Caption = 'Teacher', comment = 'ESP="Profesor"';
                field("Nombre del Profesor"; Rec."Teacher Name")
                {
                    ApplicationArea = All;
                }
            }

            /* Juntar la tabla de profesores con la de cursos*/
            group("Estadísticas")
            {
                field("Número de Alumnos"; Rec."Number of Students")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}
