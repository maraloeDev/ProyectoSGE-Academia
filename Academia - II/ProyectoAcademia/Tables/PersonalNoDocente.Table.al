table 50108 "Non-teaching staff"
{
    DataClassification = ToBeClassified;
    Caption = 'NON-TEACHING STAFF', comment = 'ESP="PERSONAL NO DOCENTE"';
    fields
    {
        field(1; "Id. Personal"; Integer) { AutoIncrement = true; }
        field(2; "Nombre Personal"; Text[50]) { Caption = 'STAFF NAME', comment = 'ESP="NOMBRE DEL PERSONAL"'; }
        field(3; "Dirección Personal"; Text[50]) { Caption = 'STAFF MANAGEMENT', comment = 'ESP="DIRECCION DEL PERSONAL"'; }
        field(4; "Salario Personal"; Decimal) { Caption = 'STAFF SALARY', comment = 'ESP="SALARIO DEL PERSONAL"'; }
        field(5; "Puesto Personal"; Text[50]) { Caption = 'STAFF POSITION', comment = 'ESP="PUESTO DEL PERSONAL"'; }
        field(6; "Id. Prof. Jefe"; Integer) { TableRelation = teacher."Id. Profesor"; }
        field(7; "Nombre Prof. Jefe"; Text[50]) // ¿¿¿CAMBIAR A JEFE DE ESTUDIOS???
        {
            Caption = 'HEAD OF STUDIES', comment = 'ESP="JEFE DE ESTUDIOS"';
            FieldClass = FlowField;
            CalcFormula = lookup(teacher."Nombre Profesor" where("Id. Profesor" = field("Id. Prof. Jefe")));
        }
    }
    keys
    {
        key(pk1; "Id. Personal")
        {
            Clustered = true;
        }
    }
    /*
    trigger OnValidate()
    begin
        if "Puesto Personal" = 'Ayudante' then
            field(6).Mandatory := true;
    end if;
    */
}