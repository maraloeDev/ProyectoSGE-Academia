table 50102 "Detail"
{
    DataClassification = ToBeClassified;
    Caption = 'Detail', comment = 'ESP="Detalle"';
    fields
    {
        field(1; "No."; Integer)
        {
            Caption = 'No.', comment = 'ESP="Número"';
            AutoIncrement = true;
            Editable = false;
        }
        field(2; "Weekday"; Text[50])
        {
            Caption = 'Weekday', comment = 'ESP="Día de la Semana"';
        }
        // Horas
        field(3; "Start Time"; Time)
        {
            Caption = 'Start Time', comment = 'ESP="Hora de Inicio"';
        }
        field(4; "End Time"; Time)
        {
            Caption = 'End Time', comment = 'ESP="Hora de Fin"';
        }
        // Horario
        field(5; "Schedule No."; Integer)
        {
            Caption = 'Schedule No.', comment = 'ESP="Número de Horario"';
            TableRelation = Schedule."No.";
        }
    }
    keys
    {
        key(pk1; "No.")
        {
            Clustered = true;
        }
    }
}
