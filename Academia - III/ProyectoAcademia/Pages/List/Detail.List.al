page 50122 "Detail List"
{
    PageType = List;
    SourceTable = Detail;
    UsageCategory = Administration;
    ApplicationArea = All;
    Caption = 'Detail List', comment = 'ESP="Lista de Detalles"';

    layout
    {
        area(content)
        {
            repeater(General)
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