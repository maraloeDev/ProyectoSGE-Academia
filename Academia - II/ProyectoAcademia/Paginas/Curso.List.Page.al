page 50100 "Course List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = course;
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
                field("ID DEPART. OFERT.: "; Rec."Id. Depart. Ofert.")
                {
                    ApplicationArea = All;
                }
                field("DEPART. OFERTADOR: "; Rec."Nombre Depart. Ofer.")
                {
                    ApplicationArea = All;
                }
                field("ID PROF. IMPART.: "; Rec."Id. Prof. Impart.")
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