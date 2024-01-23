table 50100 "Curso"
{
    DataClassification = ToBeClassified;
    Caption = 'Curso';
    fields
    {
        field(1; "Id. Curso"; Integer) { DataClassification = ToBeClassified; AutoIncrement = true; }
        field(3; "Descripción Curso"; Text[50]) { }
        field(4; "Horas Totales"; Integer) { }
        field(5; "Tarifa Curso"; Decimal) { }
        field(6; "Id. Prof. Impart."; Integer) { TableRelation = Profesor."Id. Profesor"; }
        field(7; "Id. Depart. Ofert."; Integer) { TableRelation = Departamento."Id. Depart."; }
    }
    keys
    {
        key(pk1; "Id. Curso")
        {
            Clustered = true;
        }
    }
}