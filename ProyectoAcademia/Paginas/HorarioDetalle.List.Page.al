page 50103 "Horario/Detalle List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Detalle;
    layout
    {
        area(Content)
        {
            repeater(Repeater)
            {
                field("ID: "; Rec."Id. Detalle")
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field("DÍA DE LA SEMANA: "; Rec."Dia Semana")
                {
                    ApplicationArea = All;
                }
                field("HORA DE INICIO: "; Rec."Hora Inicial")
                {
                    ApplicationArea = All;
                }
                field("HORA DE FIN: "; Rec."Hora Fin")
                {
                    ApplicationArea = All;
                }
                field("CURSO: "; Rec."Nombre Curso")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}