page 50100 "Course List"
{
    PageType = List;
    SourceTable = Course;
    UsageCategory = Administration;
    ApplicationArea = All;
    Caption = 'Course List', comment = 'ESP="Lista de Cursos"';
    Editable = false;
    CardPageId = "Course CardPage";

    layout
    {
        area(content)
        {
            repeater(General)
            {
                Caption = 'General', comment = 'ESP="General"';
                field("No."; Rec."No.")
                {
                    Caption = 'No.', comment = 'ESP="No."';
                    Tooltip = 'The unique identifier of the course.', comment = 'ESP="El identificador único del curso."';
                    ApplicationArea = All;
                    Editable = false;
                }
                field("DESCRIPTION"; Rec."Description")
                {
                    Caption = 'DESCRIPTION', comment = 'ESP="DESCRIPCIÓN"';
                    Tooltip = 'A brief description of the course.', comment = 'ESP="Una breve descripción del curso."';
                    ApplicationArea = All;
                }
                field("TOTAL HOURS"; Rec."Total hours")
                {
                    Caption = 'TOTAL HOURS', comment = 'ESP="HORAS TOTALES"';
                    Tooltip = 'The total number of hours for the course.', comment = 'ESP="El número total de horas para el curso."';
                    ApplicationArea = All;
                }
                field("COURSE FEE"; Rec."Course fee")
                {
                    Caption = 'COURSE FEE', comment = 'ESP="TARIFA"';
                    Tooltip = 'The fee for the course.', comment = 'ESP="La tarifa del curso."';
                    ApplicationArea = All;
                }
                field("TEACHER No."; Rec."Teacher No.")
                {
                    Caption = 'TEACHER No.', comment = 'ESP="No. PROFESOR"';
                    Tooltip = 'The identifier of the teacher for the course.', comment = 'ESP="El identificador del profesor para el curso."';
                    ApplicationArea = All;
                }
                field("TEACHER NAME"; Rec."Teacher Name")
                {
                    Caption = 'TEACHER NAME', comment = 'ESP="NOMBRE PROFESOR"';
                    Tooltip = 'The name of the teacher for the course.', comment = 'ESP="El nombre del profesor para el curso."';
                    ApplicationArea = All;
                }
                field("COURSE PROV. No."; Rec."Course provider No.")
                {
                    Caption = 'COURSE PROV. No.', comment = 'ESP="No. DEPART. OFERT."';
                    Tooltip = 'The identifier of the department offering the course.', comment = 'ESP="El identificador del departamento que ofrece el curso."';
                    ApplicationArea = All;
                }
                field("COURSE PROV. NAME"; Rec."Course provider name")
                {
                    Caption = 'COURSE PROV. NAME', comment = 'ESP="NOMBRE DEPART. OFERT."';
                    Tooltip = 'The name of the department offering the course.', comment = 'ESP="El nombre del departamento que ofrece el curso."';
                    ApplicationArea = All;
                }
                field("Number of Students"; Rec."Number of Students")
                {
                    Caption = 'Number of Students', comment = 'ESP="Número total de Estudiantes Matriculados"';
                    ApplicationArea = All;
                }
            }
        }
    }
    actions
    {

        area(Navigation)
        {
            action("Total estudiantes")
            {
                ApplicationArea = All;
                trigger OnAction()

                begin
                    estudiantes.GetTotalEnrolledStudents(Rec);
                end;
            }
            action("Beneficios del curso")
            {
                ApplicationArea = All;

                trigger OnAction()
                var
                    courses: Record Course;
                begin
                    CurrPage.SetSelectionFilter(courses);
                    cursos.getBenefits(courses);
                end;
            }
        }

    }


    var
        cursos: Codeunit "Total Beneficios Cursos";
        estudiantes: Codeunit "Total Estudiantes";
}