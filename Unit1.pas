unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    btnprimeiro: TButton;
    btnsegundo: TButton;
    Memo1: TMemo;
    procedure btnprimeiroClick(Sender: TObject);
    procedure btnsegundoClick(Sender: TObject);
  private
    FValorTotal: Integer;
    FAliquota: Double;
  public
    function CalculaValor: Integer;
    function CalculaTributos: Double;
    procedure VisualizaMsg;

    function SomaValores(aValor1: Integer; aValor2: Integer): Integer;
    function SomaValores2(aValor1: Integer; aValor2: Integer): String;

    function SomaRef(var aValor1: Integer): Integer;

    procedure Calculo(Valor1: Integer; out Valor2: Integer);
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnprimeiroClick(Sender: TObject);
var
  lValor: Integer;
begin
  FValorTotal := 100;
  FAliquota := 100;

  lValor := CalculaValor;
  Memo1.Lines.Add('Show, estamos ao vivo');
  Memo1.Lines.Add('=====Metodo com Retorno (Function)=====');
  Memo1.Lines.Add(lValor.ToString);

  Memo1.Lines.Add('=====Metodo com Retorno 2 (Function)=====');
  Memo1.Lines.Add(CalculaTributos.ToString);

  VisualizaMsg;
end;

procedure TForm1.btnsegundoClick(Sender: TObject);
var
  lSoma: Integer;
  lSomaRef: Integer;
  lOut: Integer;
begin
  Memo1.Clear;

  lSoma:= SomaValores(4, 5);

  Memo1.Lines.Add('===============Soma============');
  Memo1.Lines.Add(lSoma.ToString);

  Memo1.Lines.Add('===============Soma 2============');
  Memo1.Lines.Add(SomaValores2(10, 7));

  lSomaRef := SomaRef(lSoma);
  Memo1.Lines.Add('===============Por referencia============');
  Memo1.Lines.Add('Retorno de LSoma: ' + LSoma.ToString);
  Memo1.Lines.Add('Retorno de LSomaRef: ' + LSomaRef.ToString);

  lOut:= 10;
  Calculo(3, lOut);
  Memo1.Lines.Add('Metodo sem retorno com referencia: ' + lOut.ToString);
end;

function TForm1.CalculaTributos: Double;
begin
  Result := FAliquota * 0.1;
end;

function TForm1.CalculaValor: Integer;
begin
  Result := FValorTotal + 1;
end;

procedure TForm1.Calculo(Valor1: Integer; out Valor2: Integer);
begin
  Valor2 := Valor1 + 10;
end;

function TForm1.SomaRef(var aValor1: Integer): Integer;
begin
  aValor1 := aValor1 + 10;
  Result := 10;
end;

function TForm1.SomaValores(aValor1, aValor2: Integer): Integer;
begin
  Result := aValor1 + aValor2;
end;

function TForm1.SomaValores2(aValor1, aValor2: Integer): String;
var
  lSoma: Integer;
begin
  lSoma := aValor1 + aValor2;
  Result := 'A soma dos valores é ' + lSoma.ToString;
end;

procedure TForm1.VisualizaMsg;
begin
  ShowMessage('Estou na procedure');
end;

end.
