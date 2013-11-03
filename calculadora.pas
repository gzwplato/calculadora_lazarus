unit calculadora;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

type

  TCalculadora = class
  public
    function Somar(valor1, valor2: Extended): Extended;
    function Subtrair(valor1, valor2: Extended): Extended;
    function Multiplicar(valor1, valor2: Extended): Extended;
    function Dividir(valor1, valor2: Extended): Extended;
  end;

implementation

function TCalculadora.Somar(valor1, valor2: Extended): Extended;
begin
  Result := valor1 + valor2;
end;

function TCalculadora.Subtrair(valor1, valor2: Extended): Extended;
begin
  Result := valor1 - valor2;
end;

function TCalculadora.Multiplicar(valor1, valor2: Extended): Extended;
begin
  Result := valor1 * valor2;
end;

function TCalculadora.Dividir(valor1, valor2: Extended): Extended;
begin
  Result := valor1 / valor2;
end;

end.

