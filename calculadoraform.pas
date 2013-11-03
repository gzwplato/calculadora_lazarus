unit CalculadoraForm;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  calculadora;

type

  { TFrmCalculadora }

  TFrmCalculadora = class(TForm)
    btnDividir: TButton;
    btnSomar: TButton;
    btnSubtrair: TButton;
    btnMultiplicar: TButton;
    edtResultado: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edtValor1: TEdit;
    edtValor2: TEdit;
    procedure btnDividirClick(Sender: TObject);
    procedure btnMultiplicarClick(Sender: TObject);
    procedure btnSomarClick(Sender: TObject);
    procedure btnSubtrairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    FCalculadora: TCalculadora;
  public
    { public declarations }
  end;

var
  FrmCalculadora: TFrmCalculadora;

implementation

{$R *.lfm}

{ TFrmCalculadora }

procedure TFrmCalculadora.FormCreate(Sender: TObject);
begin
  FCalculadora := TCalculadora.Create;
end;

procedure TFrmCalculadora.btnSomarClick(Sender: TObject);
var
  Valor1, Valor2: Extended;
begin
  Valor1 := StrToFloatDef(edtValor1.Text, 0);
  Valor2 := StrToFloatDef(edtValor2.Text, 0);
  edtResultado.Text:= FloatToStr(FCalculadora.Somar(Valor1, Valor2));
end;

procedure TFrmCalculadora.btnMultiplicarClick(Sender: TObject);
var
  Valor1, Valor2: Extended;
begin
  Valor1 := StrToFloatDef(edtValor1.Text, 0);
  Valor2 := StrToFloatDef(edtValor2.Text, 0);
  edtResultado.Text:= FloatToStr(FCalculadora.Multiplicar(Valor1, Valor2));
end;

procedure TFrmCalculadora.btnDividirClick(Sender: TObject);
var
  Valor1, Valor2: Extended;
begin
  Valor1 := StrToFloatDef(edtValor1.Text, 0);
  Valor2 := StrToFloatDef(edtValor2.Text, 0);
  edtResultado.Text:= FloatToStr(FCalculadora.Dividir(Valor1, Valor2));
end;

procedure TFrmCalculadora.btnSubtrairClick(Sender: TObject);
var
  Valor1, Valor2: Extended;
begin
  Valor1 := StrToFloatDef(edtValor1.Text, 0);
  Valor2 := StrToFloatDef(edtValor2.Text, 0);
  edtResultado.Text:= FloatToStr(FCalculadora.Subtrair(Valor1, Valor2));
end;

procedure TFrmCalculadora.FormDestroy(Sender: TObject);
begin
  FCalculadora.Free;
end;

end.

