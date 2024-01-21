table 50102 cursos
{
    DataClassification = ToBeClassified;
    Caption = 'Cursos';

    fields
    {
        field(1; "ID"; Integer) { DataClassification = ToBeClassified; AutoIncrement = true; }
        field(2; "NOMBRE"; Text[50]) { }
        field(3; "DESCRIPCION"; Text[100]) { }
        field(4; "HORAS"; Integer) { }
        field(5; "TARIFA"; Decimal) { }
        field(6; "idImpartidor"; Text[50]) { TableRelation = Profesor.ID; Editable = false; }
        field(7; "idOfertador"; Text[50]) { TableRelation = Departamento.ID; Editable = false; }
        field(8; "idHorario"; Text[50]) { TableRelation = Horario.ID; Editable = false; }
    }

    keys
    {
        key(pk1; "ID")
        {
            Clustered = true;
        }
    }
}