table 50106 Horario
{
    DataClassification = ToBeClassified;
    Caption = 'Horario';

    fields
    {
        field(1; "ID"; Text[50]) { DataClassification = ToBeClassified; }

        field(2; "DESCRIPCIÓN"; Text[50]) { }

        field(3; "DIA DE LA SEMANA"; Text[50]) { }

        field(4; "HORA DE INICIO"; Time) { }
        field(5; "HORA DE FIN"; Time) { }

        field(6; "ID DEL CURSO"; Text[50]) { TableRelation = cursos."ID"; }
    }
    keys
    {
        key(pk1; "ID")
        {
            Clustered = true;
        }
    }
}