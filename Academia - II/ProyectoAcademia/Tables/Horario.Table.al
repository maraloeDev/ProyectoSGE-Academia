table 50104 "Schedule"
{
    DataClassification = ToBeClassified;
    Caption = 'SCHEDULE', comment = 'ESP="HORARIO"';
    fields
    {
        field(1; "Schedule.Id"; Integer)
        {
            Caption = 'SCHEDULE .ID', comment = 'ESP="ID HORARIO"';
            AutoIncrement = true;
            Editable = false;
        }

        field(2; "Id. Curso"; Integer)
        {
            Caption = 'EnglishText', comment = 'ESP="CODIGO DEL CURSO"';
            TableRelation = course."Course No.";
        }

        field(3; "Id. Detalle"; Integer) { TableRelation = Detail."Detail No."; }
        field(50100; "Weekday"; Text[50])
        {
            Caption = 'WEEKDAY ', comment = 'ESP="DIA DE LA SEMANA"';
            FieldClass = FlowField;
            CalcFormula = lookup(Detail."Weekday" where("Detail No." = field("Id. Detalle")));
        }
        field(4; "Start Time"; Integer)
        {
            Caption = 'START TIME', comment = 'ESP="HORA INICIAL"';
            FieldClass = FlowField;
            CalcFormula = lookup(Detail."Start Time" where("Detail No." = field("Id. Detalle")));
        }
        field(5; "End Time"; Integer)
        {
            Caption = 'END TIME', comment = 'ESP="HORA FINAL"';
            FieldClass = FlowField;
            CalcFormula = lookup(Detail."End Time" where("Detail No." = field("Id. Detalle")));
        }
        field(6; "Course Name"; Text[50])
        {
            Caption = 'COURSE NAME', comment = 'ESP="NOMBRE DEL CURSO"';
            FieldClass = FlowField;
            CalcFormula = lookup(course."Description course" where("Course No." = field("Id. Curso")));
        }
    }
    keys
    {
        key(pk1; "Schedule.Id")
        {
            Clustered = true;
        }
    }
}