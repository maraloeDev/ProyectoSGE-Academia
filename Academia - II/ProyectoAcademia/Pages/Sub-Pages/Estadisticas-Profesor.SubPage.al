page 50114 "Stadistic - Teacher SubPage"
{
    PageType = ListPart;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Teacher;

    layout
    {
        area(Content)
        {
            group("Stadistics")
            {
                Caption = 'Stadistics', comment = 'ESP="Estadisticas"';
                field("Nº de ayudantes"; Rec."Number of helpers")
                {
                    Caption = 'Number of helpers', comment = 'ESP="Numero de ayudantes"';
                    ApplicationArea = All;
                }
                field("Nº de cursos que imparte"; Rec."Number of courses given")
                {
                    Caption = 'Number of courses given', comment = 'ESP="Numero de cursos que imparte"';
                    ApplicationArea = All;
                }
            }
        }
    }
}