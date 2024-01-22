tableextension 50102 cursos extends cursos
{
    fields
    {
        field(50100; "CURSADO"; Boolean)
        {
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = exist(Matricula.ID where("CURSO" = field(NOMBRE)));

        }
    }
}