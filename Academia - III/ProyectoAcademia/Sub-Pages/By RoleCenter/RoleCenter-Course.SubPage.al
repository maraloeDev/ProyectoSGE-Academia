page 50118 "Course Information"
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

                field("Lowest Fee Course"; Rec."Total hours")
                {
                    Caption = 'Lowest Fee Course', comment = 'ESP="Curso con la Tarifa Más Baja"';
                    Tooltip = 'The course with the lowest fee offered.', comment = 'ESP="El curso con la tarifa más baja ofrecida."';
                    ApplicationArea = All;
                    DrillDownPageId = "Course List";
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