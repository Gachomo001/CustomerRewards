codeunit 50100 SumOfTwo
{
    trigger OnRun()
    begin

        add(num1, num2);

    end;

    procedure add(num1: Integer; num2: Integer)
    var
        tot: Integer;
    begin
        tot := num1 + num2;
        Message('Sum of two numbers %1,%2 is %3', num1, num2, tot);

    end;

    var
        num1: Integer;
        num2: Integer;
}