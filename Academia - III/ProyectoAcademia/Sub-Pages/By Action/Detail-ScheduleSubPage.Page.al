page 50123 "Detail-Schedule SubPage"
{
    PageType = ListPart;
    SourceTable = Detail;
    Caption = 'Detalle horario', comment = 'ESP="Detail schedule"';

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    Caption = 'No.', comment = 'ESP="Número"';
                    ToolTip = 'Detail number', comment = 'ESP="Número de detalle"';
                }
                field("Weekday"; Rec."Weekday")
                {
                    ApplicationArea = All;
                    Caption = 'Weekday', comment = 'ESP="Día de la Semana"';
                    ToolTip = 'Detail weekday', comment = 'ESP="Día de la semana del detalle"';
                    MultiLine = true;
                }
                field("Start Time"; Rec."Start Time")
                {
                    ApplicationArea = All;
                    Caption = 'Start Time', comment = 'ESP="Hora de Inicio"';
                    ToolTip = 'Detail start time', comment = 'ESP="Hora de inicio del detalle"';
                }
                field("End Time"; Rec."End Time")
                {
                    ApplicationArea = All;
                    Caption = 'End Time', comment = 'ESP="Hora de Fin"';
                    ToolTip = 'Detail end time', comment = 'ESP="Hora de fin del detalle"';
                }
            }
        }
    }
}