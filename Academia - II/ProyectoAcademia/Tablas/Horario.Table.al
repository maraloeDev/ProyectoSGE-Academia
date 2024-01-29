table 50104 "Horario"
{
    DataClassification = ToBeClassified;
    Caption = 'Horario del curso';
    fields
    {
        field(1; "Id. Horario"; Integer) { AutoIncrement = true; Editable = false; }

        field(2; "Id. Curso"; Integer) { TableRelation = Curso."Id. Curso"; }

        field(3; "Id. Detalle"; Integer) { TableRelation = Detalle."Id. Detalle"; }
        field(50100; "Dia Semana"; Text[50])
        {
            FieldClass = FlowField;
            CalcFormula = lookup(Detalle."Dia Semana" where("Id. Detalle" = field("Id. Detalle")));
        }
        field(4; "Hora Inicial"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = lookup(Detalle."Hora Inicial" where("Id. Detalle" = field("Id. Detalle")));
        }
        field(5; "Hora Fin"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = lookup(Detalle."Hora Fin" where("Id. Detalle" = field("Id. Detalle")));
        }
        field(6; "Nombre Curso"; Text[50])
        {
            FieldClass = FlowField;
            CalcFormula = lookup(Curso."Descripción Curso" where("Id. Curso" = field("Id. Curso")));
        }
    }
    keys
    {
        key(pk1; "Id. Horario")
        {
            Clustered = true;
        }
    }
}