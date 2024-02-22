page 50115 "Statistics - Course SubPage"
{
    PageType = ListPart;
    SourceTable = Course;
    UsageCategory = Administration;
    ApplicationArea = All;
    Caption = 'Statistics - Course SubPage', comment = 'ESP="Subpágina de Estadísticas - Curso"';
    layout
    {
        area(Content)
        {
            group("Statistics")
            {
                Caption = 'Statistics', comment = 'ESP="Estadísticas"';
                field("Number of Students"; Rec."Number of Students")
                {
                    Caption = 'Number of Students', comment = 'ESP="Número de alumnos"';
                    Tooltip = 'The total number of students enrolled in the course.', comment = 'ESP="El número total de estudiantes matriculados en el curso."';
                    ApplicationArea = All;
                }

                field("Course provider Name"; Rec."Course provider Name")
                {
                    Caption = 'Course provider Name', comment = 'ESP="Nombre del departamento"';
                    Tooltip = 'The name of the department offering the course.', comment = 'ESP="El nombre del departamento que ofrece el curso."';
                    ApplicationArea = All;
                }
            }
        }
    }
}