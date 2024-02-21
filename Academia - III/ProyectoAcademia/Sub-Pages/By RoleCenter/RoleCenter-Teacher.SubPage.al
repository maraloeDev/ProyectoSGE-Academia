page 50119 "Teacher Shortlist"
{
    PageType = ListPart;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Teacher;
    Caption = 'Teacher Shortlist', comment = 'ESP="Lista Corta de Profesores"';

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                Caption = 'Teacher Shortlist', comment = 'ESP="Lista Corta de Profesores"';
                Description = 'This list part displays a shortlist of teachers.';

                field("No."; Rec."No.")
                {
                    Caption = 'No.', comment = 'ESP="No."';
                    ApplicationArea = All;
                    Description = 'The identification number of the teacher.';
                }

                field("Name"; Rec."Name")
                {
                    Caption = 'Name', comment = 'ESP="Nombre"';
                    ApplicationArea = All;
                    Description = 'The name of the teacher.';
                }

                field("Department Assigned Name"; Rec."Department Name")
                {
                    Caption = 'Department Assigned Name', comment = 'ESP="Nombre del Departamento Asignado"';
                    ApplicationArea = All;
                    Description = 'The name of the department assigned to the teacher.';
                }
            }
        }
    }
}