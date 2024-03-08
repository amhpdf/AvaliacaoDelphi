object dsPrint: TdsPrint
  Height = 750
  Width = 1000
  PixelsPerInch = 120
  object FDConnection: TFDConnection
    Params.Strings = (
      'Database=C:\Banco\CADASTRO.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 72
    Top = 32
  end
  object qryCadastro: TFDQuery
    Active = True
    AfterPost = qryCadastroAfterPost
    FieldOptions.UpdatePersistent = True
    CachedUpdates = True
    Connection = FDConnection
    UpdateOptions.AssignedValues = [uvUpdateMode]
    SQL.Strings = (
      'select * from pessoa p')
    Left = 72
    Top = 112
    object qryCadastroID: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryCadastroNOME: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 19
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 80
    end
    object qryCadastroCPF_CNPJ: TStringField
      DisplayLabel = 'CPF/CNPJ'
      DisplayWidth = 16
      FieldName = 'CPF_CNPJ'
      Origin = 'CPF_CNPJ'
      Required = True
      Size = 14
    end
    object qryCadastroENDERECO: TStringField
      DisplayLabel = 'Endere'#231'o'
      DisplayWidth = 29
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 120
    end
    object qryCadastroCEP: TStringField
      DisplayWidth = 8
      FieldName = 'CEP'
      Origin = 'CEP'
      FixedChar = True
      Size = 10
    end
    object qryCadastroUF: TStringField
      DisplayWidth = 3
      FieldName = 'UF'
      Origin = 'UF'
      FixedChar = True
      Size = 2
    end
    object qryCadastroCIDADE: TStringField
      DisplayLabel = 'Cidade'
      DisplayWidth = 29
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 60
    end
    object qryCadastroBAIRRO: TStringField
      DisplayLabel = 'Bairro'
      DisplayWidth = 28
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 60
    end
    object qryCadastroEMAIL: TStringField
      DisplayLabel = 'E-mail'
      DisplayWidth = 26
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 40
    end
    object qryCadastroTELEFONE: TStringField
      DisplayLabel = 'Telefone'
      DisplayWidth = 13
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Size = 16
    end
    object qryCadastroCELULAR: TStringField
      DisplayLabel = 'Celular'
      DisplayWidth = 14
      FieldName = 'CELULAR'
      Origin = 'CELULAR'
      Size = 16
    end
    object qryCadastroTIPO: TStringField
      DisplayWidth = 8
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 8
    end
  end
  object dsCadastro: TDataSource
    DataSet = qryCadastro
    Left = 72
    Top = 184
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 616
    Top = 72
  end
  object qryVinculo: TFDQuery
    Active = True
    Connection = FDConnection
    SQL.Strings = (
      'select p.nome, p.id'
      '  from pessoa p'
      ' inner join pessoa_vinculo pv'
      '    on p.id = pv.id_pfisico'
      '   and pv.id_pjuridico = :id')
    Left = 184
    Top = 112
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryVinculoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 80
    end
    object qryVinculoID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object dsVinculo: TDataSource
    DataSet = qryVinculo
    Left = 184
    Top = 184
  end
  object qryPrint: TFDQuery
    Active = True
    Connection = FDConnection
    SQL.Strings = (
      'select p.nome, p.cpf_cnpj '
      '  from pessoa p'
      ' where p.tipo = '#39'F'#237'sica'#39' '
      '  ')
    Left = 264
    Top = 112
  end
  object dsPrint: TDataSource
    DataSet = qryPrint
    Left = 264
    Top = 184
  end
  object qryCombo: TFDQuery
    Active = True
    Connection = FDConnection
    FormatOptions.AssignedValues = [fvSortOptions]
    FormatOptions.SortOptions = [soDescending]
    SQL.Strings = (
      'select p.id, p.nome from pessoa p')
    Left = 344
    Top = 112
    object qryComboNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 80
    end
    object qryComboID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object dsCombo: TDataSource
    DataSet = qryCombo
    Left = 352
    Top = 184
  end
end
