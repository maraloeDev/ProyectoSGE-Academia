table 50101 "Department"
{
    DataClassification = ToBeClassified;
    Caption = 'Departement', comment = 'ESP="DEPARTAMENTO"';
    fields
    {
        field(1; "Department No."; Integer)
        {
            Caption = 'Department No.', comment = 'ESP="Nombre del departamento"';
            AutoIncrement = true;
        }
        field(2; "Department name"; Text[50])
        {
            Caption = 'Department name', comment = 'ESP="Nombre del departamento"';
        }
        field(3; "Assigned office"; Text[50])
        {
            Caption = 'Assigned office', comment = 'ESP="Despacho asignado"';
        }
        field(4; "Id. professor. head"; Integer) { TableRelation = teacher."Teacher .No"; }
        field(5; "Name  professor. head"; Text[50])
        {
            Caption = 'Name  professor. head', comment = 'ESP="Nombre del jefe"';
            FieldClass = FlowField;
            CalcFormula = lookup(teacher."Teacher Name" where("Teacher .No" = field("Id. professor. head")));
        }
        field(6; "Average fees"; Decimal)
        {
            Caption = 'Average fees', comment = 'ESP="Promedio de tarifas"';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = average(course."Course fee" where("Course provider No." = field("Department No.")));
        }
    }
    keys
    {
        key(pk1; "Department No.")
        {
            Clustered = true;
        }
    }
}