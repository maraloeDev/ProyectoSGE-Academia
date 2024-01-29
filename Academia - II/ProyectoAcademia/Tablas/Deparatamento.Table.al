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
        field(5; "Nombre Prof. Jefe"; Text[50])
        {
            FieldClass = FlowField;
            CalcFormula = lookup(Profesor."Nombre Profesor" where("Id. Profesor" = field("Id. Prof. Jefe")));
        }
        field(6; "Promedio Tarifas"; Integer)
        {
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = average(Curso."Tarifa Curso" where("Id. Depart. Ofert." = field("Id. Depart.")));
        }
    }
    keys
    {
        key(pk1; "Id. Depart.")
        {
            Clustered = true;
        }
    }
}