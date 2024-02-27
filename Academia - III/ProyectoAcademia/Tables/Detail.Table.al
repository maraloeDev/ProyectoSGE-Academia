table 50102 "Detail"
{
    DataClassification = ToBeClassified;
    Caption = 'Detail', comment = 'ESP="Detalle"';
    DrillDownPageId = "Detail List";
    LookupPageId = "Detail List";
    fields
    {
        field(1; "No."; Integer)
        {
            Caption = 'No.', comment = 'ESP="Número"';
            AutoIncrement = true;
            Editable = false;
        }
        field(2; "Weekday"; Enum "Weekday")
        {
            Caption = 'Weekday', comment = 'ESP="Día de la Semana"';
        }
        // Horas
        field(3; "Start Time"; Time)
        {
            Caption = 'Start Time', comment = 'ESP="Hora de Inicio"';
        }
        field(4; "End Time"; Time)
        {
            Caption = 'End Time', comment = 'ESP="Hora de Fin"';
        }
        field(5; "Course No."; Integer)
        {
            Caption = 'Total Hours', comment = 'ESP="Horas Totales"';
            FieldClass = FlowField;
            CalcFormula = lookup(Schedule."Course No." where("Detail No." = field("No.")));
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
