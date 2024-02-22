page 50116 "Course Information"
{
    PageType = CardPart;
    SourceTable = Course;
    UsageCategory = Administration;
    ApplicationArea = All;
    Caption = 'Course Information', comment = 'ESP="Información del Curso"';
    layout
    {
        area(Content)
        {
            cuegroup("Course Information")
            {
                Caption = 'Course Information', comment = 'ESP="Información del Curso"';
                field("Number of Students"; Rec."Number of Students")
                {
                    Caption = 'Number of Students', comment = 'ESP="Número de Estudiantes"';
                    Tooltip = 'The total number of students enrolled in the course.', comment = 'ESP="El número total de estudiantes matriculados en el curso."';
                    ApplicationArea = All;
                    DrillDownPageId = "Student List";
                }

                field("Course fee"; Rec."Course fee")
                {
                    Caption = 'Course fee', comment = 'ESP="Tarifa del Curso"';
                    Tooltip = 'The fee associated with the course.', comment = 'ESP="La tarifa asociada al curso."';
                    ApplicationArea = All;
                    DrillDownPageId = "Course List";
                }

                field("Total hours"; Rec."Total hours")
                {
                    Caption = 'Total hours', comment = 'ESP="Horas Totales"';
                    Tooltip = 'The total number of hours for the course.', comment = 'ESP="El número total de horas del curso."';
                    ApplicationArea = All;
                    DrillDownPageId = "Schedule List";
                }
            }
        }
    }
    trigger OnOpenPage();
    begin
        Rec.Reset();
        if not Rec.Get() then begin
            Rec.Init();
            Rec.Insert();
        end;
    end;
}