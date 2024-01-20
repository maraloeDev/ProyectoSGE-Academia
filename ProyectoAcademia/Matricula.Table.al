table 50105 MatriculaAlumno
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "ID"; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(2; "FECHA Y HORA"; DateTime)
        {
            DataClassification = ToBeClassified;
        }
        field(3; "IDESTUDIANTE"; Text[50])
        {
            TableRelation = "Estudiante".ID;
        }

        field(4; "IDCURSO"; Text[50])
        {
            TableRelation = "cursos".ID;
        }
    }

    keys
    {
        key(pk1; "ID")
        {
            Clustered = true;
        }
    }
}