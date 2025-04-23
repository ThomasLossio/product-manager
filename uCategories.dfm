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
    Left = 0
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
  end
  object Panel2: TPanel
    Left = 0
    Top = 129
    Width = 377
    Height = 41
    Caption = 'Lista de Categorias'
    TabOrder = 1
  end
  object btnSave: TButton
    Left = 103
    Top = 94
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 2
    OnClick = btnSaveClick
  end
  object btnClear: TButton
    Left = 202
    Top = 94
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 3
    OnClick = btnClearClick
  end
  object btnDelete: TButton
    Left = 302
    Top = 94
    Width = 75
    Height = 25
    Caption = 'Excluir'
    TabOrder = 4
    OnClick = btnDeleteClick
  end
  object dbName: TDBEdit
    Left = 112
    Top = 61
    Width = 265
    Height = 23
    DataField = 'NAME'
    DataSource = dsCategories
    TabOrder = 5
  end
  object dbCategories: TDBGrid
    Left = 0
    Top = 176
    Width = 377
    Height = 257
    DataSource = dsCategories
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object btnAdd: TButton
    Left = 0
    Top = 94
    Width = 75
    Height = 25
    Caption = 'Novo'
    TabOrder = 7
    OnClick = btnAddClick
  end
  object dsCategories: TDataSource
    DataSet = DMMain.qryCategories
    OnDataChange = dsCategoriesDataChange
    Left = 40
    Top = 368
  end
end
