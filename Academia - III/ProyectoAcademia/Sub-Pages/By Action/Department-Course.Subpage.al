page 50113 "Department - Course Subpage"
{
    PageType = ListPart;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Course;
    Caption = 'Department - Course Subpage', comment = 'ESP="Subpágina de Curso de Departamento"';
    Description = 'This subpage displays detailed information about courses.';

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
                    ApplicationArea = All;
                    Description = 'Description of the course.';
                }

                field("Teacher"; Rec."Teacher Name")
                {
                    Caption = 'Teacher', comment = 'ESP="Profesor"';
                    ApplicationArea = All;
                    Description = 'Name of the teacher for the course.';
                }

                field("Total hours"; Rec."Total hours")
                {
                    Caption = 'Total hours', comment = 'ESP="Horas totales"';
                    ApplicationArea = All;
                    Description = 'Total hours of the course.';
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
                ApplicationArea = All;
                Description = 'View students enrolled in this course.';
                RunObject = page "Registration List";
                RunPageLink = "No. Course Enrolled" = field("No.");
                RunPageMode = View;
            }

            action("Course Data")
            {
                Caption = 'Course Data', comment = 'ESP="Datos del curso"';
                ApplicationArea = All;
                Description = 'View detailed data about this course.';
                RunObject = page "Course List";
                RunPageLink = "No." = field("No.");
                RunPageMode = View;
            }
        }
    }
}
