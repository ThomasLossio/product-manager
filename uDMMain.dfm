object DMMain: TDMMain
  Height = 480
  Width = 640
  object connMain: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\thoma\OneDrive\Documentos\Embarcadero\Studio\P' +
        'rojects\ProductManager\PRODUCTSCATEGORIES.IB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'DriverID=IB')
    Connected = True
    LoginPrompt = False
    Left = 104
    Top = 152
  end
  object qryProducts: TFDQuery
    Active = True
    Connection = connMain
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_PRODUCTS_ID'
    UpdateOptions.KeyFields = 'ID'
    UpdateOptions.AutoIncFields = 'ID'
    SQL.Strings = (
      '               select * from products;')
    Left = 208
    Top = 152
    object qryProductsID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryProductsNAME: TStringField
      FieldName = 'NAME'
      Origin = 'NAME'
      Required = True
      Size = 100
    end
    object qryProductsCATEGORY_ID: TIntegerField
      FieldName = 'CATEGORY_ID'
      Origin = 'CATEGORY_ID'
      Required = True
    end
    object qryProductsPRICE: TFMTBCDField
      FieldName = 'PRICE'
      Origin = 'PRICE'
      Precision = 18
      Size = 2
    end
    object qryProductsQUANTITY: TIntegerField
      FieldName = 'QUANTITY'
      Origin = 'QUANTITY'
    end
  end
  object qryCategories: TFDQuery
    Active = True
    Connection = connMain
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_CATEGORIES_ID'
    UpdateOptions.KeyFields = 'ID'
    UpdateOptions.AutoIncFields = 'ID'
    SQL.Strings = (
      'select * from categories;')
    Left = 208
    Top = 216
    object qryCategoriesID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryCategoriesNAME: TStringField
      FieldName = 'NAME'
      Origin = 'NAME'
      Required = True
      Size = 100
    end
  end
end
