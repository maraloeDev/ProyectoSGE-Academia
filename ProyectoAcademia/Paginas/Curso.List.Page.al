page 50100 "Cursos List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Curso;
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("ID: "; Rec."Id. Curso")
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field("DESCRIPCIÓN: "; Rec."Descripción Curso")
                {
                    ApplicationArea = All;
                }
                field("HORAS TOTALES: "; Rec."Horas Totales")
                {
                    ApplicationArea = All;
                }
                field("TARIFA DEL CURSO: "; Rec."Tarifa Curso")
                {
                    ApplicationArea = All;
                }
                field("DEPART. OFERTADOR: "; Rec."Nombre Depart. Ofer.")
                {
                    ApplicationArea = All;
                }
                field("PROF. IMPARTIDOR: "; Rec."Nombre Prof. Imp.")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}