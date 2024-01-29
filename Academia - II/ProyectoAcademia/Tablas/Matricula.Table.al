table 50105 "Matricula"
{
    DataClassification = ToBeClassified;
    Caption = 'Matricula de los alumnos';
    fields
    {
        field(1; "Id. Matricula"; Integer) { AutoIncrement = true; }
        field(2; "FechaHora Matricula"; DateTime) { }
        field(3; "Id. Estudte. Matrldo."; Integer) { TableRelation = Estudiante."Id. Estudiante"; }
        field(5; "Id. Curso Matrldo."; Integer) { TableRelation = Curso."Id. Curso"; }
        field(6; "Nombre Estudiante Mtrldo."; Text[50])
        {
            FieldClass = FlowField;
            CalcFormula = lookup(Estudiante."Nombre Estudiante" where("Id. Estudiante" = field("Id. Estudte. Matrldo.")));
        }
        field(7; "Nombre Curso Mtrldo."; Text[50])
        {
            FieldClass = FlowField;
            CalcFormula = lookup(Curso."Descripción Curso" where("Id. Curso" = field("Id. Curso Matrldo.")));
        }
    }
    keys
    {
        key(pk1; "Id. Matricula")
        {
            Clustered = true;
        }
    }
}