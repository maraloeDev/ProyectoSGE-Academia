table 50104 Personal
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Nombre del personal"; Text[100])
        {
            DataClassification = ToBeClassified;

        }
        field(2; "Dirrección del personal"; Text[100])
        {
            DataClassification = ToBeClassified;

        }
        field(3; "Salario del personal"; Decimal)
        {
            DataClassification = ToBeClassified;

        }
        field(4; "Puesto del personal"; Text[100]) // Con options???
        {
            DataClassification = ToBeClassified;

        }
    }

    keys
    {
        key(pk1; "Nombre del personal")
        {
            Clustered = true;
        }
    }
}