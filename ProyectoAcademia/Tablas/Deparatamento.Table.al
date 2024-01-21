table 50101 Departamento
{
    DataClassification = ToBeClassified;
    Caption = 'Departamento';

    fields
    {
        field(1; "ID"; Integer) { AutoIncrement = true; }
        field(2; "NOMBRE"; Text[50]) { }
        field(3; "DESPACHO"; Text[50]) { }

        field(4; "idProfesorDirector"; Integer) { TableRelation = "Profesor";Editable = false; }
    }

    keys
    {
        key(pk1; "ID")
        {
            Clustered = true;
        }
    }
}