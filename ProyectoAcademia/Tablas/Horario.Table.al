table 50106 Horario
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "ID"; Text[50])
        {
            DataClassification = ToBeClassified;
        }

        field(2; "DIA DE LA SEMANA"; Text[50])
        {
            DataClassification = ToBeClassified;
        }

        field(3; "HORA DE INICIO"; Time)
        {

        }
        field(4; "HORA DE FIN"; Time)
        {
        }

        field(5; "ID DEL CURSO"; Text[50])
        {
            TableRelation = cursos."ID";
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