table 50104 "Registration"
{
    DataClassification = ToBeClassified;
    Caption = 'Registration', comment = 'ESP="Matrícula"';
    DrillDownPageId = "Student List";
    LookupPageId = "Student List";
    fields
    {
        field(1; "No."; Integer)
        {
            Caption = 'No.', comment = 'ESP="Número"';
            AutoIncrement = true;
            Editable = false;
        }
        field(2; "Date/Time Registration"; DateTime)
        {
            Caption = 'Date/Time Registration', comment = 'ESP="Fecha/Hora de Matrícula"';
        }
        // Estudiante: Estudiante matriculado
        field(3; "No. Student Enrolled"; Integer)
        {
            Caption = 'No. Student Enrolled', comment = 'ESP="Número de Estudiante Matriculado"';
            TableRelation = Student."No.";
        }
        field(4; "Name Student Enrolled"; Text[50])
        {
            Caption = 'Name Student Enrolled', comment = 'ESP="Nombre del Estudiante Matriculado"';
            FieldClass = FlowField;
            CalcFormula = lookup(Student."Name" where("No." = field("No. Student Enrolled")));
        }
        // Curso: Curso matriculado
        field(5; "No. Course Enrolled"; Integer)
        {
            Caption = 'No. Course Enrolled', comment = 'ESP="Número de Curso Matriculado"';
            TableRelation = Course."No.";
        }
        field(6; "Name Enrolled Course"; Text[50])
        {
            Caption = 'Name Enrolled Course', comment = 'ESP="Nombre del Curso Matriculado"';
            FieldClass = FlowField;
            CalcFormula = lookup(Course."Description" where("No." = field("No. Course Enrolled")));
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
