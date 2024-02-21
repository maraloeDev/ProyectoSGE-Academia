page 50104 "Schedule List"
{
    PageType = List;
    SourceTable = Schedule;
    Caption = 'Schedule List', comment = 'ESP="Lista de Horarios"';
    Description = 'This page displays a list of schedules for courses in the academy.';
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
                    Description = 'The unique identifier of the schedule.';
                }
                field("DETAIL No."; Rec."Detail No.")
                {
                    Caption = 'DETAIL No.', comment = 'ESP="No. DETALLE"';
                    ApplicationArea = All;
                    Description = 'The detail number associated with the schedule.';
                }
                field("WEEKDAY"; Rec."Weekday")
                {
                    Caption = 'WEEKDAY', comment = 'ESP="DÍAS DE LA SEMANA"';
                    ApplicationArea = All;
                    Description = 'The weekday of the schedule.';
                }
                field("START TIME"; Rec."Start Time")
                {
                    Caption = 'START TIME', comment = 'ESP="HORA INICIAL"';
                    ApplicationArea = All;
                    Description = 'The start time of the schedule.';
                }
                field("END TIME"; Rec."End Time")
                {
                    Caption = 'END TIME', comment = 'ESP="HORA FINAL"';
                    ApplicationArea = All;
                    Description = 'The end time of the schedule.';
                }
                field("COURSE No."; Rec."Course No.")
                {
                    Caption = 'COURSE No.', comment = 'ESP="No. CURSO"';
                    ApplicationArea = All;
                    Description = 'The identifier of the course associated with the schedule.';
                }
                field("COURSE NAME"; Rec."Course Name")
                {
                    Caption = 'COURSE NAME', comment = 'ESP="NOMBRE CURSO"';
                    ApplicationArea = All;
                    Description = 'The name of the course associated with the schedule.';
                }
            }
        }
    }
}
