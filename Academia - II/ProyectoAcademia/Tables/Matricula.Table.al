table 50105 "Registration"
{
    DataClassification = ToBeClassified;
    Caption = 'REGISTRATION', comment = 'ESP="MATRICULA"';
    fields
    {
        field(1; "Registration No."; Integer)
        {
            Caption = 'REGUSTRATION NO.', comment = 'ESP="REGISTRO No."';
            AutoIncrement = true;
        }
        field(2; "Date/Time Registration"; DateTime)
        {
            Caption = 'DATE/TIME OF REGISTRATION', comment = 'ESP="FECHA / HORA DE LA MATRICULA"';
        }
        field(3; "Id. Student. Enrolled."; Integer)
        {

            Caption = 'ID.STUDENT ENROLLED', comment = 'ESP="ID. ESTUDIANTE MATRICULADO"';
            TableRelation = student."Student No.";
        }
        field(5; "Id. Course Enrolled."; Integer)
        {
            Caption = 'ID. COURSE ENROLLED', comment = 'ESP="ID. CURSO MATRICULADO"';
            TableRelation = course."Course No.";
        }
        field(6; "Name Student Enrolled"; Text[50])
        {
            Caption = 'NAME OF ENROLLED STUDENT ', comment = 'ESP="NOMBRE DEL ESTUDIANTE MATRICULADO"';
            FieldClass = FlowField;
            CalcFormula = lookup(student."Student Name" where("Student No." = field("Id. Student. Enrolled.")));
        }
        field(7; "Name Enrolled Course"; Text[50])
        {
            Caption = 'NAME OF ENROLLED COURSE', comment = 'ESP="NOMBRE DEL CURSO MATRICULADO"';
            FieldClass = FlowField;
            CalcFormula = lookup(course."Course Description" where("Course No." = field("Id. Course Enrolled.")));
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