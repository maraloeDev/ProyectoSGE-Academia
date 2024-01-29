table 50102 "Detail"
{
    DataClassification = ToBeClassified;
    Caption = 'DETAIL', comment = 'ESP="DETALLE"';
    fields
    {
        field(1; "Id. Detalle"; Integer)
        {
            AutoIncrement = true;
            Caption = 'DETAIL ID', comment = 'ESP="ID. DETALLE"';
        }
        field(3; "Dia Semana"; Text[50]) { Caption = 'WEEKDAY', comment = 'ESP="DIA DE LA SEMANA"'; }
        field(4; "Hora Inicial"; Integer) { Caption = 'START TIME', comment = 'ESP="HORA INICIAL"'; }
        field(5; "Hora Fin"; Integer) { Caption = 'END TIME', comment = 'ESP="HORA FINAL"'; }
        field(6; "Id. Horario"; Integer) { Caption = 'ID.SCHEDULE', comment = 'ESP="ID.HORARIO"'; TableRelation = schedule."Id. Horario"; }
    }
    keys
    {
        key(pk1; "Id. Detalle")
        {
            Clustered = true;
        }
    }
}