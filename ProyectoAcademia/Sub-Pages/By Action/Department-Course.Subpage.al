page 50115 "Department - Course Subpage"
{
    PageType = ListPart;
    SourceTable = Course;
    UsageCategory = Administration;
    ApplicationArea = All;
    Caption = 'Department - Course Subpage', comment = 'ESP="Subpágina de Curso de Departamento"';
    layout
    {
        area(Content)
        {
            group("Course Information")
            {
                Caption = 'Course Information', comment = 'ESP="Información del Curso"';

                field("Description"; Rec.Description)
                {
                    Caption = 'Description', comment = 'ESP="Descripción"';
                    Tooltip = 'Description of the course.', comment = 'ESP="Descripción del curso."';
                    ApplicationArea = All;
                }

                field("Teacher"; Rec."Teacher Name")
                {
                    Caption = 'Teacher', comment = 'ESP="Profesor"';
                    Tooltip = 'Name of the teacher for the course.', comment = 'ESP="Nombre del profesor del curso."';
                    ApplicationArea = All;
                }

                field("Total hours"; Rec."Total hours")
                {
                    Caption = 'Total hours', comment = 'ESP="Horas totales"';
                    Tooltip = 'Total hours of the course.', comment = 'ESP="Horas totales del curso."';
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action("Enrolled Students")
            {
                Caption = 'Enrolled Students', comment = 'ESP="Estudiantes matriculados"';
                Tooltip = 'View students enrolled in this course.', comment = 'ESP="Ver estudiantes matriculados en este curso."';
                ApplicationArea = All;
                RunObject = page "Registration List";
                RunPageLink = "No. Course Enrolled" = field("No.");
                RunPageMode = View;
            }

            action("Course Data")
            {
                Caption = 'Course Data', comment = 'ESP="Datos del curso"';
                Tooltip = 'View detailed data about this course.', comment = 'ESP="Ver datos detallados sobre este curso."';
                ApplicationArea = All;
                RunObject = page "Course List";
                RunPageLink = "No." = field("No.");
                RunPageMode = View;
            }
        }
    }
}