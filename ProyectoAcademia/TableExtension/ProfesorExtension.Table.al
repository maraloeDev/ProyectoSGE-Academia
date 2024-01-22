tableextension 50100 "Profesor" extends "Profesor"
{
    fields
    {
        field(50100; "Nº AYUDANTES"; Integer)
        {
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = count(Personal.ID where("PROFESOR JEFE" = field(NOMBRE)));
        }

        field(50101; "Nº CURSOS IMPART."; Integer)
        {
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = count(cursos.ID where("PROF. IMPARTIDOR" = field(NOMBRE)));
        }
    }
}