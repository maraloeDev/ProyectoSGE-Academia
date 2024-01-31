table 50100 "Course"
{
    DataClassification = ToBeClassified;
    Caption = 'COURSE', comment = 'ESP="CURSO"';
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
            Caption = 'COURSE DESCRIPTION ', comment = 'ESP="DESCRIPCION DEL CURSO"';
        }
        field(4; "Total hours"; Integer)
        {
            Caption = 'TOTAL HOURS', comment = 'ESP="HORAS TOTALES"';
        }
        field(5; "Course fee"; Decimal)
        {
            Caption = 'COURSE FEE', comment = 'ESP="TARIFA DEL CURSO"';
        }
        field(6; "Teacher No."; Integer)
        {
            Caption = 'TEACHER NO.', comment = 'ESP="PROFESOR QUE IMPARTE EL CURSO"';
            TableRelation = teacher."Teacher .Id";
        }
        field(7; "Course provider No."; Integer)
        {
            Caption = 'COURSE PROVIDER NO.', comment = 'ESP="TARIFA DEL CURSO"';
            TableRelation = Department."Department No.";
        }
        field(8; "Course provider name"; Text[50])
        {
            Caption = 'COURSE PROVIDER NAME', comment = 'ESP="NOMBRE DEPARTAMENTO OFERTADO"';
            FieldClass = FlowField;
            CalcFormula = lookup(Department."Department name" where("Department No." = field("Course provider No.")));
        }
        field(9; "Teacher name"; Text[50])
        {
            Caption = 'Departement head name', comment = 'ESP="NOMBRE DEL PROFESOR QUE IMPARTE EL CURSO"';
            FieldClass = FlowField;
            CalcFormula = lookup(teacher."Teacher Name" where("Teacher .Id" = field("Teacher No.")));
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