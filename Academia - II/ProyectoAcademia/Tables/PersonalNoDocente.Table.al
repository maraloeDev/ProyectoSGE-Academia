table 50106 "Non-teaching staff"
{
    DataClassification = ToBeClassified;
    Caption = 'Non-teaching staff', comment = 'ESP="Personal no docente"';
    fields
    {
        field(1; "Staff .No"; Integer)
        {

            Caption = 'Staff .No', comment = 'ESP="Personal .No"';
            AutoIncrement = true;
        }
        field(2; "Staff Name"; Text[50])
        {
            Caption = 'Staff Name', comment = 'ESP="Nombre del Personal"';
        }
        field(3; "Staff Managment"; Text[50])
        {
            Caption = 'Staff Managment', comment = 'ESP="Dirección del Personal"';
        }
        field(4; "Staff Salary"; Decimal)
        {
            Caption = 'Staff Salary', comment = 'ESP="Salario del Personal"';
        }
        field(5; "Staff Position"; Text[50])
        {
            Caption = 'Staff Position', comment = 'ESP="Staff Position"';
        }
        field(6; "Head Studies .No"; Integer)
        {
            Caption = 'Head Studies .No', comment = 'ESP="Jefe de Estudios .No"';
            TableRelation = teacher."Teacher .No";
        }
        field(7; "Head Studies Name"; Text[50])
        {
            Caption = 'Head Studies Name', comment = 'ESP="Nombre del Jefe de Estudios"';
            FieldClass = FlowField;
            CalcFormula = lookup(teacher."Teacher Name" where("Teacher .No" = field("Head Studies .No")));
        }
    }
    keys
    {
        key(pk1; "Staff .No")
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