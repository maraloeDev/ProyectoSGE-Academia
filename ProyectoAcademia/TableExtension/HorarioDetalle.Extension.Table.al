tableextension 50102 "Horario/Detalle Extension" extends Detalle
{
    fields
    {
        field(50100; "Nombre Curso"; Text[50])
        {
            FieldClass = FlowField;
            CalcFormula = lookup(Curso."Descripción Curso" where("Id. Curso" =(
                lookup(Horario."Id. Curso" where("Id. Curso"= "Id. Horario")))));
        }
    }
}