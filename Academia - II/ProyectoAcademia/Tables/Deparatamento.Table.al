table 50101 "Department"
{
    DataClassification = ToBeClassified;
    Caption = 'Departement', comment = 'ESP="DEPARTAMENTO"';
    fields
    {
        field(1; "Department No."; Integer)
        {
            Caption = 'DEPARTMENT NO.', comment = 'ESP="NOMBRE DEL DEPARTAMENTO"';
            AutoIncrement = true;
        }
        field(2; "Department name"; Text[50])
        {
            Caption = 'DEPARTMENT NAME', comment = 'ESP="NOMBRE DEL DEPARTAMENTO"';
        }
        field(3; "Assigned office"; Text[50])
        {
            Caption = 'ASSIGNED OFFICE', comment = 'ESP="DESPACHO ASIGNADO"';
        }
        field(4; "Id. professor. head"; Integer) { TableRelation = teacher."Teacher .Id"; }
        field(5; "Name  professor. head"; Text[50])
        {
            Caption = 'NAME OF THE HEAD PROFESSOR', comment = 'ESP="NOMBRE DEL PROFESOR JEFE"';
            FieldClass = FlowField;
            CalcFormula = lookup(teacher."Teacher Name" where("Teacher .Id" = field("Id. professor. head")));
        }
        field(6; "Average fees"; Decimal)
        {
            Caption = 'AVERAGE FEES', comment = 'ESP="PROMEDIO DE TARIFAS"';
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