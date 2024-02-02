table 50105 "Registration"
{
    DataClassification = ToBeClassified;
    Caption = 'Registration', comment = 'ESP="Matricula"';
    fields
    {
        field(1; "Registration No."; Integer)
        {
            Caption = 'Registration No.', comment = 'ESP=Registro No."';
            AutoIncrement = true;
        }
        field(2; "Date/Time Registration"; DateTime)
        {
            Caption = 'Date/Time Registration', comment = 'ESP="Fecha/Hora de Matricula"';
        }
        field(3; "No. Student. Enrolled."; Integer)
        {

            Caption = 'No. Student. Enrolled.', comment = 'ESP="No. Estudiante Matriculado"';
            TableRelation = student."Student No.";
        }
        field(5; "No. Course Enrolled."; Integer)
        {
            Caption = 'No. Course Enrolled.', comment = 'ESP="No. Curso Matriculado"';
            TableRelation = course."Course No.";
        }
        field(6; "Name Student Enrolled"; Text[50])
        {
            Caption = 'NAME OF ENROLLED STUDENT ', comment = 'ESP="NOMBRE DEL ESTUDIANTE MATRICULADO"';
            FieldClass = FlowField;
            CalcFormula = lookup(student."Student Name" where("Student No." = field("No. Student. Enrolled.")));
        }
        field(7; "Name Enrolled Course"; Text[50])
        {
            Caption = 'NAME OF ENROLLED COURSE', comment = 'ESP="NOMBRE DEL CURSO MATRICULADO"';
            FieldClass = FlowField;
            CalcFormula = lookup(course."Course Description" where("Course No." = field("No. Course Enrolled.")));
        }
    }
    keys
    {
        key(pk1; "Registration No.")
        {
            Clustered = true;
        }
    }
}