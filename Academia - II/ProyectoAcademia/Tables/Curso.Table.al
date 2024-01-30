table 50100 "Course"
{
    DataClassification = ToBeClassified;
    Caption = 'Course', comment = 'ESP="CURSO"';
    fields
    {
        field(1; "Course No."; Integer)
        {
            Caption = 'Course No.', comment = 'ESP="HORAS TOTALES"';
            AutoIncrement = true;
            Editable = false;
        }
        field(3; "Description course"; Text[50])
        {
            Caption = 'Description course', comment = 'ESP="DESCRIPCION DEL CURSO"';
        }
        field(4; "Total hours"; Integer)
        {
            Caption = 'Total hours', comment = 'ESP="HORAS TOTALES"';
        }
        field(5; "Course fee"; Decimal)
        {
            Caption = 'Course fee', comment = 'ESP="TARIFA DEL CURSO"';
        }
        field(6; "Teacher No."; Integer)
        {
            Caption = 'Department head No.', comment = 'ESP="TARIFA DEL CURSO"';
            TableRelation = teacher."Id. Profesor";
        }
        field(7; "Course provider No."; Integer)
        {
            Caption = 'Course provider No.', comment = 'ESP="TARIFA DEL CURSO"';
            TableRelation = Departament."Id. Depart.";
        }
        field(8; "Course provider name"; Text[50])
        {
            Caption = 'Course provider name', comment = 'ESP="NOMBRE DEPARTAMENTO OFERTADO"';
            FieldClass = FlowField;
            CalcFormula = lookup(Departament."Nombre Depart." where("Id. Depart." = field("Course provider No.")));
        }
        field(9; "Teacher name"; Text[50])
        {
            Caption = 'Departement head name', comment = 'ESP="NOMBRE DEL PROFESOR QUE IMPARTE EL CURSO"';
            FieldClass = FlowField;
            CalcFormula = lookup(teacher."Nombre Profesor" where("Id. Profesor" = field("Teacher No.")));
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