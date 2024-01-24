table 50102 "Detalle"
{
    DataClassification = ToBeClassified;
    Caption = 'Detalle del horario';
    fields
    {
        field(1; "Id. Detalle"; Integer) { AutoIncrement = true; }
        field(3; "Dia Semana"; Text[50]) { }
        field(4; "Hora Inicial"; Integer) { }
        field(5; "Hora Fin"; Integer) { }
        field(6; "Id. Horario"; Integer) { TableRelation = Horario."Id. Horario"; }
    }
    keys
    {
        key(pk1; "Id. Detalle")
        {
            Clustered = true;
        }
    }
}