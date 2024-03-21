object FR_PADRAO: TFR_PADRAO
  Left = 0
  Top = 0
  Width = 490
  Height = 392
  TabOrder = 0
  object pnl_default: TPanel
    Left = 0
    Top = 0
    Width = 490
    Height = 392
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    ExplicitLeft = -3
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 490
      Height = 25
      Align = alTop
      TabOrder = 0
      object Label1: TLabel
        Left = 458
        Top = 1
        Width = 31
        Height = 23
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 10
        Margins.Bottom = 0
        Align = alRight
        Alignment = taCenter
        Caption = 'X'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = Label1Click
        ExplicitLeft = 448
      end
    end
  end
end
