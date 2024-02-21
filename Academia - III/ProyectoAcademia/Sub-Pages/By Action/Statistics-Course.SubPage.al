page 50115 "Statistics - Course SubPage"
{
    PageType = ListPart;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Course;
    Caption = 'Statistics - Course SubPage', comment = 'ESP="Subpágina de Estadísticas - Curso"';
    Description = 'This subpage displays statistics related to courses.';

    layout
    {
        area(Content)
        {
            group("Statistics")
            {
                Caption = 'Statistics', comment = 'ESP="Estadísticas"';
                Description = 'Statistics related to the course.';

                field("Number of Students"; Rec."Number of Students")
                {
                    Caption = 'Number of Students', comment = 'ESP="Número de alumnos"';
                    ApplicationArea = All;
                    Description = 'The total number of students enrolled in the course.';
                }

                field("Course provider Name"; Rec."Course provider Name")
                {
                    Caption = 'Course provider Name', comment = 'ESP="Nombre del departamento"';
                    ApplicationArea = All;
                    Description = 'The name of the department offering the course.';
                }
            }
        }
    }
}
