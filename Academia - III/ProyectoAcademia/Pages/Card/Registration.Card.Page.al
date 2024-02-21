page 50109 "Registration CardPage"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Registration";
    Caption = 'Registration CardPage', comment = 'ESP="Ficha de Matrícula"';
    Description = 'This card page displays detailed information about a registration.';

    layout
    {
        area(Content)
        {
            group(Student)
            {
                Caption = 'Student', comment = 'ESP="Estudiante"';
                Description = 'Information about the enrolled student.';

                field("No. Student"; Rec."No. Student Enrolled")
                {
                    Caption = 'Student No.', comment = 'ESP="No. Estudiante"';
                    ApplicationArea = All;
                    Description = 'The identification number of the enrolled student.';
                }

                field("Name of Student"; Rec."Name Student Enrolled")
                {
                    Caption = 'Student Name', comment = 'ESP="Nombre del Estudiante"';
                    ApplicationArea = All;
                    Description = 'The name of the enrolled student.';
                }
            }

            group(Course)
            {
                Caption = 'Course', comment = 'ESP="Curso"';
                Description = 'Information about the enrolled course.';

                field("No. Course"; Rec."No. Course Enrolled")
                {
                    Caption = 'Course No.', comment = 'ESP="No. Curso"';
                    ApplicationArea = All;
                    Description = 'The identification number of the enrolled course.';
                }

                field("Name of Course"; Rec."Name Enrolled Course")
                {
                    Caption = 'Course Name', comment = 'ESP="Nombre del Curso"';
                    ApplicationArea = All;
                    Description = 'The name of the enrolled course.';
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
                ApplicationArea = All;
                Description = 'View detailed information about the enrolled course.';
                RunObject = page "Course CardPage";
                RunPageLink = "No." = field("No. Course Enrolled");
                RunPageMode = View;
                Image = Report2;
            }

            action("Student - Data")
            {
                Caption = 'Student - Data', comment = 'ESP="Estudiante - Datos"';
                ApplicationArea = All;
                Description = 'View detailed information about the enrolled student.';
                RunObject = page "Student CardPage";
                RunPageLink = "No." = field("No. Student Enrolled");
                RunPageMode = View;
                Image = Report2;
            }

            action("Student - Registration")
            {
                Caption = 'Student - Registration', comment = 'ESP="Estudiante - Matrícula"';
                ApplicationArea = All;
                Description = 'View the registration information of the enrolled student.';
                RunObject = page "Registration List";
                RunPageLink = "No. Student Enrolled" = field("No. Student Enrolled");
                RunPageMode = View;
                Image = Report2;
            }
        }
    }
}