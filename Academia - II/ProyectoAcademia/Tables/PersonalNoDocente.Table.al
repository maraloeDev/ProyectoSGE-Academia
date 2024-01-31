table 50108 "Non-teaching staff"
{
    DataClassification = ToBeClassified;
    Caption = 'NON-TEACHING STAFF', comment = 'ESP="PERSONAL NO DOCENTE"';
    fields
    {
        field(1; "Staff .Id"; Integer)
        {

            AutoIncrement = true;
            Caption = 'STAFF ID', comment = 'ESP="ID. DEL PERSONAL"';
        }
        field(2; "Staff Name"; Text[50])
        {
            Caption = 'STAFF NAME', comment = 'ESP="NOMBRE DEL PERSONAL"';
        }
        field(3; "Staff Managment"; Text[50])
        {
            Caption = 'STAFF MANAGEMENT', comment = 'ESP="DIRECCION DEL PERSONAL"';
        }
        field(4; "Staff Salary"; Decimal)
        {
            Caption = 'STAFF SALARY', comment = 'ESP="SALARIO DEL PERSONAL"';
        }
        field(5; "Staff Position"; Text[50])
        {
            Caption = 'STAFF POSITION', comment = 'ESP="PUESTO DEL PERSONAL"';
        }
        field(6; "Head Studies .Id"; Integer)
        {
            Caption = 'HEAD OF STUDIES ID', comment = 'ESP="ID. JEFE DE ESTUDIOS"';
            TableRelation = teacher."Teacher .Id";
        }
        field(7; "Head Studies Name"; Text[50])
        {
            Caption = 'HEAD OF STUDIES NAME', comment = 'ESP="NOMBRE DEL JEFE DE ESTUDIOS"';
            FieldClass = FlowField;
            CalcFormula = lookup(teacher."Teacher Name" where("Teacher .Id" = field("Head Studies .Id")));
        }
    }
    keys
    {
        key(pk1; "Staff .Id")
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