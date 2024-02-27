codeunit 50101 "Total salarios de profesores"
{
    trigger OnRun()
    begin

    end;

    procedure TotalSalariosProfesores()
    var
        Profesor: Record "Teacher";
        SalarioTotal: Decimal;
    begin
        Profesor.RESET;
        SalarioTotal := 0;
        if Profesor.FINDSET then
            repeat
                SalarioTotal := SalarioTotal + Profesor."Salary";
            until Profesor.NEXT = 0;
        MESSAGE('El salario total de los profesores es: %1', SalarioTotal);
    end;
}