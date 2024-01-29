table 50107 "teacher"
{
    DataClassification = ToBeClassified;
    Caption = 'TEACHER', comment = 'ESP="PROFRESOR"';
    fields
    {
        field(1; "Id. Profesor"; Integer) { AutoIncrement = true; }
        field(2; "Nombre Profesor"; Text[50]) { Caption = 'TEACHER ID', comment = 'ESP="ID DEL PROFESOR"'; }
        field(3; "Dirección Profesor"; Text[50]) { Caption = 'TEACHER ADDRESS', comment = 'ESP="DIRECCION DEL PROFESOR"'; }
        field(4; "Fecha Contratación"; Date) { Caption = 'DATE OF HIRE', comment = 'ESP="FECHA DE CONTRATACION"'; }
        field(5; "Salario Profesor"; Decimal) { Caption = 'TEACHER SALARY', comment = 'ESP="SALARIO DEL PROFESOR"'; }
        field(6; "Id. Depart. Asign."; Integer) { TableRelation = Departament."Id. Depart."; }
        field(7; "Nombre Deprt. Asign."; Text[50])
        {
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = lookup(Departament."Nombre Depart." where("Id. Depart." = field("Id. Depart. Asign.")));
        }

        // Campos calculados y filtros  
        field(8; "Cantidad Ayudantes"; Integer)
        {
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = count("Non-teaching staff" where("Id. Prof. Jefe" = field("Id. Profesor")));
        }
        field(9; "Cantidad Cursos Imp."; Integer)
        {
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = count(course where("Id. Prof. Impart." = field("Id. Profesor")));
        }
    }
    keys
    {
        key(pk1; "Id. Profesor")
        {
            Clustered = true;
        }
    }
}