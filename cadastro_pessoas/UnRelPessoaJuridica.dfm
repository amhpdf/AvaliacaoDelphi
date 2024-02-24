object FormRelPessoaJuridica: TFormRelPessoaJuridica
  Left = 0
  Top = 0
  Caption = 'FormRelPessoaJuridica'
  ClientHeight = 551
  ClientWidth = 909
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object RLPessoaJuridica: TRLReport
    Left = 56
    Top = 8
    Width = 794
    Height = 1123
    DataSource = DM.DsPessoaJuridica
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand4: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 40
      BandType = btTitle
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLabel1: TRLLabel
        Left = 185
        Top = 5
        Width = 348
        Height = 29
        Align = faCenter
        Caption = 'Rela'#231#227'o de Pessoas Juridicas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 3
        Top = 11
        Width = 39
        Height = 16
        Text = ''
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 676
        Top = 11
        Width = 39
        Height = 16
        Alignment = taRightJustify
        Info = itHour
        Text = ''
      end
    end
    object RLBand5: TRLBand
      Left = 38
      Top = 78
      Width = 718
      Height = 23
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLabel2: TRLLabel
        Left = 3
        Top = 3
        Width = 42
        Height = 16
        Caption = 'NOME'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 289
        Top = 3
        Width = 38
        Height = 16
        Caption = 'CNPJ'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 101
      Width = 718
      Height = 20
      AutoSize = True
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLDBText1: TRLDBText
        Left = 3
        Top = 3
        Width = 43
        Height = 16
        DataField = 'NOME'
        DataSource = DM.DsPessoaJuridica
        Text = ''
      end
      object RLDBText2: TRLDBText
        Left = 289
        Top = 2
        Width = 37
        Height = 16
        DataField = 'CNPJ'
        DataSource = DM.DsPessoaJuridica
        Text = ''
      end
    end
  end
end
