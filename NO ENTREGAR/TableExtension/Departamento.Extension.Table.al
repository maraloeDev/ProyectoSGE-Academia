tableextension 50101 "Departamento Extension" extends Departamento
{
    fields
    {
        field(50100; "Nombre Prof. Jefe"; Text[50])
        {
            FieldClass = FlowField;
            CalcFormula = lookup(Profesor."Nombre Profesor" where("Id. Profesor" = field("Id. Prof. Jefe")));
        }

        // Campos calculados y filtros
        field(50101; "Promedio Tarifas"; Integer)
        {
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = average(Curso."Tarifa Curso" where("Id. Depart. Ofert." = field("Id. Depart.")));
        }
    }
}