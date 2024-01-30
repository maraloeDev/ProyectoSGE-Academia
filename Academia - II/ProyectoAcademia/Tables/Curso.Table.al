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
        field(3; "Course description"; Text[50]) { Caption = 'Course description', comment = 'ESP="DESCRIPCION DEL CURSO"'; }
        field(4; "Horas Totales"; Integer) { Caption = 'Total hours', comment = 'ESP="HORAS TOTALES"'; }
        field(5; "Course rate"; Decimal) { Caption = 'Course rate', comment = 'ESP="TARIFA DEL CURSO"'; }
        field(6; "Head Department No."; Integer)
        {
            Caption = 'Head Department No.', comment = 'ESP="TARIFA DEL CURSO"';
            TableRelation = teacher."Id. Profesor";
        }
        field(7; "Id. Depart. Ofert."; Integer) { TableRelation = Departament."Id. Depart."; }
        field(8; "Nombre Depart. Ofer."; Text[50])
        {
            Caption = 'NAME DEPARTMENT OFFERED', comment = 'ESP="NOMBRE DEPARTAMENTO OFERTADO"';
            FieldClass = FlowField;
            CalcFormula = lookup(Departament."Nombre Depart." where("Id. Depart." = field("Id. Depart. Ofert.")));
        }
        field(9; "Nombre Prof. Imp."; Text[50])
        {
            Caption = 'NAME OF THE TEACHER TAKING THE COURSE', comment = 'ESP="NOMBRE DEL PROFESOR QUE IMPARTE EL CURSO"';
            FieldClass = FlowField;
            CalcFormula = lookup(teacher."Nombre Profesor" where("Id. Profesor" = field("Id. Prof. Impart.")));
        }
    }
    keys
    {
        key(pk1; "Id. Curso")
        {
            Clustered = true;
        }
    }
}