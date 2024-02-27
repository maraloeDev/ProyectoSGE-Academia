page 50107 "Course CardPage"
{
    PageType = Card;
    SourceTable = Course;
    UsageCategory = None;
    Caption = 'Course CardPage', comment = 'ESP="Ficha de Curso"';
    layout
    {
        area(content)
        {
            group("General")
            {
                Caption = 'General', comment = 'ESP="General"';

                field("Description"; Rec.Description)
                {
                    Caption = 'Description', comment = 'ESP="Nombre del Curso"';
                    Tooltip = 'The name or description of the course.', comment = 'ESP="El nombre o descripción del curso."';
                    ApplicationArea = All;
                }

                field("Course provider No."; Rec."Course provider No.")
                {
                    Caption = 'Course provider No.', comment = 'ESP="No. Prov. del curso"';
                    Tooltip = 'The identification number of the course provider.', comment = 'ESP="El número de identificación del proveedor del curso."';
                    ApplicationArea = All;
                }

                field("Course provider Name"; Rec."Course provider Name")
                {
                    Caption = 'Course provider Name', comment = 'ESP="Nombre prov. del curso"';
                    Tooltip = 'The name of the course provider.', comment = 'ESP="El nombre del proveedor del curso."';
                    ApplicationArea = All;
                }
            }

            group("Teacher")
            {
                Caption = 'Teacher', comment = 'ESP="Profesor"';
                field("Teacher No."; Rec."Teacher No.")
                {
                    Caption = 'Teacher No.', comment = 'ESP="No. del Profesor"';
                    Tooltip = 'The identification number of the teacher.', comment = 'ESP="El número de identificación del profesor."';
                    ApplicationArea = All;
                }

                field("Teacher name"; Rec."Teacher Name")
                {
                    Caption = 'Teacher name', comment = 'ESP="Nombre del Profesor"';
                    Tooltip = 'The name of the teacher.', comment = 'ESP="El nombre del profesor."';
                    ApplicationArea = All;
                }
            }


            part("Detail schedule"; "Detail-Schedule SubPage")
            {
                Caption = 'Detail schedule', comment = 'ESP="Detalle del horario"';
                ApplicationArea = All;
                SubPageLink = "Course No." = field("No.");
            }
        }

        area(FactBoxes) //Las que aparecen en la parte izquierda de la card y contiene informacion adicional del curso
        {
            part("Statistics - Course"; "Statistics - Course SubPage")
            {
                Caption = 'Statistics - Course', comment = 'ESP="Estadisticas - Curso"';
                Tooltip = 'Detailed statistics for the course.', comment = 'ESP="Estadísticas detalladas del curso."';
                ApplicationArea = All;
                SubPageLink = "No." = field("No.");
            }
        }
    }
}