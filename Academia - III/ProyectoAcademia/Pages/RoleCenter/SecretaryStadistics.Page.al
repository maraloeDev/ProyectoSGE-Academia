page 50124 "Secretary Stadistics"
{
    PageType = CardPart;
    SourceTable = Course;

    layout
    {
        area(Content)
        {
            cuegroup(Stadistics)
            {

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

    trigger OnOpenPage()
    var
    begin
        Rec.Reset;
        if not Rec.Get then begin
            Rec.Init;
            Rec.Insert;
        end;
    end;
}