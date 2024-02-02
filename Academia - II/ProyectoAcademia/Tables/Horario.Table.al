table 50104 "Schedule"
{
    DataClassification = ToBeClassified;
    Caption = 'Schedule', comment = 'ESP="Horario"';
    fields
    {
        field(1; "Schedule No."; Integer)
        {
            Caption = 'Schedule No.', comment = 'ESP="Horario No."';
            AutoIncrement = true;
            Editable = false;
        }

        field(2; "Course No."; Integer)
        {
            Caption = 'Course No.', comment = 'ESP="Curso No."';
            TableRelation = course."Course No.";
        }

        field(3; "Detail No."; Integer)
        {
            Caption = 'Detail No.', comment = 'ESP="Detalle No."';
            TableRelation = Detail."Detail No.";
        }
        field(50100; "Weekday"; Text[50])
        {
            Caption = 'Weekday ', comment = 'ESP="Día de la semana"';
            FieldClass = FlowField;
            CalcFormula = lookup(Detail."Weekday" where("Detail No." = field("Detail No.")));
        }
        field(4; "Start Time"; Integer)
        {
            Caption = 'Start Time', comment = 'ESP="Hora de inicio"';
            FieldClass = FlowField;
            CalcFormula = lookup(Detail."Start Time" where("Detail No." = field("Detail No.")));
        }
        field(5; "End Time"; Integer)
        {
            Caption = 'End Time', comment = 'ESP="Hora de fin"';
            FieldClass = FlowField;
            CalcFormula = lookup(Detail."End Time" where("Detail No." = field("Detail No.")));
        }
        field(6; "Course Name"; Text[50])
        {
            Caption = 'Course Name', comment = 'ESP="Nombre del curso"';
            FieldClass = FlowField;
            CalcFormula = lookup(course."Course Description" where("Course No." = field("Course No.")));
        }
    }
    keys
    {
        key(pk1; "Schedule No.")
        {
            Clustered = true;
        }
    }
}