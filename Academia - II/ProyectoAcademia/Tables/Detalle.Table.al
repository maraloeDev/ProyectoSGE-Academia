table 50103 "Detail"
{
    DataClassification = ToBeClassified;
    Caption = 'Detail', comment = 'ESP="Detalle"';
    fields
    {
        field(1; "No."; Integer)
        {
            AutoIncrement = true;
            Caption = 'No.', comment = 'ESP="No."';
        }
        field(3; "Weekday"; Text[50])
        {
            Caption = 'Weekday', comment = 'ESP="Dia Semana"';
        }
        // Horas
        field(4; "Start Time"; Integer)
        {
            Caption = 'Start Time', comment = 'ESP="Hora Inicio"';
        }
        field(5; "End Time"; Integer)
        {
            Caption = 'End Time', comment = 'ESP="Hora Fin"';
        }
        // Horario
        field(6; "Schedule .No"; Integer)
        {
            Caption = 'Schedule .No', comment = 'ESP="Horario No."';
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