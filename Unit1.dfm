object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 236
  ClientWidth = 444
  Color = clGray
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Segoe UI'
  Font.Style = [fsBold]
  TextHeight = 21
  object btnprimeiro: TButton
    Left = 8
    Top = 24
    Width = 201
    Height = 49
    Caption = 'Visualizar valores'
    TabOrder = 0
    OnClick = btnprimeiroClick
  end
  object btnsegundo: TButton
    Left = 240
    Top = 24
    Width = 196
    Height = 49
    Caption = 'Passagem de parametros'
    TabOrder = 1
    OnClick = btnsegundoClick
  end
  object Memo1: TMemo
    Left = 8
    Top = 79
    Width = 428
    Height = 149
    TabOrder = 2
  end
end
