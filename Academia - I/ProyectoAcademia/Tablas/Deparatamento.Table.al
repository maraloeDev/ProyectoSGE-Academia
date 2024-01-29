table 50101 Departamento
{
    DataClassification = ToBeClassified;
    Caption = 'Departamento';
    fields
    {
        field(1; "Id. Depart."; Integer) { AutoIncrement = true; }
        field(2; "Nombre Depart."; Text[50]) { }
        field(3; "Despacho Asign."; Text[50]) { }
        field(4; "Id. Prof. Jefe"; Integer) { TableRelation = Profesor."Id. Profesor"; }
    }
    keys
    {
        key(pk1; "Id. Depart.")
        {
            Clustered = true;
        }
    }
}