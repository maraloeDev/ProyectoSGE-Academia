table 50104 Personal
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "ID"; Text[100])
        {
            DataClassification = ToBeClassified;

        }

        field(2; "NOMBRE"; Text[100])
        {

        }
        field(3; "DIRECCIÓN"; Text[100])
        {

        }
        field(4; "SALARIO"; Decimal)
        {

        }
        field(5; "PUESTO"; Text[100]) // Con options???
        {

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