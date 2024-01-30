table 50101 Departament
{
    DataClassification = ToBeClassified;
    Caption = 'DEPARTAMENT', comment = 'ESP="DEPARTAMENTO"';
    fields
    {
        field(1; "Id. Depart."; Integer) { AutoIncrement = true; }
        field(2; "Nombre Depart."; Text[50]) { Caption = 'NAME DEPARTAMENT', comment = 'ESP="NOMBRE DEL DEPARTAMENTO"'; }
        field(3; "Despacho Asign."; Text[50]) { Caption = 'ASSIGNED OFFICE', comment = 'ESP="DESPACHO ASIGNADO"'; }
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
            CalcFormula = average(course."Tarifa Curso" where("Id. Depart. Ofert." = field("Id. Depart.")));
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