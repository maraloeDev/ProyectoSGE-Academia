table 50103 "Non-teaching staff"
{
    DataClassification = ToBeClassified;
    Caption = 'Non-teaching staff', comment = 'ESP="Personal no docente"';
    fields
    {
        field(1; "No."; Integer)
        {
            Caption = 'No.', comment = 'ESP="Número"';
            AutoIncrement = true;
            Editable = false;
        }
        field(2; "Name"; Text[50])
        {
            Caption = 'Name', comment = 'ESP="Nombre"';
        }
        field(3; "Management"; Text[50])
        {
            Caption = 'Management', comment = 'ESP="Dirección"';
        }
        field(4; "Salary"; Decimal)
        {
            Caption = 'Salary', comment = 'ESP="Salario"';
        }
        field(5; "Position"; Text[50])
        {
            Caption = 'Position', comment = 'ESP="Posición"';
        }
        // Profesor: Jefe de Estudios
        field(6; "Head of Studies No."; Integer)
        {
            Caption = 'Head of Studies No.', comment = 'ESP="Número de Jefe de Estudios"';
            TableRelation = Teacher."No.";
        }
        field(7; "Head of Studies Name"; Text[50])
        {
            Caption = 'Head of Studies Name', comment = 'ESP="Nombre del Jefe de Estudios"';
            FieldClass = FlowField;
            CalcFormula = lookup(Teacher."Name" where("No." = field("Head of Studies No.")));
        }
    }
    keys
    {
        key(pk1; "No.")
        {
            Clustered = true;
        }
    }
}