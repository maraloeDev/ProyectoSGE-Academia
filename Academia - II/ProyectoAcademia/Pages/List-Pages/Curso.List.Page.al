page 50100 "Course Page"
{

    PageType = List;
    SourceTable = Course;
    Caption = 'COURSE PAGE', comment = 'ESP="PÁGINA DEL CURSO"';

    layout
    {
        area(content)
        {
            group(General)
            {
                field("Course No."; Rec."Course No.")
                {
                    Editable = false;
                    ApplicationArea = All;
                    Caption = 'COURSE NO.', comment = 'ESP="ID DEL CURSO"';
                }
                field("Course Description"; Rec."Course Description")
                {
                    ApplicationArea = All;
                    Caption = 'COURSE DESCRIPTION ', comment = 'ESP="DESCRIPCIÓN DEL CURSO"';
                }
                field("Total hours"; Rec."Total hours")
                {
                    ApplicationArea = All;
                    Caption = 'TOTAL HOURS', comment = 'ESP="HORAS TOTALES"';
                }
                field("Course fee"; Rec."Course fee")
                {
                    ApplicationArea = All;
                    Caption = 'COURSE FEE', comment = 'ESP="TARIFA DEL CURSO"';
                }
                field("Teacher No."; Rec."Teacher No.")
                {
                    ApplicationArea = All;
                    Caption = 'TEACHER NO.', comment = 'ESP="PROFESOR QUE IMPARTE EL CURSO"';
                }
                field("Course provider No."; Rec."Course provider No.")
                {
                    ApplicationArea = All;
                    Caption = 'COURSE PROVIDER NO.', comment = 'ESP="TARIFA DEL CURSO"';
                }
                field("Course provider name"; Rec."Course provider name")
                {
                    ApplicationArea = All;
                    Caption = 'COURSE PROVIDER NAME', comment = 'ESP="NOMBRE DEPARTAMENTO OFERTADO"';
                }
                field("Teacher name"; Rec."Teacher name")
                {
                    ApplicationArea = All;
                    Caption = 'DEPARTMENT HEAD NAME', comment = 'ESP="NOMBRE DEL PROFESOR QUE IMPARTE EL CURSO"';
                }
            }
        }
    }
}