table 50105 MatriculaAlumno
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Fecha y hora"; DateTime)
        {
            DataClassification = ToBeClassified;

        }
    }

    keys
    {
        key(pk1; "Fecha y hora")
        {
            Clustered = true;
        }
    }

}