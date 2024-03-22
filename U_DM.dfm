object DM: TDM
  Height = 480
  Width = 640
  object fd_connection: TFDConnection
    Params.Strings = (
      'Database=C:\DEV\avaliacao_AMHPDF\AvaliacaoDelphi\DB.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 56
    Top = 40
  end
  object tbl_pj: TFDTable
    Active = True
    IndexFieldNames = 'ID'
    Connection = fd_connection
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'PJ'
    Left = 216
    Top = 152
    object tbl_pjID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object tbl_pjNOME: TStringField
      DisplayWidth = 25
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 255
    end
    object tbl_pjCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Size = 14
    end
    object tbl_pjTELEFONE: TStringField
      DisplayWidth = 15
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Size = 25
    end
    object tbl_pjCELULAR: TStringField
      DisplayWidth = 15
      FieldName = 'CELULAR'
      Origin = 'CELULAR'
      Size = 25
    end
    object tbl_pjEMAIL: TStringField
      DisplayWidth = 20
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 255
    end
    object tbl_pjUF: TStringField
      DisplayWidth = 5
      FieldName = 'UF'
      Origin = 'UF'
      Size = 2
    end
    object tbl_pjCIDADE: TStringField
      DisplayWidth = 25
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 100
    end
    object tbl_pjENDERECO: TStringField
      DisplayWidth = 25
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 100
    end
  end
  object tbl_pf: TFDTable
    Active = True
    IndexFieldNames = 'ID'
    Connection = fd_connection
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'PF'
    Left = 216
    Top = 40
    object tbl_pfID: TSmallintField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object tbl_pfNOME: TStringField
      DisplayWidth = 80
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 255
    end
    object tbl_pfCPF: TStringField
      DisplayWidth = 19
      FieldName = 'CPF'
      Origin = 'CPF'
      Required = True
      Size = 14
    end
  end
  object tbl_pj_pf: TFDTable
    Active = True
    IndexFieldNames = 'ID'
    Connection = fd_connection
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'FISICA_JURIDICA'
    Left = 216
    Top = 96
    object tbl_pj_pfID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tbl_pj_pfID_PF: TIntegerField
      FieldName = 'ID_PF'
      Origin = 'ID_PF'
      Required = True
    end
    object tbl_pj_pfID_PJ: TIntegerField
      FieldName = 'ID_PJ'
      Origin = 'ID_PJ'
      Required = True
    end
  end
  object ds_pf: TDataSource
    DataSet = tbl_pf
    Left = 176
    Top = 40
  end
  object ds_pj: TDataSource
    DataSet = tbl_pj
    Left = 176
    Top = 152
  end
  object ds_pj_pf: TDataSource
    DataSet = tbl_pj_pf
    Left = 176
    Top = 96
  end
end
