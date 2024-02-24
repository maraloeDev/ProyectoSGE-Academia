page 50124 "Secretary Stadistics"
{
    PageType = CardPart;
    SourceTable = "Secretary/Admon. Table";

    layout
    {
        area(Content)
        {
            cuegroup(Stadistics)
            {
                field("Number of Students"; Rec."Number of Students")
                {
                    Caption = 'Number of Students', comment = 'ESP="Número total de Estudiantes Matriculados"';
                    DrillDownPageId = "Student List";
                    ApplicationArea = ALL;
                }
                field("Lowest Fee Course"; Rec."Lowest Fee Course")
                {
                    Caption = 'Lowest Fee Course', comment = 'ESP="Curso con la Tarifa Más Baja"';
                    DrillDownPageId = "Course List";
                    ApplicationArea = ALL;
                }
                field("Number of teachers"; Rec."Number of teachers")
                {
                    Caption = 'Number of teachers', comment = 'ESP="Número de profesores"';
                    DrillDownPageId = "Teacher List";
                    ApplicationArea = ALL;

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