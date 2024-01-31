table 50104 "Schedule"
{
    DataClassification = ToBeClassified;
    Caption = 'SCHEDULE', comment = 'ESP="HORARIO"';
    fields
    {
        field(1; "Schedule No."; Integer)
        {
            Caption = 'SCHEDULE No.', comment = 'ESP="ID HORARIO"';
            AutoIncrement = true;
            Editable = false;
        }

        field(2; "Course No."; Integer)
        {
            Caption = 'COURSE NO.', comment = 'ESP="CODIGO DEL CURSO"';
            TableRelation = course."Course No.";
        }

        field(3; "Detail No."; Integer)
        {
            Caption = 'DETAIL NO.', comment = 'ESP="ID DETALLE"';
            TableRelation = Detail."Detail No.";
        }
        field(50100; "Weekday"; Text[50])
        {
            Caption = 'WEEKDAY ', comment = 'ESP="DIA DE LA SEMANA"';
            FieldClass = FlowField;
            CalcFormula = lookup(Detail."Weekday" where("Detail No." = field("Detail No.")));
        }
        field(4; "Start Time"; Integer)
        {
            Caption = 'START TIME', comment = 'ESP="HORA INICIAL"';
            FieldClass = FlowField;
            CalcFormula = lookup(Detail."Start Time" where("Detail No." = field("Detail No.")));
        }
        field(5; "End Time"; Integer)
        {
            Caption = 'END TIME', comment = 'ESP="HORA FINAL"';
            FieldClass = FlowField;
            CalcFormula = lookup(Detail."End Time" where("Detail No." = field("Detail No.")));
        }
        field(6; "Course Name"; Text[50])
        {
            Caption = 'COURSE NAME', comment = 'ESP="NOMBRE DEL CURSO"';
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