table 50102 cursos
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "ID"; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(2; "NOMBRE"; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(3; "DESCRIPCION"; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(4; "HORAS"; Time)
        {
            DataClassification = ToBeClassified;
        }
        field(5; "TARIFA"; Decimal)
        {
            DataClassification = ToBeClassified;
        }

        field(6; "idImpartidor"; Text[50])
        {
            TableRelation = Profesor.ID;
        }
        field(7; idOfertador; Text[50])
        {
            TableRelation = Departamento.ID;
        }

        field(8; "idHorario"; Text[50])
        {
            TableRelation = Horario.ID;
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