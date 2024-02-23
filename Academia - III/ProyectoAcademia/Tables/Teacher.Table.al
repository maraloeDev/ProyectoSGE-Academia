table 50107 "Teacher"
{
    DataClassification = ToBeClassified;
    Caption = 'Teacher', comment = 'ESP="Profesor"';
    DrillDownPageId = "Teacher List";
    LookupPageId = "Teacher List";
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
        field(3; "Address"; Text[50])
        {
            Caption = 'Address', comment = 'ESP="Dirección"';
        }
        field(4; "Date of Hire"; Date)
        {
            Caption = 'Date of Hire', comment = 'ESP="Fecha de contratación"';
        }
        field(5; "Salary"; Decimal)
        {
            Caption = 'Salary', comment = 'ESP="Salario"';
        }
        field(6; "Department No."; Integer)
        {
            Caption = 'Department No.', comment = 'ESP="Número de Departamento Asignado"';
            TableRelation = Department."No.";
        }
        field(7; "Department Name"; Text[50])
        {
            Caption = 'Department Name', comment = 'ESP="Nombre del Departamento Asignado"';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = lookup(Department."Name" where("No." = field("Department No.")));
        }
        // Número de asistentes de un profesor 
        field(8; "Number of helpers"; Integer)
        {
            Caption = 'Number of helpers', comment = 'ESP="Número de ayudantes"';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = count("Non-teaching staff" where("Head of Studies No." = field("No.")));
        }
        // Número de cursos que imparte 
        field(9; "Number of courses given"; Integer)
        {
            Caption = 'Number of courses given', comment = 'ESP="Número de cursos impartidos"';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = count(Course where("Teacher No." = field("No.")));
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
