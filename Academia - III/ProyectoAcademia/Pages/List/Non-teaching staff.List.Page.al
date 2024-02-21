page 50102 "Non-teaching staff List"
{
    PageType = Card;
    SourceTable = "Non-teaching staff";
    Caption = 'Non-teaching staff List', comment = 'ESP="Lista de Personal No Docente"';
    Description = 'This page displays a list of non-teaching staff in the academy.';
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
                    ApplicationArea = All;
                    Description = 'The unique identifier of the non-teaching staff.';
                }
                field("NAME"; Rec."Name")
                {
                    Caption = 'NAME', comment = 'ESP="NOMBRE"';
                    ApplicationArea = All;
                    Description = 'The name of the non-teaching staff.';
                }
                field("MANAGEMENT"; Rec."Management")
                {
                    Caption = 'MANAGEMENT', comment = 'ESP="DIRECCION"';
                    ApplicationArea = All;
                    Description = 'The management of the non-teaching staff.';
                }
                field("SALARY"; Rec."Salary")
                {
                    Caption = 'SALARY', comment = 'ESP="SALARIO"';
                    ApplicationArea = All;
                    Description = 'The salary of the non-teaching staff.';
                }
                field("POSITION"; Rec."Position")
                {
                    Caption = 'POSITION', comment = 'ESP="PUESTO"';
                    ApplicationArea = All;
                    Description = 'The position of the non-teaching staff.';
                }
                field("HEAD DEPARTMENT No."; Rec."Head of Studies No.")
                {
                    Caption = 'HEAD DEPARTMENT No.', comment = 'ESP="No. JEFE DE DEPART."';
                    ApplicationArea = All;
                    Description = 'The identifier of the head of studies for the non-teaching staff.';
                }
                field("HEAD DEPARTMENT NAME"; Rec."Head of Studies Name")
                {
                    Caption = 'HEAD DEPARTMENT NAME', comment = 'ESP="NOMBRE JEFE DE DEPART."';
                    ApplicationArea = All;
                    Description = 'The name of the head of studies for the non-teaching staff.';
                }
            }
        }
    }
}
