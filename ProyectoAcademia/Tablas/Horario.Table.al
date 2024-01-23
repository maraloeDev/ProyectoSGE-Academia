table 50104 "Horario"
{
    DataClassification = ToBeClassified;
    Caption = 'Horario del curso';
    fields
    {
        field(1; "Id. Horario"; Integer) { DataClassification = ToBeClassified; }

        field(2; "Id. Curso"; Integer) { TableRelation = Curso."Id. Curso"; }

        field(6; "Id. Detalle"; Integer) { TableRelation = Detalle."Id. Detalle"; }
    }
    keys
    {
        key(pk1; "Id. Horario")
        {
            Clustered = true;
        }
    }
}