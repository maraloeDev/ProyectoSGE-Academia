tableextension 50107 "Profesor Extension" extends "Profesor"
{
    fields
    {
        field(50100; "Nombre Deprt. Asign."; Text[50])
        {
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = lookup(Departamento."Nombre Depart." where("Id. Depart." = field("Id. Depart. Asign.")));
        }

        // Campos calculados y filtros
        field(50101; "Cantidad Ayudantes"; Integer)
        {
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = count(PersonalNoDocente where("Id. Prof. Jefe" = field("Id. Profesor")));
        }
        field(50102; "Cantidad Cursos Imp."; Integer)
        {
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = count(Curso where("Id. Prof. Impart." = field("Id. Profesor")));
        }
    }
}