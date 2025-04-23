object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'Gerenciador de Produtos'
  ClientHeight = 318
  ClientWidth = 418
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 418
    Height = 41
    Align = alTop
    Caption = 'Gerenciador de Produtos'
    TabOrder = 0
  end
  object btnOpenProducts: TButton
    Left = 92
    Top = 107
    Width = 235
    Height = 41
    Caption = 'Produtos'
    TabOrder = 1
    OnClick = btnOpenProductsClick
  end
  object btnOpenCategories: TButton
    Left = 92
    Top = 163
    Width = 235
    Height = 41
    Caption = 'Categorias'
    TabOrder = 2
    OnClick = btnOpenCategoriesClick
  end
  object btnExit: TButton
    Left = 92
    Top = 219
    Width = 235
    Height = 41
    Caption = 'Sair'
    TabOrder = 3
    OnClick = btnExitClick
  end
end
