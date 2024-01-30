page 50100 "Course List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Course;
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("ID: "; Rec."Course No.")
                {
                    ApplicationArea = All;
                    Editable = false;
                    Caption = 'Id del curso';
                }
                field("DESCRIPCIÓN: "; Rec."Description course")
                {
                    ApplicationArea = All;
                    Caption = 'Descripción del curso';
                }
                field("HORAS TOTALES: "; Rec."Total hours")
                {
                    ApplicationArea = All;
                    Caption = 'Horas totales del curso';
                }
                field("TARIFA DEL CURSO: "; Rec."Course fee")
                {
                    ApplicationArea = All;
                    Caption = 'Tarifa del curso';
                }
                field("ID DEPART. OFERT.: "; Rec."Course provider No.")
                {
                    ApplicationArea = All;
                }
                field("DEPART. OFERTADOR: "; Rec."Course provider name")
                {
                    ApplicationArea = All;
                }
                field("ID PROF. IMPART.: "; Rec."Teacher No.")
                {
                    ApplicationArea = All;
                }
                field("PROF. IMPARTIDOR: "; Rec."Teacher name")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}