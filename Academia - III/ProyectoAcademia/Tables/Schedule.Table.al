table 50105 "Schedule"
{
    DataClassification = ToBeClassified;
    Caption = 'Schedule', comment = 'ESP="Horario"';
    fields
    {
        field(1; "No."; Integer)
        {
            Caption = 'No.', comment = 'ESP="No."';
            AutoIncrement = true;
            Editable = false;
        }
        // Curso
        field(2; "Course No."; Integer)
        {
            Caption = 'Course No.', comment = 'ESP="Número de Curso"';
            TableRelation = Course."No.";
        }
        field(3; "Course Name"; Text[50])
        {
            Caption = 'Course Name', comment = 'ESP="Nombre del curso"';
            FieldClass = FlowField;
            CalcFormula = lookup(Course."Description" where("No." = field("Course No.")));
        }
        // Detalle
        field(4; "Detail No."; Integer)
        {
            Caption = 'Detail No.', comment = 'ESP="Número de Detalle"';
            TableRelation = Detail."No.";
        }
        field(5; "Weekday"; Text[50])
        {
            Caption = 'Weekday ', comment = 'ESP="Día de la semana"';
            FieldClass = FlowField;
            CalcFormula = lookup(Detail."Weekday" where("No." = field("Detail No.")));
        }
        field(6; "Start Time"; Time)
        {
            Caption = 'Start Time', comment = 'ESP="Hora de inicio"';
            FieldClass = FlowField;
            CalcFormula = lookup(Detail."Start Time" where("No." = field("Detail No.")));
        }
        field(7; "End Time"; Time)
        {
            Caption = 'End Time', comment = 'ESP="Hora de fin"';
            FieldClass = FlowField;
            CalcFormula = lookup(Detail."End Time" where("No." = field("Detail No.")));
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
