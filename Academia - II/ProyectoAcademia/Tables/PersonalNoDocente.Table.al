table 50106 "Non-teaching staff"
{
    DataClassification = ToBeClassified;
    Caption = 'Non-teaching staff', comment = 'ESP="Personal no docente"';
    fields
    {
        field(1; "No."; Integer)
        {
            Caption = 'No.', comment = 'ESP="No."';
            AutoIncrement = true;
            Editable = false;
        }
        field(2; "Name"; Text[50])
        {
            Caption = 'Name', comment = 'ESP="Nombre"';
        }
        field(3; "Managment"; Text[50])
        {
            Caption = 'Managment', comment = 'ESP="Dirección"';
        }
        field(4; "Salary"; Decimal)
        {
            Caption = 'Salary', comment = 'ESP="Salario"';
        }
        field(5; "Position"; Text[50])
        {
            Caption = 'Position', comment = 'ESP="Position"';
        }
        // Profesor: Jefe de Estudio
        field(6; "Head Studies No."; Integer)
        {
            Caption = 'Head Studies No.', comment = 'ESP="Jefe Estudios No."';
            TableRelation = Teacher."No.";
        }
        field(7; "Head Studies Name"; Text[50])
        {
            Caption = 'Head Studies Name', comment = 'ESP="Nombre Jefe Estudios"';
            FieldClass = FlowField;
            CalcFormula = lookup(Teacher."Name" where("No." = field("Head Studies No.")));
        }
    }
    keys
    {
        key(pk1; "No.")
        {
            Clustered = true;
        }
    }
    /*trigger OnInsert()
    begin
        if "Position" <> 'Ayudante' then
            FieldName("Head Studies No.").;
    end if;
    end;*/
}