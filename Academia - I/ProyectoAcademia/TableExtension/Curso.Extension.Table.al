tableextension 50100 "Curso Extension" extends Curso
{
    fields
    {
        field(50100; "Nombre Depart. Ofer."; Text[50])
        {
            FieldClass = FlowField;
            CalcFormula = lookup(Departamento."Nombre Depart." where("Id. Depart." = field("Id. Depart. Ofert.")));
        }

        field(50101; "Nombre Prof. Imp."; Text[50])
        {
            FieldClass = FlowField;
            CalcFormula = lookup(Profesor."Nombre Profesor" where("Id. Profesor" = field("Id. Prof. Impart.")));
        }
    }
}