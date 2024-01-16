table 50101 Departamento
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Nombre del departamento"; Text[50])
        {
            DataClassification = ToBeClassified;

        }
        field(2; "Despacho asignado"; Text[50])
        {

        }
    }

    keys
    {
        key(pk1; "Nombre del departamento")
        {
            Clustered = true;
        }
    }
}