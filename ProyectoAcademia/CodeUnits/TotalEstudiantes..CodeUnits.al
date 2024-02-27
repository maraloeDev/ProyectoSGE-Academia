codeunit 50100 "Total Estudiantes"
{
    procedure GetTotalEnrolledStudents(var course: Record Course): Integer
    var
        TotalSuma: Integer;

    begin
        TotalSuma := 0;

        Course.RESET;
        Course.SETRANGE("No.", 0, Course.COUNT);

        if Course.FindSet() then begin
            repeat
                TotalSuma += Course."Number of Students";
            until Course.NEXT = 0;
        end;
        if (TotalSuma > 0) then
            Message('Numero de estudiantes: ' + Format(TotalSuma))
        else
            Message('El curso no tiene estudiantes');
        exit(TotalSuma);
    end;


}