page 50103 "Schedule Page"
{
    PageType = List;
    SourceTable = Schedule;
    Caption = 'SCHEDULE PAGE', comment = 'ESP="PÁGINA DEL HORARIO"';

    layout
    {
        area(content)
        {
            group(General)
            {
                field("Schedule No."; Rec."Schedule No.")
                {
                    ApplicationArea = All;
                    Caption = 'SCHEDULE No.', comment = 'ESP="ID HORARIO"';
                }
                field("Course No."; Rec."Course No.")
                {
                    ApplicationArea = All;
                    Caption = 'COURSE NO.', comment = 'ESP="CODIGO DEL CURSO"';
                }
                field("Detail No."; Rec."Detail No.")
                {
                    ApplicationArea = All;
                    Caption = 'DETAIL NO.', comment = 'ESP="ID DETALLE"';
                }
                field("Weekday"; Rec."Weekday")
                {
                    ApplicationArea = All;
                    Caption = 'WEEKDAY ', comment = 'ESP="DIA DE LA SEMANA"';
                }
                field("Start Time"; Rec."Start Time")
                {
                    ApplicationArea = All;
                    Caption = 'START TIME', comment = 'ESP="HORA INICIAL"';
                }
                field("End Time"; Rec."End Time")
                {
                    ApplicationArea = All;
                    Caption = 'END TIME', comment = 'ESP="HORA FINAL"';
                }
                field("Course Name"; Rec."Course Name")
                {
                    ApplicationArea = All;
                    Caption = 'COURSE NAME', comment = 'ESP="NOMBRE DEL CURSO"';
                }
            }
        }
    }
}