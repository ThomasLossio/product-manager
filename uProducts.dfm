object frmProductRegistration: TfrmProductRegistration
  Left = 0
  Top = 0
  Caption = 'Produtos'
  ClientHeight = 441
  ClientWidth = 377
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object lblProductName: TLabel
    Left = 15
    Top = 64
    Width = 99
    Height = 15
    Caption = 'Nome do Produto:'
  end
  object lblCategory: TLabel
    Left = 15
    Top = 96
    Width = 54
    Height = 15
    Caption = 'Categoria:'
  end
  object lblPrice: TLabel
    Left = 15
    Top = 128
    Width = 33
    Height = 15
    Caption = 'Pre'#231'o:'
  end
  object lblQuantity: TLabel
    Left = 15
    Top = 160
    Width = 65
    Height = 15
    Caption = 'Quantidade:'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 377
    Height = 41
    Align = alTop
    Caption = 'Registro de Produtos'
    TabOrder = 0
    ExplicitWidth = 185
  end
  object Panel2: TPanel
    Left = 0
    Top = 226
    Width = 377
    Height = 41
    Caption = 'Lista de Produtos'
    TabOrder = 1
  end
  object btnSave: TButton
    Left = 15
    Top = 192
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 2
  end
  object btnClear: TButton
    Left = 146
    Top = 192
    Width = 75
    Height = 25
    Caption = 'Limpar'
    TabOrder = 3
  end
  object btnDelete: TButton
    Left = 287
    Top = 192
    Width = 75
    Height = 25
    Caption = 'Excluir'
    TabOrder = 4
  end
  object dbName: TDBEdit
    Left = 120
    Top = 61
    Width = 242
    Height = 23
    TabOrder = 5
  end
  object dbPrice: TDBEdit
    Left = 120
    Top = 125
    Width = 242
    Height = 23
    TabOrder = 6
  end
  object dbQuantity: TDBEdit
    Left = 120
    Top = 157
    Width = 242
    Height = 23
    TabOrder = 7
  end
  object dbCategory: TDBLookupComboBox
    Left = 120
    Top = 93
    Width = 242
    Height = 23
    TabOrder = 8
  end
  object dbProducts: TDBGrid
    Left = 0
    Top = 273
    Width = 377
    Height = 160
    TabOrder = 9
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
end
