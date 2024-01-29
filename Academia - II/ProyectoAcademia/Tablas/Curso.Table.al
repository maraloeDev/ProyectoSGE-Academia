table 50100 "Curso"
{
    DataClassification = ToBeClassified;
    Caption = 'Curso';
    fields
    {
        field(1; "Id. Curso"; Integer) { AutoIncrement = true; Editable = false; }
        field(3; "Descripción Curso"; Text[50]) { }
        field(4; "Horas Totales"; Integer) { }
        field(5; "Tarifa Curso"; Decimal) { }
        field(6; "Id. Prof. Impart."; Integer) { TableRelation = Profesor."Id. Profesor"; }
        field(7; "Id. Depart. Ofert."; Integer) { TableRelation = Departamento."Id. Depart."; }
        field(8; "Nombre Depart. Ofer."; Text[50])
        {
            FieldClass = FlowField;
            CalcFormula = lookup(Departamento."Nombre Depart." where("Id. Depart." = field("Id. Depart. Ofert.")));
        }
        field(9; "Nombre Prof. Imp."; Text[50])
        {
            FieldClass = FlowField;
            CalcFormula = lookup(Profesor."Nombre Profesor" where("Id. Profesor" = field("Id. Prof. Impart.")));
        }
    }
    keys
    {
        key(pk1; "Id. Curso")
        {
            Clustered = true;
        }
    }
}