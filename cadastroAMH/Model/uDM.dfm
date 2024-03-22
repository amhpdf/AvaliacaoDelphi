object DM: TDM
  OnCreate = DataModuleCreate
  Height = 477
  Width = 768
  object FDConnection: TFDConnection
    Params.Strings = (
      'Protocol='
      'DriverID=FB'
      'User_Name=SYSDBA'
      'Password=masterkey')
    Left = 168
    Top = 80
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 368
    Top = 168
  end
  object FDQuery: TFDQuery
    Connection = FDConnection
    Left = 552
    Top = 88
  end
end
