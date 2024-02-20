table 50107 "Teacher"
{
    DataClassification = ToBeClassified;
    Caption = 'Teacher', comment = 'ESP="Profesor"';
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
        field(6; "No. Depart. Asign."; Integer)
        {
            Caption = 'No. Depart. Asign.', comment = 'ESP="No. Departamento Asign."';
            TableRelation = Department."No.";
        }
        field(7; "Name Deprt. Asign."; Text[50])
        {
            Caption = 'Name Deprt. Asign.', comment = 'ESP="Nombre Departamento Asign."';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = lookup(Department."Name" where("No." = field("No. Depart. Asign.")));
        }
        // Número de asistentes de un profesor 
        field(8; "Number of helpers"; Integer)
        {
            Caption = 'Number of helpers', comment = 'ESP="Número de ayudantes"';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = count("Non-teaching staff" where("Head Studies No." = field("No.")));
        }
        // Número de cursos que imparte 
        field(9; "Number of courses given"; Integer)
        {
            Caption = 'Number of courses given', comment = 'ESP="Número Cursos Impart."';
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