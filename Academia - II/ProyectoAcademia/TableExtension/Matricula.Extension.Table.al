tableextension 50103 "Matricula Extension" extends Matricula
{
    fields
    {
        field(50100; "Nombre Estudiante Mtrldo."; Text[50])
        {
            FieldClass = FlowField;
            CalcFormula = lookup(Estudiante."Nombre Estudiante" where("Id. Estudiante" = field("Id. Estudte. Matrldo.")));
        }
        field(50101; "Nombre Curso Mtrldo."; Text[50])
        {
            FieldClass = FlowField;
            CalcFormula = lookup(Curso."Descripción Curso" where("Id. Curso" = field("Id. Curso Matrldo.")));
        }
    }
}