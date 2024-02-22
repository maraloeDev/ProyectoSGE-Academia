page 50116 "Course Information"
{
    PageType = CardPart;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Course;
    Caption = 'Course Information', comment = 'ESP="Información del Curso"';

    layout
    {
        area(Content)
        {
            cuegroup("Course Information")
            {
                Caption = 'Course Information', comment = 'ESP="Información del Curso"';
                Description = 'This card part displays information about the course.';

                field("Number of Students"; Rec."Number of Students")
                {
                    Caption = 'Number of Students', comment = 'ESP="Número de Estudiantes"';
                    ApplicationArea = All;
                    Description = 'The total number of students enrolled in the course.';
                    DrillDownPageId = "Student List";
                }

                field("Course fee"; Rec."Course fee")
                {
                    Caption = 'Course fee', comment = 'ESP="Tarifa del Curso"';
                    ApplicationArea = All;
                    Description = 'The fee associated with the course.';
                    DrillDownPageId = "Course List";
                }

                field("Total hours"; Rec."Total hours")
                {
                    Caption = 'Total hours', comment = 'ESP="Horas Totales"';
                    ApplicationArea = All;
                    Description = 'The total number of hours for the course.';
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