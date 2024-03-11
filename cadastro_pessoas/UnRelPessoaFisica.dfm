object FormRelPessoaFisica: TFormRelPessoaFisica
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rio'
  ClientHeight = 474
  ClientWidth = 785
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object RlPessoaFisica: TRLReport
    Left = -8
    Top = 0
    Width = 794
    Height = 1123
    DataSource = DM.DsPessoaFisica
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PageSetup.PaperSize = fpCustom
    PageSetup.PaperWidth = 210.000000000000000000
    PageSetup.PaperHeight = 297.000000000000000000
    object RLBand1: TRLBand
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
        Left = 197
        Top = 5
        Width = 324
        Height = 29
        Align = faCenter
        Caption = 'Rela'#231#227'o de Pessoas F'#237'sicas'
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
    object RLBand3: TRLBand
      Left = 38
      Top = 101
      Width = 718
      Height = 19
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
        DataSource = DM.DsPessoaFisica
        Text = ''
      end
      object RLDBText2: TRLDBText
        Left = 289
        Top = 1
        Width = 30
        Height = 16
        DataField = 'CPF'
        DataSource = DM.DsPessoaFisica
        Text = ''
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 120
      Width = 718
      Height = 1
    end
    object RLBand4: TRLBand
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
        Width = 30
        Height = 16
        Caption = 'CPF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
end
