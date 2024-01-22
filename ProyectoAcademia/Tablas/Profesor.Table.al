table 50100 Profesor
{
    DataClassification = ToBeClassified;
    Caption = 'Profesor';

    fields
    {
        field(1; "ID"; Integer) { AutoIncrement = true; }
        field(2; "ID departamento"; Integer) { TableRelation = "Departamento"; }
        field(3; "NOMBRE"; Text[100]) { }
        field(4; "DIRECCIÓN"; Text[100]) { }
        field(5; "FECHA DE CONTRATACION"; Date) { }
        field(6; "SALARIO"; Decimal) { }
        field(7; "DEPART. ASIGNADO"; Text[100]) { DataClassification = ToBeClassified; TableRelation = "Departamento"; }
    }

    keys
    {
        key(pk1; "ID")
        {
            Clustered = true;
        }
    }
}