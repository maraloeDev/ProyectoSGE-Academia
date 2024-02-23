page 50117 "Statistics - Course SubPage"
{
    PageType = CardPart;
    SourceTable = Course;
    Caption = 'Statistics - Course SubPage', comment = 'ESP="Subpágina de Estadísticas - Curso"';
    layout
    {
        area(Content)
        {

            field("Number of Students"; Rec."Number of Students")
            {
                Caption = 'Number of Students', comment = 'ESP="Número de Alumnos"';
                Tooltip = 'The total number of students enrolled in the course.', comment = 'ESP="El número total de estudiantes inscritos en el curso."';
                ApplicationArea = All;
            }

            field("Total hours"; Rec."Total hours")
            {
                Caption = 'Total hours', comment = 'ESP="Horas totales"';
                Tooltip = 'The total number of hours for the course.', comment = 'ESP="El número total de horas para el curso."';
                ApplicationArea = All;
            }

            field("COURSE FEE"; Rec."Course fee")
            {
                Caption = 'COURSE FEE', comment = 'ESP="TARIFA"';
                Tooltip = 'The fee for the course.', comment = 'ESP="La tarifa del curso."';
                ApplicationArea = All;
            }
        }
    }
}