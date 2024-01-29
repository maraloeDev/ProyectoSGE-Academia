table 50105 "tuition"
{
    DataClassification = ToBeClassified;
    Caption = 'TUITION', comment = 'ESP="MATRICULA"';
    fields
    {
        field(1; "Id. Matricula"; Integer) { AutoIncrement = true; }
        field(2; "FechaHora Matricula"; DateTime) { Caption = 'DATE/TIME OF REGISTRATION', comment = 'ESP="FECHA / HORA DE LA MATRICULA"'; }
        field(3; "Id. Estudte. Matrldo."; Integer) { TableRelation = student."Id. Estudiante"; }
        field(5; "Id. Curso Matrldo."; Integer) { TableRelation = course."Id. Curso"; }
        field(6; "Nombre Estudiante Mtrldo."; Text[50])
        {
            Caption = 'NAME OF ENROLLED STUDENT ', comment = 'ESP="NOMBRE DEL ESTUDIANTE MATRICULADO"';
            FieldClass = FlowField;
            CalcFormula = lookup(student."Nombre Estudiante" where("Id. Estudiante" = field("Id. Estudte. Matrldo.")));
        }
        field(7; "Nombre Curso Mtrldo."; Text[50])
        {
            Caption = 'NAME OF ENROLLED COURSE', comment = 'ESP="NOMBRE DEL CURSO MATRICULADO"';
            FieldClass = FlowField;
            CalcFormula = lookup(course."Descripción Curso" where("Id. Curso" = field("Id. Curso Matrldo.")));
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