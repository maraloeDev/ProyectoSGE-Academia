table 50107 "Teacher"
{
    DataClassification = ToBeClassified;
    Caption = 'TEACHER', comment = 'ESP="PROFRESOR"';
    fields
    {
        field(1; "Teacher .Id"; Integer)
        {
            Caption = 'TEACHER ID', comment = 'ESP="ID DEL PROFESOR"';
            AutoIncrement = true;
        }
        field(2; "Teacher Name"; Text[50])
        {
            Caption = 'TEACHER NAME', comment = 'ESP="NOMBRE DEL PROFESOR"';
        }
        field(3; "Teacher Address"; Text[50]) { Caption = 'TEACHER ADDRESS', comment = 'ESP="DIRECCION DEL PROFESOR"'; }
        field(4; "Date of Hire"; Date) { Caption = 'DATE OF HIRE', comment = 'ESP="FECHA DE CONTRATACION"'; }
        field(5; "Teacher Salary"; Decimal) { Caption = 'TEACHER SALARY', comment = 'ESP="SALARIO DEL PROFESOR"'; }
        field(6; "Id. Depart. Asign."; Integer)
        {
            Caption = 'ID. DEPART. ASIGN.', comment = 'ESP="ID. DEPARTAMENTO ASIGNADO"';
            TableRelation = Department."Department No.";
        }
        field(7; "Name Deprt. Asign."; Text[50])
        {
            Caption = 'NAME DEPRT. ASIGN.', comment = 'ESP="NOMBRE DEPARTAMENTO ASIGNADO"';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = lookup(Department."Department name" where("Department No." = field("Id. Depart. Asign.")));
        }

        // Campos calculados y filtros  
        field(8; "Number of assistants"; Integer)
        {
            Caption = 'NUMBER OF ASSISTANTS', comment = 'ESP="NUMERO DE ASISTENTES"';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = count("Non-teaching staff" where("Head Studies .Id" = field("Teacher .Id")));
        }
        field(9; "Number of courses given"; Integer)
        {
            Caption = 'NUMBER OF COURSES GIVEN', comment = 'ESP="NUMERO DE CURSOS IMPARTIDOS"';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = count(course where("Teacher No." = field("Teacher .Id")));
        }
    }
    keys
    {
        key(pk1; "Teacher .Id")
        {
            Clustered = true;
        }
    }
}