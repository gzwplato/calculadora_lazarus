program testesProjetoCalculadora;

{$mode objfpc}{$H+}

uses
  Interfaces, Forms, testcalculadora, calculadora, GuiTestRunner;

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TGuiTestRunner, TestRunner);
  Application.Run;
end.

