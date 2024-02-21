page 50108 "Course CardPage"
{
    PageType = Card;
    SourceTable = Course;
    ApplicationArea = All;
    UsageCategory = Administration;
    Caption = 'Course CardPage', comment = 'ESP="Ficha de Curso"';
    layout
    {

        area(content)
        {
            group("General")
            {
                Caption = 'General', comment = 'ESP="General"';
                field("Name of Curse"; Rec.Description)
                {
                    Caption = 'Name of Curse', comment = 'ESP="Nombre del Curso"';
                    ApplicationArea = All;
                }
                field("Course provider No."; Rec."Course provider No.")
                {
                    Caption = 'Course provider No.', comment = 'ESP="No. Prov. del curso"';
                    ApplicationArea = All;
                }
                field("Course provider Name"; Rec."Course provider Name")
                {
                    Caption = 'Course provider Name', comment = 'ESP="Nombre prov. del curso"';
                    ApplicationArea = All;
                }
            }

            group("Teacher")
            {
                Caption = 'Teacher', comment = 'ESP="Profesor"';
                field("Teacher No."; Rec."Teacher No.")
                {
                    Caption = 'Teacher No.', comment = 'ESP="No. del Profesor"';
                    ApplicationArea = All;
                }
                field("Teacher name"; Rec."Teacher Name")
                {
                    Caption = 'Teacher name', comment = 'ESP="Nombre del Profesor"';
                    ApplicationArea = All;
                }
            }
            group("Estadísticas")
            {
                Caption = 'Estadísticas', comment = 'ESP="Estadísticas"';
                field("Number of Students"; Rec."Number of Students")
                {
                    Caption = 'Number of Students', comment = 'ESP="Número de Alumnos"';
                    ApplicationArea = All;
                }
                field("Total hours"; Rec."Total hours")
                {
                    Caption = 'Total hours', comment = 'ESP="Horas totales"';
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
