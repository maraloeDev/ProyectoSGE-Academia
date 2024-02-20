page 50100 "Course List"
{

    PageType = List;
    SourceTable = Course;
    Caption = 'Course List', comment = 'ESP="Lista de Cursos"';
    ApplicationArea = All;
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            group(General)
            {
                field("No."; Rec."No.")
                {
                    Caption = 'No.', comment = 'ESP="No."';
                    Editable = false;
                    ApplicationArea = All;
                }
                field("DESCRIPTION"; Rec."Description")
                {
                    Caption = 'DESCRIPTION', comment = 'ESP="DESCRIPCIÓN"';
                    ApplicationArea = All;
                }
                field("TOTAL HOURS"; Rec."Total hours")
                {
                    Caption = 'TOTAL HOURS', comment = 'ESP="HORAS TOTALES"';
                    ApplicationArea = All;
                }
                field("COURSE FEE"; Rec."Course fee")
                {
                    Caption = 'COURSE FEE', comment = 'ESP="TARIFA"';
                    ApplicationArea = All;
                }
                field("TEACHER No."; Rec."Teacher No.")
                {
                    Caption = 'TEACHER No.', comment = 'ESP="No. PROFESOR"';
                    ApplicationArea = All;
                }
                field("TEACHER NAME"; Rec."Teacher Name")
                {
                    Caption = 'TEACHER NAME', comment = 'ESP="NOMBRE PROFESOR';
                    ApplicationArea = All;
                }
                field("COURSE PROV. No."; Rec."Course provider No.")
                {
                    Caption = 'COURSE PROV. No.', comment = 'ESP="No. DEPART. OFERT."';
                    ApplicationArea = All;
                }
                field("COURSE PROV. NAME"; Rec."Course provider name")
                {
                    Caption = 'COURSE PROV. NAME', comment = 'ESP="NOMBRE DEPART. OFERT."';
                    ApplicationArea = All;
                }
            }
        }
    }
}