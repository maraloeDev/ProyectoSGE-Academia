table 50108 "Secretary/Admon. Table"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "No."; Integer)
        {
            Caption = 'No.', comment = 'ESP="No."';
        }
        field(2; "Total Number of Students"; Integer)
        {
            Caption = 'Total Number of Students', comment = 'ESP="Número total de Estudiantes Matriculados"';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = count(Student);
        }
        field(3; "Lowest Fee Course"; Decimal)
        {
            Caption = 'Lowest Fee Course', comment = 'ESP="Curso con la Tarifa Más Baja"';
            FieldClass = FlowField;
            CalcFormula = min(Course."Course fee");
        }
        field(4; "Description"; Text[50])
        {
            Caption = 'Description', comment = 'ESP="Descripción"';
            FieldClass = FlowField;
            CalcFormula = lookup("Course"."Description" where("Course fee" = field("Lowest Fee Course")));
        }
        field(5; "Total hours"; Integer)
        {
            Caption = 'Total hours', comment = 'ESP="Horas totales del curso"';
            FieldClass = FlowField;
            CalcFormula = lookup("Course"."Total hours" where("Course fee" = field("Lowest Fee Course")));
        }
        field(7; "Teacher No."; Integer)
        {
            Caption = 'Teacher No.', comment = 'ESP="No. de Profesor"';
            TableRelation = Teacher."No.";
            FieldClass = FlowField;
            CalcFormula = lookup("Course"."Teacher No." where("Course fee" = field("Lowest Fee Course")));
        }
        field(8; "Teacher Name"; Text[50])
        {
            Caption = 'Teacher Name', comment = 'ESP="Nombre Profesor Imprt."';
            FieldClass = FlowField;
            CalcFormula = lookup(Teacher."Name" where("No." = field("Teacher No.")));
        }
        // Departamento: Departamento ofertador
        field(9; "Course provider No."; Integer)
        {
            Caption = 'Course provider No.', comment = 'ESP="No. de Departamento Ofertador"';
            TableRelation = Department."No.";
            FieldClass = FlowField;
            CalcFormula = lookup("Course"."Course provider No." where("Course fee" = field("Lowest Fee Course")));
        }
        field(10; "Course provider Name"; Text[50])
        {
            Caption = 'Course provider Name', comment = 'ESP="Nombre Depart. Ofertador"';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = lookup(Department."Name" where("No." = field("Course provider No.")));
        }
        // Matricula: Cantidad de estudiantes
        field(11; "Number of Students"; Integer)
        {
            Caption = 'Number of Students', comment = 'ESP="Número total de Estudiantes Matriculados"';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = count(Registration where("No. Course Enrolled" = field("No.")));
        }
        field(12; "Number of teachers"; Integer)
        {
            Caption = 'Number of teachers', comment = 'ESP="Número de profesores"';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = count(Teacher);
        }
        field(13; "Course No."; Integer)
        {
            Caption = 'Course No.', comment = 'ESP="No. Curso"';
            FieldClass = FlowField;
            CalcFormula = lookup(Course."No." where("No." = field("Course provider No.")));
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