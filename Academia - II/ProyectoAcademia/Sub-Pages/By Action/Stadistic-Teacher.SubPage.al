page 50115 "Stadistic - Teacher SubPage"
{
    PageType = ListPart;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Teacher;
    Caption = 'Stadistic - Teacher SubPage', comment = 'ESP="Estadisticas - Profesor SubPage"';
    layout
    {
        area(Content)
        {
            group("Stadistics")
            {
                Caption = 'Stadistics', comment = 'ESP="Estadísticas"';
                field("Number of helpers"; Rec."Number of helpers")
                {
                    Caption = 'Number of helpers', comment = 'ESP="Numero de ayudantes"';
                    ApplicationArea = All;
                }
                field("Number of courses given"; Rec."Number of courses given")
                {
                    Caption = 'Number of courses given', comment = 'ESP="Numero de cursos que imparte"';
                    ApplicationArea = All;
                }
            }
        }
    }
}