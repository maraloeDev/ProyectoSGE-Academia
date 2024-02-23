table 50100 "Course"
{
    DataClassification = ToBeClassified;
    Caption = 'Course', comment = 'ESP="Curso"';
    DrillDownPageId = "Course List";
    LookupPageId = "Course List";

    fields
    {
        field(1; "No."; Integer)
        {
            Caption = 'No.', comment = 'ESP="No."';
            AutoIncrement = true;
            Editable = false;
        }
        field(2; "Description"; Text[50])
        {
            Caption = 'Description', comment = 'ESP="Descripción"';
        }
        field(3; "Total hours"; Integer)
        {
            Caption = 'Total hours', comment = 'ESP="Horas totales del curso"';
        }
        field(4; "Course fee"; Decimal)
        {
            Caption = 'Course fee', comment = 'ESP="Tarifa del curso"';
        }
        field(5; "Teacher No."; Integer)
        {
            Caption = 'Teacher No.', comment = 'ESP="No. de Profesor"';
            TableRelation = Teacher."No.";
        }
        field(6; "Teacher Name"; Text[50])
        {
            Caption = 'Teacher Name', comment = 'ESP="Nombre Profesor Imprt."';
            FieldClass = FlowField;
            CalcFormula = lookup(Teacher."Name" where("No." = field("Teacher No.")));
        }
        // Departamento: Departamento ofertador
        field(7; "Course provider No."; Integer)
        {
            Caption = 'Course provider No.', comment = 'ESP="No. de Departamento Ofertador"';
            TableRelation = Department."No.";
        }
        field(8; "Course provider Name"; Text[50])
        {
            Caption = 'Course provider Name', comment = 'ESP="Nombre Depart. Ofertador"';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = lookup(Department."Name" where("No." = field("Course provider No.")));
        }
        // Matricula: Cantidad de estudiantes
        field(9; "Number of Students"; Integer)
        {
            Caption = 'Number of Students', comment = 'ESP="Número total de Estudiantes Matriculados"';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = count(Registration where("No. Course Enrolled" = field("No.")));
        }
    }
    keys
    {
        key(pk1; "No.")
        {
            Clustered = true;
        }
    }

    procedure GetTotalEnrolledStudents(): Integer
    var
        TotalSuma: Decimal;
        Course: Record "Course";
    begin
        TotalSuma := 0;

        Course.RESET;
        Course.SETRANGE("No.", 0, Course.COUNT);

        repeat
            if Course.NEXT = 0 then begin
                TotalSuma += Course."Number of Students";
            end;
        until Course.NEXT = 0;

        exit(TotalSuma);
    end;

    procedure HighestFeeCourseName(): Text[50]
    var
        MaxFee: Decimal;
        Course: Record "Course";
        HighestFeeCourseName: Text[50];
    begin
        MaxFee := 0;
        HighestFeeCourseName := '';

        Course.RESET;
        Course.SETRANGE("No.", 0, Course.COUNT);

        repeat
            if Course.NEXT = 0 then begin
                if Course."Course fee" > MaxFee then begin
                    MaxFee := Course."Course fee";
                    HighestFeeCourseName := Course.Description;
                end;
            end;
        until Course.NEXT = 0;

        exit(HighestFeeCourseName);
    end;

    procedure LowestFeeCourseName(): Text[50]
    var
        MinFee: Decimal;
        Course: Record "Course";
        LowestFeeCourseName: Text[50];
    begin
        MinFee := 0;
        LowestFeeCourseName := '';

        Course.RESET;
        Course.SETRANGE("No.", 0, Course.COUNT);

        repeat
            if Course.NEXT = 0 then begin
                if Course."Course fee" < MinFee then begin
                    MinFee := Course."Course fee";
                    LowestFeeCourseName := Course.Description;
                end;
            end;
        until Course.NEXT = 0;

        exit(LowestFeeCourseName);
    end;

}
