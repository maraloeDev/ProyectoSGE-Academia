codeunit 50102 "Total Beneficios Cursos"
{
    procedure getBenefits(var Course: Record Course): Decimal
    var
        total: Decimal;
    begin
        total := 0;

        if Course.FindSet() then begin
            repeat
                total += (Course."Course fee");
            until Course.NEXT = 0;
        end;
        if (total > 0) then
            Message('Total Beneficios: ' + Format(total))
        else
            Message('El curso no tiene beneficios');
        exit(total);
    end;
}