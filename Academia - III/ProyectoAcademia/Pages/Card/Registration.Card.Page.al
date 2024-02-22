page 50110 "Registration CardPage"
{
    PageType = Card;
    SourceTable = "Registration";
    UsageCategory = Administration;
    ApplicationArea = All;
    Caption = 'Registration CardPage', comment = 'ESP="Ficha de Matrícula"';
    layout
    {
        area(Content)
        {
            group(Student)
            {
                Caption = 'Student', comment = 'ESP="Estudiante"';
                field("No. Student"; Rec."No. Student Enrolled")
                {
                    Caption = 'Student No.', comment = 'ESP="No. Estudiante"';
                    Tooltip = 'The identification number of the enrolled student.', comment = 'ESP="El número de identificación del estudiante inscrito."';
                    ApplicationArea = All;
                }

                field("Name of Student"; Rec."Name Student Enrolled")
                {
                    Caption = 'Student Name', comment = 'ESP="Nombre del Estudiante"';
                    Tooltip = 'The name of the enrolled student.', comment = 'ESP="El nombre del estudiante inscrito."';
                    ApplicationArea = All;
                }
            }

            group(Course)
            {
                Caption = 'Course', comment = 'ESP="Curso"';
                field("No. Course"; Rec."No. Course Enrolled")
                {
                    Caption = 'Course No.', comment = 'ESP="No. Curso"';
                    Tooltip = 'The identification number of the enrolled course.', comment = 'ESP="El número de identificación del curso inscrito."';
                    ApplicationArea = All;
                }

                field("Name of Course"; Rec."Name Enrolled Course")
                {
                    Caption = 'Course Name', comment = 'ESP="Nombre del Curso"';
                    Tooltip = 'The name of the enrolled course.', comment = 'ESP="El nombre del curso inscrito."';
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action("Information - Course")
            {
                Caption = 'Information - Course', comment = 'ESP="Información - Curso"';
                Tooltip = 'View detailed information about the enrolled course.', comment = 'ESP="Ver información detallada sobre el curso inscrito."';
                ApplicationArea = All;
                RunObject = page "Course CardPage";
                RunPageLink = "No." = field("No. Course Enrolled");
                RunPageMode = View;
                Image = Report2;
            }

            action("Student - Data")
            {
                Caption = 'Student - Data', comment = 'ESP="Estudiante - Datos"';
                Tooltip = 'View detailed information about the enrolled student.', comment = 'ESP="Ver información detallada sobre el estudiante inscrito."';
                ApplicationArea = All;
                RunObject = page "Student CardPage";
                RunPageLink = "No." = field("No. Student Enrolled");
                RunPageMode = View;
                Image = Report2;
            }

            action("Student - Registration")
            {
                Caption = 'Student - Registration', comment = 'ESP="Estudiante - Matrícula"';
                ApplicationArea = All;
                Tooltip = 'View the registration information of the enrolled student.', comment = 'ESP="Ver la información de matrícula del estudiante inscrito."';
                RunObject = page "Registration List";
                RunPageLink = "No. Student Enrolled" = field("No. Student Enrolled");
                RunPageMode = View;
                Image = Report2;
            }
        }
    }
}