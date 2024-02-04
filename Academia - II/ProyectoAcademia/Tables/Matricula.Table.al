table 50105 "Registration"
{
    DataClassification = ToBeClassified;
    Caption = 'Registration', comment = 'ESP="Matricula"';
    fields
    {
        field(1; "No."; Integer)
        {
            Caption = 'No.', comment = 'ESP="No."';
            AutoIncrement = true;
        }
        field(2; "Date/Time Registration"; DateTime)
        {
            Caption = 'Date/Time Registration', comment = 'ESP="Fecha Matriculación"';
        }
        // Estudiante: Estudiante matricula
        field(3; "No. Student Enrolled"; Integer)
        {
            Caption = 'No. Student Enrolled', comment = 'ESP="No. Estudiante Matrlado."';
            TableRelation = Student."No.";
        }
        field(6; "Name Student Enrolled"; Text[50])
        {
            Caption = 'Name Student Enrolled', comment = 'ESP="Nombre Estudiante Matrlado."';
            FieldClass = FlowField;
            CalcFormula = lookup(Student."Name" where("No." = field("No. Student Enrolled")));
        }
        // Curso: Curso matriculado
        field(5; "No. Course Enrolled"; Integer)
        {
            Caption = 'No. Course Enrolled', comment = 'ESP="No. Curso Matriculado"';
            TableRelation = Course."No.";
        }
        field(7; "Name Enrolled Course"; Text[50])
        {
            Caption = 'Name Enrolled Course', comment = 'ESP="Nombre Curso Matriculado"';
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