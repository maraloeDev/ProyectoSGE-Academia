table 50103 "Detail"
{
    DataClassification = ToBeClassified;
    Caption = 'Detail', comment = 'ESP="Detalle"';
    fields
    {
        field(1; "Detail No."; Integer)
        {
            AutoIncrement = true;
            Caption = 'Detail No.', comment = 'ESP="Detalle No."';
        }
        field(3; "Weekday"; Text[50])
        {
            Caption = 'Weekday', comment = 'ESP="Dia de la semana"';
        }
        field(4; "Start Time"; Integer)
        {
            Caption = 'Start Time', comment = 'ESP="Hora Inicio"';
        }
        field(5; "End Time"; Integer)
        {
            Caption = 'End Time', comment = 'ESP="Hora Fin"';
        }
        field(6; "Schedule .No"; Integer)
        {
            Caption = 'Schedule .No', comment = 'ESP="Horario No."';
            TableRelation = schedule."Schedule No.";
        }
    }
    keys
    {
        key(pk1; "Detail No.")
        {
            Clustered = true;
        }
    }
}