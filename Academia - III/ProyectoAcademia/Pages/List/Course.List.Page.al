page 50100 "Course List"
{
    PageType = List;
    SourceTable = Course;
    Caption = 'Course List', comment = 'ESP="Lista de Cursos"';
    Description = 'This page displays a list of courses available in the academy.';
    ApplicationArea = All;
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("No."; Rec."No.")
                {
                    Caption = 'No.', comment = 'ESP="No."';
                    Editable = false;
                    ApplicationArea = All;
                    Description = 'The unique identifier of the course.';
                }
                field("DESCRIPTION"; Rec."Description")
                {
                    Caption = 'DESCRIPTION', comment = 'ESP="DESCRIPCIÓN"';
                    ApplicationArea = All;
                    Description = 'A brief description of the course.';
                }
                field("TOTAL HOURS"; Rec."Total hours")
                {
                    Caption = 'TOTAL HOURS', comment = 'ESP="HORAS TOTALES"';
                    ApplicationArea = All;
                    Description = 'The total number of hours for the course.';
                }
                field("COURSE FEE"; Rec."Course fee")
                {
                    Caption = 'COURSE FEE', comment = 'ESP="TARIFA"';
                    ApplicationArea = All;
                    Description = 'The fee for the course.';
                }
                field("TEACHER No."; Rec."Teacher No.")
                {
                    Caption = 'TEACHER No.', comment = 'ESP="No. PROFESOR"';
                    ApplicationArea = All;
                    Description = 'The identifier of the teacher for the course.';
                }
                field("TEACHER NAME"; Rec."Teacher Name")
                {
                    Caption = 'TEACHER NAME', comment = 'ESP="NOMBRE PROFESOR"';
                    ApplicationArea = All;
                    Description = 'The name of the teacher for the course.';
                }
                field("COURSE PROV. No."; Rec."Course provider No.")
                {
                    Caption = 'COURSE PROV. No.', comment = 'ESP="No. DEPART. OFERT."';
                    ApplicationArea = All;
                    Description = 'The identifier of the department offering the course.';
                }
                field("COURSE PROV. NAME"; Rec."Course provider name")
                {
                    Caption = 'COURSE PROV. NAME', comment = 'ESP="NOMBRE DEPART. OFERT."';
                    ApplicationArea = All;
                    Description = 'The name of the department offering the course.';
                }
            }
        }
    }
}
