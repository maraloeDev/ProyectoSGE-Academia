table 50100 Profesor
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Nombre del profesor"; Text[100])
        {
            DataClassification = ToBeClassified;

        }
        field(2; "Direccion del profesor"; Text[100])
        {

        }

        field(3; "Fecha de contratacion"; Date)
        {

        }

        field(4; "Salario del profesor"; Decimal)
        {

        }
    }

    keys
    {
        key(pk1; "Nombre del profesor")
        {
            Clustered = true;
        }
    }
}