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
                field("Número de Alumnos"; Rec."Number of Students")
                {
                    ApplicationArea = All;
                }
            }
        }
        area(FactBoxes)
        {
            /*ChartTitle = 'Estadísticas';
            ChartCategory = "Teacher Name";
            ChartSeries = "Number of Students";
     */
        }
    }

    // Incluye un FactBox “Estadísticas”, que muestra el nº de ayudantes que tiene el profesor y el
    //nº de cursos que imparte. 
}
