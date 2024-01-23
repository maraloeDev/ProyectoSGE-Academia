table 50107 "Profesor"
{
    DataClassification = ToBeClassified;
    Caption = 'Profesor';
    fields
    {
        field(1; "Id. Profesor"; Integer) { AutoIncrement = true; }
        field(2; "Nombre Profesor"; Text[50]) { }
        field(3; "Dirección Profesor"; Text[50]) { }
        field(4; "Fecha Contratación"; Date) { }
        field(5; "Salario Profesor"; Decimal) { }
        field(6; "Id. Depart. Asign."; Integer) { TableRelation = Departamento."Id. Depart."; }
    }
    keys
    {
        key(pk1; "Id. Profesor")
        {
            Clustered = true;
        }
    }
}