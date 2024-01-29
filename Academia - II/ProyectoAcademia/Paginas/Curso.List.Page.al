page 50100 "Curse List"
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
                    Caption = 'Id del curso';
                }
                field("DESCRIPCIÓN: "; Rec."Descripción Curso")
                {
                    ApplicationArea = All;
                    Caption = 'Descripción del curso';
                }
                field("HORAS TOTALES: "; Rec."Horas Totales")
                {
                    ApplicationArea = All;
                    Caption = 'Horas totales del curso';
                }
                field("TARIFA DEL CURSO: "; Rec."Tarifa Curso")
                {
                    ApplicationArea = All;
                    Caption = 'Tarifa del curso';
                }
                /*
                field("DEPART. OFERTADOR: "; Rec."Nombre Depart. Ofer.")
                {
                    ApplicationArea = All;
                }
                field("PROF. IMPARTIDOR: "; Rec."Nombre Prof. Imp.")
                {
                    ApplicationArea = All;
                }
                */
            }
        }
    }
}