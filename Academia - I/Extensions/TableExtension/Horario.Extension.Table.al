tableextension 50102 "Horario/Detalle Extension" extends Horario
{
    fields
    {
        field(50100; "Dia Semana"; Text[50])
        {
            FieldClass = FlowField;
            CalcFormula = lookup(Detalle."Dia Semana" where("Id. Detalle" = field("Id. Detalle")));
        }
        field(50101; "Hora Inicial"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = lookup(Detalle."Hora Inicial" where("Id. Detalle" = field("Id. Detalle")));
        }
        field(50102; "Hora Fin"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = lookup(Detalle."Hora Fin" where("Id. Detalle" = field("Id. Detalle")));
        }
        field(50103; "Nombre Curso"; Text[50])
        {
            FieldClass = FlowField;
            CalcFormula = lookup(Curso."Descripción Curso" where("Id. Curso" = field("Id. Curso")));
        }
    }
}