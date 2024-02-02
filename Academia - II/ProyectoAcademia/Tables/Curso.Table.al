table 50100 "Course"
{
    DataClassification = ToBeClassified;
    Caption = 'Course', comment = 'ESP="Curso"';
    fields
    {
        field(1; "Course No."; Integer)
        {
            Caption = 'COURSE NO.', comment = 'ESP="ID DEL CURSO"';
            AutoIncrement = true;
            Editable = false;
        }
        field(3; "Course Description"; Text[50])
        {
            Caption = 'Course Description', comment = 'ESP="Descripción del curso"';
        }
        field(4; "Total hours"; Integer)
        {
            Caption = 'Total hours', comment = 'ESP="Horas totales"';
        }
        field(5; "Course fee"; Decimal)
        {
            Caption = 'Course fee', comment = 'ESP="Tarifa del curso"';
        }
        field(6; "Teacher No."; Integer)
        {
            Caption = 'Teacher No.', comment = 'ESP="Profesor que imparte el curso"';
            TableRelation = teacher."Teacher .No";
        }
        field(7; "Course provider No."; Integer)
        {
            Caption = 'Course provider No.', comment = 'ESP="Tarifa del curso"';
            TableRelation = Department."Department No.";
        }
        field(8; "Course provider name"; Text[50])
        {
            Caption = 'Course provider name', comment = 'ESP="Nombre del departamento ofertante"';
            FieldClass = FlowField;
            CalcFormula = lookup(Department."Department name" where("Department No." = field("Course provider No.")));
        }
        field(9; "Departement head name"; Text[50])
        {
            Caption = 'Departement head name', comment = 'ESP="Nombre jefe departamento"';
            FieldClass = FlowField;
            CalcFormula = lookup(teacher."Teacher Name" where("Teacher .No" = field("Teacher No.")));
        }
    }
    keys
    {
        key(pk1; "Course No.")
        {
            Clustered = true;
        }
    }
}