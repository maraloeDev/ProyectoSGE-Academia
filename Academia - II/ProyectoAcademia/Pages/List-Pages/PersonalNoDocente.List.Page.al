page 50105 "Non-teaching staff List"
{
    PageType = Card;
    SourceTable = "Non-teaching staff";
    Caption = 'NON-TEACHING STAFF LIST', comment = 'ESP="LISTA DE PERSONAL NO DOCENTE"';
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
                    ApplicationArea = All;
                }
                field("NAME"; Rec."Name")
                {
                    Caption = 'NAME', comment = 'ESP="NOMBRE"';
                    ApplicationArea = All;
                }
                field("MANAGEMENT"; Rec."Managment")
                {
                    Caption = 'MANAGEMENT', comment = 'ESP="DIRECCION"';
                    ApplicationArea = All;
                }
                field("SALARY"; Rec."Salary")
                {
                    Caption = 'SALARY', comment = 'ESP="SALARIO"';
                    ApplicationArea = All;
                }
                field("POSITION"; Rec."Position")
                {
                    Caption = 'POSITION', comment = 'ESP="PUESTO"';
                    ApplicationArea = All;
                }
                field("HEAD DEPARTMENT No."; Rec."Head Studies No.")
                {
                    Caption = 'HEAD DEPARTMENT No.', comment = 'ESP="No. JEFE DE DEPART."';
                    ApplicationArea = All;
                }
                field("HEAD DEPARTMENT NAME"; Rec."Head Studies Name")
                {
                    Caption = 'HEAD DEPARTMENT NAME', comment = 'ESP="NOMBRE JEFE DE DEPART."';
                    ApplicationArea = All;
                }
            }
        }
    }
}