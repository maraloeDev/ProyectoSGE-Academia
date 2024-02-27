page 50121 "Teacher Shortlist"
{
    PageType = ListPart;
    SourceTable = Teacher;
    UsageCategory = Administration;
    ApplicationArea = All;
    Caption = 'Teacher Shortlist', comment = 'ESP="Lista Corta de Profesores"';
    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                Caption = 'Teacher Shortlist', comment = 'ESP="Lista Corta de Profesores"';
                field("No."; Rec."No.")
                {
                    Caption = 'No.', comment = 'ESP="No."';
                    Tooltip = 'The identification number of the teacher.', comment = 'ESP="El número de identificación del profesor."';
                    ApplicationArea = All;
                }

                field("Name"; Rec."Name")
                {
                    Caption = 'Name', comment = 'ESP="Nombre"';
                    Tooltip = 'The name of the teacher.', comment = 'ESP="El nombre del profesor."';
                    ApplicationArea = All;
                }

                field("Department Assigned Name"; Rec."Department Name")
                {
                    Caption = 'Department Assigned Name', comment = 'ESP="Nombre del Departamento Asignado"';
                    Tooltip = 'The name of the department assigned to the teacher.', comment = 'ESP="El nombre del departamento asignado al profesor."';
                    ApplicationArea = All;
                }
            }
        }
    }
}