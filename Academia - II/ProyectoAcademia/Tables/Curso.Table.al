table 50100 "Course"
{
    DataClassification = ToBeClassified;
    Caption = 'Course', comment = 'ESP="Curso"';
    fields
    {
        field(1; "No."; Integer)
        {
            Caption = 'No.', comment = 'ESP="No."';
            AutoIncrement = true;
            Editable = false;
        }
        field(2; "Description"; Text[50])
        {
            Caption = 'Description', comment = 'ESP="Descripción"';
        }
        field(3; "Total hours"; Integer)
        {
            Caption = 'Total hours', comment = 'ESP="Horas totales"';
        }
        field(4; "Course fee"; Decimal)
        {
            Caption = 'Course fee', comment = 'ESP="Tarifa"';
        }
        // Profesor: Profesor impartidor
        field(5; "Teacher No."; Integer)
        {
            Caption = 'Teacher No.', comment = 'ESP="No. Profesor Imprt."';
            TableRelation = Teacher."No.";
        }
        field(6; "Teacher Name"; Text[50])
        {
            Caption = 'Teacher Name', comment = 'ESP="Nombre Profesor Imprt."';
            FieldClass = FlowField;
            CalcFormula = lookup(Teacher."Name" where("No." = field("Teacher No.")));
        }
        // Departamento: Departamento ofertador
        field(7; "Course provider No."; Integer)
        {
            Caption = 'Course provider No.', comment = 'ESP="No. Depart. Ofertador"';
            TableRelation = Department."No.";
        }
        field(8; "Course provider Name"; Text[50])
        {
            Caption = 'Course provider Name', comment = 'ESP="Nombre Depart. Ofertador"';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = lookup(Department."Name" where("No." = field("Course provider No.")));
        }
        // Matricula: Cantidad de estudiantes
        field(9; "Number of Students"; Integer)
        {
            Caption = 'Number of Students', comment = 'ESP="Número de Estudiantes"';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = count(Registration where("No. Course Enrolled" = field("No.")));
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