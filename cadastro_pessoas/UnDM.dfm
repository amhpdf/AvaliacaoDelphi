object DM: TDM
  Height = 380
  Width = 498
  object FDConnection: TFDConnection
    Params.Strings = (
      'Database=C:\firebid\CADASTRO_PESSOAS.FDB'
      'User_Name=SYSDBA'
      'Password=123456'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 40
    Top = 16
  end
  object FDQueryPessoaFisica: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'SELECT * FROM pessoa_fisica;')
    Left = 144
    Top = 8
    object FDQueryPessoaFisicaPESSOA_FISICA_ID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'PESSOA_FISICA_ID'
      Origin = 'PESSOA_FISICA_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDQueryPessoaFisicaNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 100
    end
    object FDQueryPessoaFisicaCPF: TStringField
      FieldName = 'CPF'
      Origin = 'CPF'
      Required = True
      EditMask = '000.000.000-00;1;_'
      Size = 14
    end
    object FDQueryPessoaFisicaPESSOA_JURIDICA_ID: TIntegerField
      FieldName = 'PESSOA_JURIDICA_ID'
      Origin = 'PESSOA_JURIDICA_ID'
    end
  end
  object DsPessoaFisica: TDataSource
    DataSet = FDQueryPessoaFisica
    Left = 248
    Top = 8
  end
  object FDQueryPessoaJuridica: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'SELECT * FROM PESSOA_JURIDICA;')
    Left = 136
    Top = 64
    object FDQueryPessoaJuridicaPESSOA_JURIDICA_ID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'PESSOA_JURIDICA_ID'
      Origin = 'PESSOA_JURIDICA_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDQueryPessoaJuridicaNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 100
    end
    object FDQueryPessoaJuridicaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 100
    end
    object FDQueryPessoaJuridicaTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      EditMask = '(00) 0000-0000;1;_'
      Size = 14
    end
    object FDQueryPessoaJuridicaCELULAR: TStringField
      FieldName = 'CELULAR'
      Origin = 'CELULAR'
      EditMask = '(00) 90000-0000;1;_'
      Size = 14
    end
    object FDQueryPessoaJuridicaCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Required = True
      EditMask = '99.999.999/9999-99;1;_'
      Size = 14
    end
    object FDQueryPessoaJuridicaEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 100
    end
  end
  object DsPessoaJuridica: TDataSource
    DataSet = FDQueryPessoaJuridica
    Left = 256
    Top = 64
  end
  object FDQueryExecuta: TFDQuery
    Connection = FDConnection
    Left = 376
    Top = 56
  end
end
