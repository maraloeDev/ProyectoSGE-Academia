table 50104 "Schedule"
{
    DataClassification = ToBeClassified;
    Caption = 'SCHEDULE', comment = 'ESP="HORARIO"';
    fields
    {
        field(1; "Id. Horario"; Integer) { AutoIncrement = true; Editable = false; }

        field(2; "Id. Curso"; Integer) { TableRelation = course."Id. Curso"; }

        field(3; "Id. Detalle"; Integer) { TableRelation = Detail."Id. Detalle"; }
        field(50100; "Dia Semana"; Text[50])
        {
            Caption = 'WEEKDAY ', comment = 'ESP="DIA DE LA SEMANA"';
            FieldClass = FlowField;
            CalcFormula = lookup(Detail."Dia Semana" where("Id. Detalle" = field("Id. Detalle")));
        }
        field(4; "Hora Inicial"; Integer)
        {
            Caption = 'START TIME', comment = 'ESP="HORA INICIAL"';
            FieldClass = FlowField;
            CalcFormula = lookup(Detail."Hora Inicial" where("Id. Detalle" = field("Id. Detalle")));
        }
        field(5; "Hora Fin"; Integer)
        {
            Caption = 'END TIME', comment = 'ESP="HORA FINAL"';
            FieldClass = FlowField;
            CalcFormula = lookup(Detail."Hora Fin" where("Id. Detalle" = field("Id. Detalle")));
        }
        field(6; "Nombre Curso"; Text[50])
        {
            Caption = 'COURSE NAME', comment = 'ESP="NOMBRE DEL CURSO"';
            FieldClass = FlowField;
            CalcFormula = lookup(course."Descripción Curso" where("Id. Curso" = field("Id. Curso")));
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