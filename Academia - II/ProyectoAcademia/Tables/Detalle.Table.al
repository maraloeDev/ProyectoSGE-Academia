table 50102 "Detail"
{
    DataClassification = ToBeClassified;
    Caption = 'DETAIL', comment = 'ESP="DETALLE"';
    fields
    {
        field(1; "Detail No."; Integer)
        {
            AutoIncrement = true;
            Caption = 'DETAIL ID', comment = 'ESP="ID. DETALLE"';
        }
        field(3; "Weekday"; Text[50]) { Caption = 'WEEKDAY', comment = 'ESP="DIA DE LA SEMANA"'; }
        field(4; "Start Time"; Integer) { Caption = 'START TIME', comment = 'ESP="HORA INICIAL"'; }
        field(5; "End Time"; Integer) { Caption = 'END TIME', comment = 'ESP="HORA FINAL"'; }
        field(6; "Schedule Id"; Integer) { Caption = 'ID.SCHEDULE', comment = 'ESP="ID.HORARIO"'; TableRelation = schedule."Schedule.Id"; }
    }
    keys
    {
        key(pk1; "Detail No.")
        {
            Clustered = true;
        }
    }
}