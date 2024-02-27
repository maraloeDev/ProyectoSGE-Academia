page 50111 "Schedule CardPage"
{
    PageType = Card;
    SourceTable = Schedule;
    UsageCategory = None;
    Caption = 'Schedule CardPage', comment = 'ESP="Página de Tarjeta de Horario"';
    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General', comment = 'ESP="General"';
                field("No."; Rec."No.")
                {
                    Caption = 'Number', comment = 'ESP="Número"';
                    Tooltip = 'The identification number of the schedule.', comment = 'ESP="El número de identificación del horario."';
                    ApplicationArea = All;
                }
                field("Detail No."; Rec."Detail No.")
                {
                    Caption = 'Detail Number', comment = 'ESP="Número de Detalle"';
                    Tooltip = 'The detail number of the schedule.', comment = 'ESP="El número de detalle del horario."';
                    ApplicationArea = All;
                }
                field(Weekday; Rec.Weekday)
                {
                    Caption = 'Weekday', comment = 'ESP="Día de la Semana"';
                    Tooltip = 'The weekday of the schedule.', comment = 'ESP="El día de la semana del horario."';
                    ApplicationArea = All;
                }
                field("Start Time"; Rec."Start Time")
                {
                    Caption = 'Start Time', comment = 'ESP="Hora de Inicio"';
                    Tooltip = 'The start time of the schedule.', comment = 'ESP="La hora de inicio del horario."';
                    ApplicationArea = All;
                }
                field("End Time"; Rec."End Time")
                {
                    Caption = 'End Time', comment = 'ESP="Hora de Finalización"';
                    Tooltip = 'The end time of the schedule.', comment = 'ESP="La hora de finalización del horario."';
                    ApplicationArea = All;
                }
                field("Course No."; Rec."Course No.")
                {
                    Caption = 'Course Number', comment = 'ESP="Número de Curso"';
                    Tooltip = 'The identification number of the associated course.', comment = 'ESP="El número de identificación del curso asociado."';
                    ApplicationArea = All;
                }
                field("Course Name"; Rec."Course Name")
                {
                    Caption = 'Course Name', comment = 'ESP="Nombre del Curso"';
                    Tooltip = 'The name of the associated course.', comment = 'ESP="El nombre del curso asociado."';
                    ApplicationArea = All;
                }
            }
        }
    }
}
