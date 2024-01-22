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
        field(6; "PROF. IMPARTIDOR"; Text[50]) { TableRelation = Profesor.NOMBRE; }
        field(7; "CURSO OFERTADOR"; Text[50]) { TableRelation = Departamento.NOMBRE; }
        field(8; "HORARIO"; Text[50]) { TableRelation = Horario."DESCRIPCIÓN"; }
    }

    keys
    {
        key(pk1; "ID")
        {
            Clustered = true;
        }
    }
}