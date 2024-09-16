program DelphiFakeDataUtilsSample;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  RandomUtilsU in '..\RandomUtilsU.pas';

procedure Main;
var
  I: Integer;
begin
  for I := 1 to 100 do
  begin
    Writeln(Format('%-20s from %s %s', [GetRndFullName, GetRndCountry, DateToStr(GetRndDate)]));
  end;
end;

begin
  try
    Main;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
  Write('Press return to continue...');
  ReadLn;
end.
