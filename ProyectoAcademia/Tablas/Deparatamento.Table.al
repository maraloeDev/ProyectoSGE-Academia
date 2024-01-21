table 50101 Departamento
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "ID"; Integer)
        {
            AutoIncrement = true;
        }
        field(2; "NOMBRE"; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(3; "DESPACHO"; Text[50])
        {
            DataClassification = ToBeClassified;
        }

        field(4; "idProfesorDirector"; Integer)
        {
            TableRelation = "Profesor";
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