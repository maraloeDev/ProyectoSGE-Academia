table 50101 "Department"
{
    DataClassification = ToBeClassified;
    Caption = 'Departement', comment = 'ESP="DEPARTAMENTO"';
    fields
    {
        field(1; "Department No."; Integer)
        {
            Caption = 'Department No.', comment = 'ESP="NOMBRE DEL DEPARTAMENTO"';
            AutoIncrement = true;
        }
        field(2; "Department name"; Text[50])
        {
            Caption = 'Department name', comment = 'ESP="NOMBRE DEL DEPARTAMENTO"';
        }
        field(3; "Despacho Asign."; Text[50])
        {
            Caption = 'ASSIGNED OFFICE', comment = 'ESP="DESPACHO ASIGNADO"';
        }
        field(4; "Id. Prof. Jefe"; Integer) { TableRelation = teacher."Id. Profesor"; }
        field(5; "Nombre Prof. Jefe"; Text[50])
        {
            Caption = 'NAME OF THE HEAD PROFESSOR', comment = 'ESP="NOMBRE DEL PROFESOR JEFE"';
            FieldClass = FlowField;
            CalcFormula = lookup(teacher."Nombre Profesor" where("Id. Profesor" = field("Id. Prof. Jefe")));
        }
        field(6; "Promedio Tarifas"; Decimal)
        {
            Caption = 'AVERAGE FEES', comment = 'ESP="PROMEDIO DE TARIFAS"';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = average(course."Course fee" where("Course provider No." = field("Id. Depart.")));
        }
    }
    keys
    {
        key(pk1; "Departement No.")
        {
            Clustered = true;
        }
    }
}