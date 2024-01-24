tableextension 50104 "Personal No Docente Extension" extends PersonalNoDocente
{
    fields
    {
        field(50100; "Nombre Prof. Jefe"; Text[50])
        {
            FieldClass = FlowField;
            CalcFormula = lookup(Profesor."Nombre Profesor" where("Id. Profesor" = field("Id. Prof. Jefe")));
        }
    }
}