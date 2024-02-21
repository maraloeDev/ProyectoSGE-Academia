page 50107 "Course CardPage"
{
    PageType = Card;
    SourceTable = Course;
    ApplicationArea = All;
    UsageCategory = Administration;
    Caption = 'Course CardPage', comment = 'ESP="Ficha de Curso"';
    Description = 'This card page displays detailed information about a course.';

    layout
    {
        area(content)
        {
            group("General")
            {
                Caption = 'General', comment = 'ESP="General"';
                Description = 'General information about the course.';

                field("Description"; Rec.Description)
                {
                    Caption = 'Description', comment = 'ESP="Nombre del Curso"';
                    ApplicationArea = All;
                    Description = 'The name or description of the course.';
                }

                field("Course provider No."; Rec."Course provider No.")
                {
                    Caption = 'Course provider No.', comment = 'ESP="No. Prov. del curso"';
                    ApplicationArea = All;
                    Description = 'The identification number of the course provider.';
                }

                field("Course provider Name"; Rec."Course provider Name")
                {
                    Caption = 'Course provider Name', comment = 'ESP="Nombre prov. del curso"';
                    ApplicationArea = All;
                    Description = 'The name of the course provider.';
                }
            }

            group("Teacher")
            {
                Caption = 'Teacher', comment = 'ESP="Profesor"';
                Description = 'Information about the teacher of the course.';

                field("Teacher No."; Rec."Teacher No.")
                {
                    Caption = 'Teacher No.', comment = 'ESP="No. del Profesor"';
                    ApplicationArea = All;
                    Description = 'The identification number of the teacher.';
                }

                field("Teacher name"; Rec."Teacher Name")
                {
                    Caption = 'Teacher name', comment = 'ESP="Nombre del Profesor"';
                    ApplicationArea = All;
                    Description = 'The name of the teacher.';
                }
            }

            group("Statistics")
            {
                Caption = 'Statistics', comment = 'ESP="Estadísticas"';
                Description = 'Statistics related to the course.';

                field("Number of Students"; Rec."Number of Students")
                {
                    Caption = 'Number of Students', comment = 'ESP="Número de Alumnos"';
                    ApplicationArea = All;
                    Description = 'The total number of students enrolled in the course.';
                }

                field("Total hours"; Rec."Total hours")
                {
                    Caption = 'Total hours', comment = 'ESP="Horas totales"';
                    ApplicationArea = All;
                    Description = 'The total number of hours for the course.';
                }
            }
        }

        area(FactBoxes)
        {
            part("Statistics - Course"; "Statistics - Course SubPage")
            {
                Caption = 'Statistics - Course', comment = 'ESP="Estadisticas - Curso"';
                Description = 'Detailed statistics for the course.';
                ApplicationArea = All;
                SubPageLink = "No." = field("No.");
            }
        }
    }
}
