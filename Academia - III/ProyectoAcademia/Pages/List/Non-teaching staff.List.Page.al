page 50102 "Non-teaching staff List"
{
    PageType = List;
    SourceTable = "Non-teaching staff";
    UsageCategory = Administration;
    ApplicationArea = All;
    Caption = 'Non-teaching staff List', comment = 'ESP="Lista de Personal No Docente"';
    Editable = true;
    CardPageId = "Non-teaching staff CardPage";

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
                    Tooltip = 'The unique identifier of the non-teaching staff.', comment = 'ESP="El identificador único del personal no docente."';
                    ApplicationArea = All;
                }
                field("NAME"; Rec."Name")
                {
                    Caption = 'NAME', comment = 'ESP="NOMBRE"';
                    Tooltip = 'The name of the non-teaching staff.', comment = 'ESP="El nombre del personal no docente."';
                    ApplicationArea = All;
                }
                field("MANAGEMENT"; Rec."Management")
                {
                    Caption = 'MANAGEMENT', comment = 'ESP="DIRECCION"';
                    Tooltip = 'The management of the non-teaching staff.', comment = 'ESP="La dirección del personal no docente."';
                    ApplicationArea = All;
                }
                field("SALARY"; Rec."Salary")
                {
                    Caption = 'SALARY', comment = 'ESP="SALARIO"';
                    Tooltip = 'The salary of the non-teaching staff.', comment = 'ESP="El salario del personal no docente."';
                    ApplicationArea = All;
                }
                field("POSITION"; Rec."Position")
                {
                    Caption = 'POSITION', comment = 'ESP="PUESTO"';
                    Tooltip = 'The position of the non-teaching staff.', comment = 'ESP="El puesto del personal no docente."';
                    ApplicationArea = All;
                }
                field("HEAD DEPARTMENT No."; Rec."Head of Studies No.")
                {
                    Caption = 'HEAD DEPARTMENT No.', comment = 'ESP="No. JEFE DE DEPART."';
                    Tooltip = 'The identifier of the head of studies for the non-teaching staff.', comment = 'ESP="El identificador del jefe de estudios para el personal no docente."';
                    ApplicationArea = All;
                }
                field("HEAD DEPARTMENT NAME"; Rec."Head of Studies Name")
                {
                    Caption = 'HEAD DEPARTMENT NAME', comment = 'ESP="NOMBRE JEFE DEPART."';
                    Tooltip = 'The name of the head of studies for the non-teaching staff.', comment = 'ESP="El nombre del jefe de estudios para el personal no docente."';
                    ApplicationArea = All;
                }
            }
        }
    }
}