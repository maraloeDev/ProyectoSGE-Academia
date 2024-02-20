page 50103 "Schedule List"
{
    PageType = List;
    SourceTable = Schedule;
    Caption = 'Schedule List', comment = 'ESP="Lista de Horarios"';
    ApplicationArea = All;
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("SCHEDULE No."; Rec."No.")
                {
                    Caption = 'No.', comment = 'ESP="No."';
                    ApplicationArea = All;
                }
                field("DETAIL No."; Rec."Detail No.")
                {
                    Caption = 'DETAIL No.', comment = 'ESP="No. DETALLE"';
                    ApplicationArea = All;
                }
                field("WEEKDAY"; Rec."Weekday")
                {
                    Caption = 'WEEKDAY', comment = 'ESP="DÍAS DE LA SEMANA"';
                    ApplicationArea = All;
                }
                field("START TIME"; Rec."Start Time")
                {
                    Caption = 'START TIME', comment = 'ESP="HORA INICIAL"';
                    ApplicationArea = All;
                }
                field("END TIME"; Rec."End Time")
                {
                    Caption = 'END TIME', comment = 'ESP="HORA FINAL"';
                    ApplicationArea = All;
                }
                field("COURSE No."; Rec."Course No.")
                {
                    Caption = 'COURSE No.', comment = 'ESP="No. CURSO"';
                    ApplicationArea = All;
                }
                field("COURSE NAME"; Rec."Course Name")
                {
                    Caption = 'COURSE NAME', comment = 'ESP="NOMBRE CURSO"';
                    ApplicationArea = All;
                }
            }
        }
    }
}