table 50102 cursos
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Nombre"; Text[50])
        {
            DataClassification = ToBeClassified;

        }

        field(2; "Descripcion"; Text[100])
        {

        }
        field(3; "Horas Totales"; Time)
        {

        }

        field(4; "Tarifa del laboratorio"; Text[100])
        {

        }
    }

    keys
    {
        key(pk1; "Nombre")
        {
            Clustered = true;
        }
    }
}