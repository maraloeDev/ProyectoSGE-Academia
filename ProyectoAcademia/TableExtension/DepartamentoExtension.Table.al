tableextension 50101 "Departamento" extends "Departamento"
{
    fields
    {
        field(50100; "PROMEDIO TARIFAS"; Integer)
        {
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = average(cursos.TARIFA where("PROF. IMPARTIDOR" = field(NOMBRE)));

        }
    }
}