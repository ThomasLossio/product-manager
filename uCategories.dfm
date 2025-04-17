object frmCategories: TfrmCategories
  Left = 0
  Top = 0
  Caption = 'Categorias'
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
    Width = 106
    Height = 15
    Caption = 'Nome da Categoria:'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 377
    Height = 41
    Align = alTop
    Caption = 'Registro de Categorias'
    TabOrder = 0
    ExplicitWidth = 185
  end
  object Panel2: TPanel
    Left = 0
    Top = 121
    Width = 377
    Height = 41
    Caption = 'Lista de Categorias'
    TabOrder = 1
  end
  object btnSave: TButton
    Left = 15
    Top = 90
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 2
  end
  object btnClear: TButton
    Left = 146
    Top = 90
    Width = 75
    Height = 25
    Caption = 'Limpar'
    TabOrder = 3
  end
  object btnDelete: TButton
    Left = 287
    Top = 90
    Width = 75
    Height = 25
    Caption = 'Excluir'
    TabOrder = 4
  end
  object dbName: TDBEdit
    Left = 127
    Top = 61
    Width = 235
    Height = 23
    TabOrder = 5
  end
  object dbCategories: TDBGrid
    Left = 0
    Top = 168
    Width = 377
    Height = 265
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
end
