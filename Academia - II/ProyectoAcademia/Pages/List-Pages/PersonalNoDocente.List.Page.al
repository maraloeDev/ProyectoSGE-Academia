page 50105 "Non-teaching staff List"
{
    PageType = Card;
    SourceTable = "Non-teaching staff";
    Caption = 'NON-TEACHING STAFF LIST', comment = 'ESP="LISTA DE PERSONAL NO DOCENTE"';

    layout
    {
        area(content)
        {
            group(General)
            {
                field("No."; Rec."Staff .Id")
                {
                    ApplicationArea = All;
                    Caption = 'No.', comment = 'ESP="No."';
                }
                field("NAME"; Rec."Staff Name")
                {
                    ApplicationArea = All;
                    Caption = 'NAME', comment = 'ESP="NOMBRE"';
                }
                field("MANAGEMENT"; Rec."Staff Managment")
                {
                    ApplicationArea = All;
                    Caption = 'MANAGEMENT', comment = 'ESP="DIRECCION"';
                }
                field("SALARY"; Rec."Staff Salary")
                {
                    ApplicationArea = All;
                    Caption = 'SALARY', comment = 'ESP="SALARIO"';
                }
                field("POSITION"; Rec."Staff Position")
                {
                    ApplicationArea = All;
                    Caption = 'POSITION', comment = 'ESP="PUESTO"';
                }
                field("HEAD DEPARTMENT No."; Rec."Head Studies .Id")
                {
                    ApplicationArea = All;
                    Caption = 'HEAD DEPARTMENT No.', comment = 'ESP="No. JEFE DE DEPART."';
                }
                field("HEAD DEPARTMENT NAME"; Rec."Head Studies Name")
                {
                    ApplicationArea = All;
                    Caption = 'HEAD DEPARTMENT NAME', comment = 'ESP="NOMBRE JEFE DE DEPART."';
                }
            }
        }
    }
}