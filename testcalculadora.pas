unit testcalculadora;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, fpcunit, testutils, testregistry, calculadora;

type

  { TTestCalculadora }

  TTestCalculadora= class(TTestCase)
  private
    FCalculadora: TCalculadora;
  protected
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure Teste_Somar;
    procedure Teste_Subtrair;
    procedure Teste_Multiplicar;
    procedure Teste_Dividir;
  end;

implementation

procedure TTestCalculadora.Teste_Somar;
begin
  AssertEquals(4, FCalculadora.Somar(2, 2));
end;

procedure TTestCalculadora.Teste_Subtrair;
begin
  AssertEquals(3, FCalculadora.Subtrair(7, 4));
end;

procedure TTestCalculadora.Teste_Multiplicar;
begin
  AssertEquals(16, FCalculadora.Multiplicar(4, 4));
end;

procedure TTestCalculadora.Teste_Dividir;
begin
  AssertEquals(3, FCalculadora.Dividir(9, 3));
end;

procedure TTestCalculadora.SetUp;
begin
  FCalculadora := TCalculadora.Create;
end;

procedure TTestCalculadora.TearDown;
begin
  FCalculadora.Free;
end;

initialization

  RegisterTest(TTestCalculadora);
end.

