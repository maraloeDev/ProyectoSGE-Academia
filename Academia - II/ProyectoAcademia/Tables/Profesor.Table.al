table 50107 "Teacher"
{
    DataClassification = ToBeClassified;
    Caption = 'Teacher', comment = 'ESP="Profesor"';
    fields
    {
        field(1; "Teacher .No"; Integer)
        {
            Caption = 'Teacher .No', comment = 'ESP="Porfesor .No"';
            AutoIncrement = true;
        }
        field(2; "Teacher Name"; Text[50])
        {
            Caption = 'Teacher Name', comment = 'ESP="Nombre del Profesor"';
        }
        field(3; "Teacher Address"; Text[50]) { Caption = 'Teacher Address', comment = 'ESP="Dirección del profesor"'; }
        field(4; "Date of Hire"; Date) { Caption = 'Date of Hire', comment = 'ESP="Fecha de contratación"'; }
        field(5; "Teacher Salary"; Decimal) { Caption = 'Teacher Salary', comment = 'ESP="Salario del profesor"'; }
        field(6; "No. Depart. Asign."; Integer)
        {
            Caption = 'No. Depart. Asign.', comment = 'ESP="No. Departamento Asignado"';
            TableRelation = Department."Department No.";
        }
        field(7; "Name Deprt. Asign."; Text[50])
        {
            Caption = 'Name Deprt. Asign.', comment = 'ESP="Nombre Departamento Asignado"';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = lookup(Department."Department name" where("Department No." = field("No. Depart. Asign.")));
        }

        // Campos calculados y filtros  
        field(8; "Number of assistants"; Integer)
        {
            Caption = 'Number of assistants', comment = 'ESP="Número de asistentes"';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = count("Non-teaching staff" where("Head Studies .No" = field("Teacher .No")));
        }
        field(9; "Number of courses given"; Integer)
        {
            Caption = 'Number of courses given', comment = 'ESP="Número de cursos impartidos"';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = count(course where("Teacher No." = field("Teacher .No")));
        }
    }
    keys
    {
        key(pk1; "Teacher .No")
        {
            Clustered = true;
        }
    }
}