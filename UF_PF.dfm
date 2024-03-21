inherited FR_PF: TFR_PF
  Width = 640
  Height = 480
  ExplicitWidth = 640
  ExplicitHeight = 480
  inherited pnl_default: TPanel
    Width = 640
    Height = 480
    ExplicitLeft = 0
    ExplicitWidth = 640
    ExplicitHeight = 480
    object grid_pf: TDBGrid [0]
      AlignWithMargins = True
      Left = 10
      Top = 35
      Width = 620
      Height = 384
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 10
      Align = alClient
      DataSource = DM.ds_pf
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      OnDblClick = grid_pfDblClick
    end
    object pnl_rodape: TPanel [1]
      Left = 0
      Top = 429
      Width = 640
      Height = 51
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      ExplicitTop = 536
      ExplicitWidth = 711
      object btn_adicionar: TButton
        Left = 284
        Top = 8
        Width = 75
        Height = 25
        Caption = 'Adicionar'
        TabOrder = 0
        OnClick = btn_adicionarClick
      end
    end
    inherited Panel1: TPanel
      Width = 640
      TabOrder = 2
    end
  end
end
