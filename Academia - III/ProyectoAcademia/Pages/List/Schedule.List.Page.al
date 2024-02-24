page 50104 "Schedule List"
{
    PageType = List;
    SourceTable = Schedule;
    UsageCategory = Administration;
    ApplicationArea = All;
    Caption = 'Schedule List', comment = 'ESP="Lista de Horarios"';
    Editable = true;
    CardPageId = "Schedule CardPage";
    layout
    {
        area(content)
        {
            repeater(General)
            {
                Caption = 'General', comment = 'ESP="General"';
                field("SCHEDULE No."; Rec."No.")
                {
                    Caption = 'No.', comment = 'ESP="No."';
                    Tooltip = 'The unique identifier of the schedule.', comment = 'ESP="El identificador único del horario."';
                    ApplicationArea = All;
                }
                field("DETAIL No."; Rec."Detail No.")
                {
                    Caption = 'DETAIL No.', comment = 'ESP="No. DETALLE"';
                    Tooltip = 'The detail number associated with the schedule.', comment = 'ESP="El número de detalle asociado con el horario."';
                    ApplicationArea = All;
                }
                field("WEEKDAY"; Rec."Weekday")
                {
                    Caption = 'WEEKDAY', comment = 'ESP="DÍAS DE LA SEMANA"';
                    Tooltip = 'The weekday of the schedule.', comment = 'ESP="El día de la semana del horario."';
                    ApplicationArea = All;
                }
                field("START TIME"; Rec."Start Time")
                {
                    Caption = 'START TIME', comment = 'ESP="HORA INICIAL"';
                    Tooltip = 'The start time of the schedule.', comment = 'ESP="La hora de inicio del horario."';
                    ApplicationArea = All;
                }
                field("END TIME"; Rec."End Time")
                {
                    Caption = 'END TIME', comment = 'ESP="HORA FINAL"';
                    Tooltip = 'The end time of the schedule.', comment = 'ESP="La hora de finalización del horario."';
                    ApplicationArea = All;
                }
                field("COURSE No."; Rec."Course No.")
                {
                    Caption = 'COURSE No.', comment = 'ESP="No. CURSO"';
                    Tooltip = 'The identifier of the course associated with the schedule.', comment = 'ESP="El identificador del curso asociado con el horario."';
                    ApplicationArea = All;
                }
                field("COURSE NAME"; Rec."Course Name")
                {
                    Caption = 'COURSE NAME', comment = 'ESP="NOMBRE CURSO"';
                    Tooltip = 'The name of the course associated with the schedule.', comment = 'ESP="El nombre del curso asociado con el horario."';
                    ApplicationArea = All;
                }
            }
        }
    }
}