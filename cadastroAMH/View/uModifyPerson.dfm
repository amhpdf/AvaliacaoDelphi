object FrmModifyPerson: TFrmModifyPerson
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'FrmModifyPerson'
  ClientHeight = 617
  ClientWidth = 996
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnShow = FormShow
  TextHeight = 15
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 996
    Height = 65
    Align = alTop
    BevelOuter = bvNone
    Color = 16316664
    Padding.Left = 20
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 992
    object labTittle: TLabel
      AlignWithMargins = True
      Left = 20
      Top = 3
      Width = 973
      Height = 59
      Margins.Left = 0
      Align = alClient
      AutoSize = False
      Caption = 'Cadastros'
      Color = 16316664
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -27
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
      Layout = tlCenter
      ExplicitLeft = 0
      ExplicitTop = 1
      ExplicitWidth = 938
    end
  end
  object pnlBottom: TPanel
    Left = 0
    Top = 567
    Width = 996
    Height = 50
    Align = alBottom
    BevelOuter = bvNone
    Color = 16316664
    ParentBackground = False
    TabOrder = 1
    ExplicitTop = 566
    ExplicitWidth = 992
    object labConfirmar: TLabel
      AlignWithMargins = True
      Left = 907
      Top = 3
      Width = 69
      Height = 44
      Margins.Left = 0
      Margins.Right = 20
      Align = alRight
      Alignment = taCenter
      AutoSize = False
      Caption = 'Confirmar'
      Color = 6145601
      Font.Charset = ANSI_CHARSET
      Font.Color = 6145601
      Font.Height = -15
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
      Layout = tlCenter
      OnClick = labConfirmarClick
      ExplicitLeft = 112
      ExplicitTop = 6
    end
  end
  object scrollBoxBody: TScrollBox
    Left = 0
    Top = 65
    Width = 996
    Height = 502
    HorzScrollBar.Visible = False
    VertScrollBar.Tracking = True
    Align = alClient
    BorderStyle = bsNone
    Color = 16316664
    Padding.Left = 20
    Padding.Right = 20
    ParentColor = False
    TabOrder = 2
    ExplicitWidth = 992
    ExplicitHeight = 501
    object labTittleDados: TLabel
      AlignWithMargins = True
      Left = 20
      Top = 0
      Width = 956
      Height = 29
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alTop
      AutoSize = False
      Caption = 'Dados da pessoa jur'#237'dica'
      Color = 12966379
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 6316128
      Font.Height = -17
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
      Layout = tlCenter
      ExplicitTop = -15
      ExplicitWidth = 976
    end
    object pnlRegisterLegal: TPanel
      Left = 20
      Top = 102
      Width = 956
      Height = 400
      Align = alTop
      BevelOuter = bvNone
      Color = 16316664
      ParentBackground = False
      TabOrder = 0
      Visible = False
      ExplicitWidth = 935
      object labConectionTittle: TLabel
        AlignWithMargins = True
        Left = 0
        Top = 276
        Width = 953
        Height = 29
        Margins.Left = 0
        Align = alTop
        AutoSize = False
        Caption = 'Pessoas f'#237'sicas '#224' vincular'
        Color = 12966379
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 6316128
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = True
        Layout = tlCenter
        Visible = False
        ExplicitLeft = 20
        ExplicitTop = 308
        ExplicitWidth = 936
      end
      object pnlMenuTop: TPanel
        Left = 0
        Top = 0
        Width = 956
        Height = 273
        Align = alTop
        BevelOuter = bvNone
        Color = 16316664
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 16316664
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        ExplicitWidth = 935
        object Shape1: TShape
          Left = 0
          Top = 36
          Width = 956
          Height = 1
          Align = alTop
          Pen.Color = 14474460
          ExplicitLeft = 1
          ExplicitWidth = 0
        end
        object Shape5: TShape
          Left = 0
          Top = 0
          Width = 956
          Height = 1
          Align = alTop
          Pen.Color = 14474460
          ExplicitWidth = 1162
        end
        object Shape2: TShape
          Left = 0
          Top = 72
          Width = 956
          Height = 1
          Align = alTop
          Pen.Color = 14474460
          ExplicitTop = 44
          ExplicitWidth = 929
        end
        object Shape17: TShape
          Left = 0
          Top = 108
          Width = 956
          Height = 1
          Align = alTop
          Pen.Color = 14474460
          ExplicitTop = 200
          ExplicitWidth = 929
        end
        object Shape15: TShape
          Left = 0
          Top = 144
          Width = 956
          Height = 1
          Align = alTop
          Pen.Color = 14474460
          ExplicitTop = 200
          ExplicitWidth = 929
        end
        object Shape6: TShape
          Left = 0
          Top = 180
          Width = 956
          Height = 1
          Align = alTop
          Pen.Color = 14474460
          ExplicitTop = 170
        end
        object Shape7: TShape
          Left = 0
          Top = 216
          Width = 956
          Height = 1
          Align = alTop
          Pen.Color = 14474460
          ExplicitLeft = 1
          ExplicitTop = 36
          ExplicitWidth = 0
        end
        object Shape28: TShape
          Left = 0
          Top = 252
          Width = 956
          Height = 1
          Align = alTop
          Pen.Color = 14474460
          ExplicitTop = 232323
        end
        object pnlBodyName: TPanel
          Left = 0
          Top = 1
          Width = 956
          Height = 35
          Align = alTop
          BevelOuter = bvNone
          Color = 16316664
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 16316664
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentBackground = False
          ParentFont = False
          TabOrder = 0
          ExplicitWidth = 935
          object pnlEdtNameLegal: TPanel
            Left = 150
            Top = 0
            Width = 806
            Height = 35
            Align = alClient
            BevelOuter = bvNone
            Color = 16316664
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 16316664
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            Padding.Left = 20
            ParentBackground = False
            ParentFont = False
            TabOrder = 0
            ExplicitWidth = 785
            object Shape4: TShape
              Left = 805
              Top = 0
              Width = 1
              Height = 35
              Align = alRight
              Pen.Color = 14474460
              ExplicitLeft = 31
              ExplicitHeight = 33
            end
            object edtNameLegal: TEdit
              AlignWithMargins = True
              Left = 20
              Top = 7
              Width = 785
              Height = 28
              Margins.Left = 0
              Margins.Top = 7
              Margins.Right = 0
              Margins.Bottom = 0
              Align = alClient
              AutoSize = False
              BorderStyle = bsNone
              Color = 16316664
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6316128
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              ExplicitWidth = 764
            end
          end
          object pnllabNameLegal: TPanel
            Left = 0
            Top = 0
            Width = 150
            Height = 35
            Align = alLeft
            BevelOuter = bvNone
            Color = 16316664
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 16316664
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentBackground = False
            ParentFont = False
            TabOrder = 1
            object shpRight: TShape
              Left = 149
              Top = 0
              Width = 1
              Height = 35
              Align = alRight
              Pen.Color = 14474460
              ExplicitLeft = 31
              ExplicitHeight = 33
            end
            object labName: TLabel
              AlignWithMargins = True
              Left = 21
              Top = 3
              Width = 125
              Height = 29
              Margins.Left = 20
              Align = alClient
              AutoSize = False
              Caption = 'Nome:'
              Color = 12966379
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Calibri'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Transparent = True
              Layout = tlCenter
              ExplicitLeft = -3
              ExplicitTop = 2
              ExplicitWidth = 116
              ExplicitHeight = 27
            end
            object shpLeft: TShape
              Left = 0
              Top = 0
              Width = 1
              Height = 35
              Align = alLeft
              Pen.Color = 14474460
              ExplicitLeft = 31
              ExplicitHeight = 33
            end
          end
        end
        object pnlBodyCnpj: TPanel
          Left = 0
          Top = 37
          Width = 956
          Height = 35
          Align = alTop
          BevelOuter = bvNone
          Color = 6316128
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 16316664
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentBackground = False
          ParentFont = False
          TabOrder = 1
          ExplicitWidth = 935
          object pnlLabCnpj: TPanel
            Left = 0
            Top = 0
            Width = 150
            Height = 35
            Align = alLeft
            BevelOuter = bvNone
            Color = 16316664
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 16316664
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentBackground = False
            ParentFont = False
            TabOrder = 0
            object shpRightCmb: TShape
              Left = 149
              Top = 0
              Width = 1
              Height = 35
              Align = alRight
              Pen.Color = 14474460
              ExplicitLeft = 31
              ExplicitHeight = 33
            end
            object shpLeftCmb: TShape
              Left = 0
              Top = 0
              Width = 1
              Height = 35
              Align = alLeft
              Pen.Color = 14474460
              ExplicitLeft = 31
              ExplicitHeight = 33
            end
            object labCNPJ: TLabel
              AlignWithMargins = True
              Left = 21
              Top = 3
              Width = 125
              Height = 29
              Margins.Left = 20
              Align = alClient
              AutoSize = False
              Caption = 'CNPJ:'
              Color = 12966379
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Calibri'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Transparent = True
              Layout = tlCenter
              ExplicitLeft = 25
              ExplicitTop = 6
            end
          end
          object pnlEdtCnpj: TPanel
            Left = 150
            Top = 0
            Width = 806
            Height = 35
            Align = alClient
            BevelOuter = bvNone
            Color = 16316664
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 16316664
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            Padding.Left = 20
            ParentBackground = False
            ParentFont = False
            TabOrder = 1
            ExplicitWidth = 785
            object Shape3: TShape
              Left = 805
              Top = 0
              Width = 1
              Height = 35
              Align = alRight
              Pen.Color = 14474460
              ExplicitLeft = 31
              ExplicitHeight = 33
            end
            object edtCnpjLegal: TEdit
              AlignWithMargins = True
              Left = 20
              Top = 7
              Width = 785
              Height = 28
              Margins.Left = 0
              Margins.Top = 7
              Margins.Right = 0
              Margins.Bottom = 0
              Align = alClient
              AutoSize = False
              BorderStyle = bsNone
              Color = 16316664
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6316128
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              ExplicitWidth = 764
            end
          end
        end
        object pnlBodyAdress: TPanel
          Left = 0
          Top = 73
          Width = 956
          Height = 35
          Align = alTop
          BevelOuter = bvNone
          Color = 16316664
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 16316664
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentBackground = False
          ParentFont = False
          TabOrder = 2
          ExplicitWidth = 935
          object pnlEdtAdress: TPanel
            Left = 150
            Top = 0
            Width = 806
            Height = 35
            Align = alClient
            BevelOuter = bvNone
            Color = 16316664
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 16316664
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            Padding.Left = 20
            ParentBackground = False
            ParentFont = False
            TabOrder = 0
            ExplicitWidth = 785
            object Shape18: TShape
              Left = 805
              Top = 0
              Width = 1
              Height = 35
              Align = alRight
              Pen.Color = 14474460
              ExplicitLeft = 31
              ExplicitHeight = 33
            end
            object edtAdressLegal: TEdit
              AlignWithMargins = True
              Left = 20
              Top = 7
              Width = 785
              Height = 28
              Margins.Left = 0
              Margins.Top = 7
              Margins.Right = 0
              Margins.Bottom = 0
              Align = alClient
              AutoSize = False
              BorderStyle = bsNone
              Color = 16316664
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6316128
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              ExplicitWidth = 764
            end
          end
          object pnlLabAdress: TPanel
            Left = 0
            Top = 0
            Width = 150
            Height = 35
            Align = alLeft
            BevelOuter = bvNone
            Color = 16316664
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 16316664
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentBackground = False
            ParentFont = False
            TabOrder = 1
            object Shape19: TShape
              Left = 149
              Top = 0
              Width = 1
              Height = 35
              Align = alRight
              Pen.Color = 14474460
              ExplicitLeft = 31
              ExplicitHeight = 33
            end
            object labAdressLegal: TLabel
              AlignWithMargins = True
              Left = 21
              Top = 3
              Width = 125
              Height = 29
              Margins.Left = 20
              Align = alClient
              AutoSize = False
              Caption = 'Endere'#231'o'
              Color = 12966379
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Calibri'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Transparent = True
              Layout = tlCenter
              ExplicitLeft = -3
              ExplicitTop = 2
              ExplicitWidth = 116
              ExplicitHeight = 27
            end
            object Shape20: TShape
              Left = 0
              Top = 0
              Width = 1
              Height = 35
              Align = alLeft
              Pen.Color = 14474460
              ExplicitLeft = 31
              ExplicitHeight = 33
            end
          end
        end
        object pnlBodyFone: TPanel
          Left = 0
          Top = 109
          Width = 956
          Height = 35
          Align = alTop
          BevelOuter = bvNone
          Color = 6316128
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 16316664
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentBackground = False
          ParentFont = False
          TabOrder = 3
          ExplicitWidth = 935
          object pnlLabFone: TPanel
            Left = 0
            Top = 0
            Width = 150
            Height = 35
            Align = alLeft
            BevelOuter = bvNone
            Color = 16316664
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 16316664
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentBackground = False
            ParentFont = False
            TabOrder = 0
            object Shape21: TShape
              Left = 149
              Top = 0
              Width = 1
              Height = 35
              Align = alRight
              Pen.Color = 14474460
              ExplicitLeft = 31
              ExplicitHeight = 33
            end
            object Shape22: TShape
              Left = 0
              Top = 0
              Width = 1
              Height = 35
              Align = alLeft
              Pen.Color = 14474460
              ExplicitLeft = 31
              ExplicitHeight = 33
            end
            object labFone: TLabel
              AlignWithMargins = True
              Left = 21
              Top = 3
              Width = 125
              Height = 29
              Margins.Left = 20
              Align = alClient
              AutoSize = False
              Caption = 'Telefone'
              Color = 12966379
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Calibri'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Transparent = True
              Layout = tlCenter
              ExplicitLeft = 25
              ExplicitTop = 6
            end
          end
          object pnlEdtFone: TPanel
            Left = 150
            Top = 0
            Width = 806
            Height = 35
            Align = alClient
            BevelOuter = bvNone
            Color = 16316664
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 16316664
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            Padding.Left = 20
            ParentBackground = False
            ParentFont = False
            TabOrder = 1
            ExplicitWidth = 785
            object Shape23: TShape
              Left = 805
              Top = 0
              Width = 1
              Height = 35
              Align = alRight
              Pen.Color = 14474460
              ExplicitLeft = 31
              ExplicitHeight = 33
            end
            object edtFone: TEdit
              AlignWithMargins = True
              Left = 20
              Top = 7
              Width = 785
              Height = 28
              Margins.Left = 0
              Margins.Top = 7
              Margins.Right = 0
              Margins.Bottom = 0
              Align = alClient
              AutoSize = False
              BorderStyle = bsNone
              Color = 16316664
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6316128
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              ExplicitWidth = 764
            end
          end
        end
        object pnlBodyCellfone: TPanel
          Left = 0
          Top = 145
          Width = 956
          Height = 35
          Align = alTop
          BevelOuter = bvNone
          Color = 16316664
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 16316664
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentBackground = False
          ParentFont = False
          TabOrder = 4
          ExplicitWidth = 935
          object pnlEdtCellfone: TPanel
            Left = 150
            Top = 0
            Width = 806
            Height = 35
            Align = alClient
            BevelOuter = bvNone
            Color = 16316664
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 16316664
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            Padding.Left = 20
            ParentBackground = False
            ParentFont = False
            TabOrder = 0
            ExplicitWidth = 785
            object Shape9: TShape
              Left = 805
              Top = 0
              Width = 1
              Height = 35
              Align = alRight
              Pen.Color = 14474460
              ExplicitLeft = 31
              ExplicitHeight = 33
            end
            object edtCellfoneLegal: TEdit
              AlignWithMargins = True
              Left = 20
              Top = 7
              Width = 785
              Height = 28
              Margins.Left = 0
              Margins.Top = 7
              Margins.Right = 0
              Margins.Bottom = 0
              Align = alClient
              AutoSize = False
              BorderStyle = bsNone
              Color = 16316664
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6316128
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              ExplicitWidth = 764
            end
          end
          object pnlLabCellfone: TPanel
            Left = 0
            Top = 0
            Width = 150
            Height = 35
            Align = alLeft
            BevelOuter = bvNone
            Color = 16316664
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 16316664
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentBackground = False
            ParentFont = False
            TabOrder = 1
            object Shape10: TShape
              Left = 149
              Top = 0
              Width = 1
              Height = 35
              Align = alRight
              Pen.Color = 14474460
              ExplicitLeft = 31
              ExplicitHeight = 33
            end
            object labCellfoneLegal: TLabel
              AlignWithMargins = True
              Left = 21
              Top = 3
              Width = 125
              Height = 29
              Margins.Left = 20
              Align = alClient
              AutoSize = False
              Caption = 'Celular'
              Color = 12966379
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Calibri'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Transparent = True
              Layout = tlCenter
              ExplicitLeft = -3
              ExplicitTop = 2
              ExplicitWidth = 116
              ExplicitHeight = 27
            end
            object Shape11: TShape
              Left = 0
              Top = 0
              Width = 1
              Height = 35
              Align = alLeft
              Pen.Color = 14474460
              ExplicitLeft = 31
              ExplicitHeight = 33
            end
          end
        end
        object pnlBodyEmail: TPanel
          Left = 0
          Top = 181
          Width = 956
          Height = 35
          Align = alTop
          BevelOuter = bvNone
          Color = 6316128
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 16316664
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentBackground = False
          ParentFont = False
          TabOrder = 5
          ExplicitWidth = 935
          object pnlLabEmail: TPanel
            Left = 0
            Top = 0
            Width = 150
            Height = 35
            Align = alLeft
            BevelOuter = bvNone
            Color = 16316664
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 16316664
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentBackground = False
            ParentFont = False
            TabOrder = 0
            object Shape12: TShape
              Left = 149
              Top = 0
              Width = 1
              Height = 35
              Align = alRight
              Pen.Color = 14474460
              ExplicitLeft = 31
              ExplicitHeight = 33
            end
            object Shape13: TShape
              Left = 0
              Top = 0
              Width = 1
              Height = 35
              Align = alLeft
              Pen.Color = 14474460
              ExplicitLeft = 31
              ExplicitHeight = 33
            end
            object labEmailLegal: TLabel
              AlignWithMargins = True
              Left = 21
              Top = 3
              Width = 125
              Height = 29
              Margins.Left = 20
              Align = alClient
              AutoSize = False
              Caption = 'Email'
              Color = 12966379
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Calibri'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Transparent = True
              Layout = tlCenter
              ExplicitLeft = 25
              ExplicitTop = 6
            end
          end
          object pnlEdtEmail: TPanel
            Left = 150
            Top = 0
            Width = 806
            Height = 35
            Align = alClient
            BevelOuter = bvNone
            Color = 16316664
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 16316664
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            Padding.Left = 20
            ParentBackground = False
            ParentFont = False
            TabOrder = 1
            ExplicitWidth = 785
            object Shape14: TShape
              Left = 805
              Top = 0
              Width = 1
              Height = 35
              Align = alRight
              Pen.Color = 14474460
              ExplicitLeft = 31
              ExplicitHeight = 33
            end
            object edtEmailLegal: TEdit
              AlignWithMargins = True
              Left = 20
              Top = 7
              Width = 785
              Height = 28
              Margins.Left = 0
              Margins.Top = 7
              Margins.Right = 0
              Margins.Bottom = 0
              Align = alClient
              AutoSize = False
              BorderStyle = bsNone
              Color = 16316664
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6316128
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              ExplicitWidth = 764
            end
          end
        end
        object pnlBodyVinculed: TPanel
          Left = 0
          Top = 217
          Width = 956
          Height = 35
          Align = alTop
          BevelOuter = bvNone
          Color = 6316128
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 16316664
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentBackground = False
          ParentFont = False
          TabOrder = 6
          ExplicitWidth = 935
          object Panel3: TPanel
            Left = 0
            Top = 0
            Width = 150
            Height = 35
            Align = alLeft
            BevelOuter = bvNone
            Color = 16316664
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 16316664
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentBackground = False
            ParentFont = False
            TabOrder = 0
            object Shape24: TShape
              Left = 149
              Top = 0
              Width = 1
              Height = 35
              Align = alRight
              Pen.Color = 14474460
              ExplicitLeft = 31
              ExplicitHeight = 33
            end
            object Shape26: TShape
              Left = 0
              Top = 0
              Width = 1
              Height = 35
              Align = alLeft
              Pen.Color = 14474460
              ExplicitLeft = 31
              ExplicitHeight = 33
            end
            object Label1: TLabel
              AlignWithMargins = True
              Left = 21
              Top = 3
              Width = 125
              Height = 29
              Margins.Left = 20
              Align = alClient
              AutoSize = False
              Caption = 'Vincular pessoas f'#237'sicas?'
              Color = 12966379
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Calibri'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Transparent = True
              Layout = tlCenter
              ExplicitLeft = 25
              ExplicitTop = 6
            end
          end
          object Panel4: TPanel
            Left = 150
            Top = 0
            Width = 806
            Height = 35
            Align = alClient
            BevelOuter = bvNone
            Color = 16316664
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 16316664
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            Padding.Left = 20
            ParentBackground = False
            ParentFont = False
            TabOrder = 1
            ExplicitWidth = 785
            object Shape27: TShape
              Left = 805
              Top = 0
              Width = 1
              Height = 35
              Align = alRight
              Pen.Color = 14474460
              ExplicitLeft = 31
              ExplicitHeight = 33
            end
            object cmbTypePerson: TComboBox
              AlignWithMargins = True
              Left = 20
              Top = 5
              Width = 101
              Height = 22
              Margins.Left = 0
              Margins.Top = 5
              Margins.Right = 20
              Margins.Bottom = 0
              Align = alLeft
              Style = csOwnerDrawFixed
              Color = 16316664
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 16316664
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Style = []
              ItemIndex = 0
              ParentFont = False
              TabOrder = 0
              Text = 'N'#227'o'
              OnChange = cmbTypePersonChange
              OnDrawItem = cmbTypePersonDrawItem
              Items.Strings = (
                'N'#227'o'
                'Sim')
            end
          end
        end
      end
      object pnlBodyButtons: TPanel
        Left = 0
        Top = 308
        Width = 956
        Height = 45
        Align = alTop
        BevelOuter = bvNone
        Color = 16316664
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 16316664
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 1
        Visible = False
        OnResize = pnlBodyButtonsResize
        ExplicitWidth = 935
        object pnlButtons: TPanel
          Left = 336
          Top = 3
          Width = 89
          Height = 35
          BevelOuter = bvNone
          Color = 16316664
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 16316664
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentBackground = False
          ParentFont = False
          TabOrder = 0
          object imgDeletePerson: TImage
            Left = 47
            Top = 0
            Width = 35
            Height = 35
            Picture.Data = {
              0954506E67496D61676589504E470D0A1A0A0000000D49484452000002000000
              02000806000000F478D4FA0000000970485973000BA001000BA001012C9AE119
              0000001974455874536F667477617265007777772E696E6B73636170652E6F72
              679BEE3C1A00003B344944415478DAEDDD097C1C75DDC7F1DF7F93B429B405DB
              941B15B911E5A82205DACE6C7A50B9D1E0812087505140100544C470C9E10988
              DC8702A214E4285829CDCE36B41CFA945B0E1F0E11F0A1D0DA022DA449B3FFE7
              37492B3D726E76F7B7C7E7FD7A0DFFFF269BDDEF2EE9CE7736B3334E0014353F
              7A748D8C18314ADADA3690446203F17E7DFDF2FA3A7EA4638C17E7D6D3715D5D
              D6D1AFAFAB9707E93CFE5AF58A71554375A959E36B6DBA2C59E36B8B7569D7E5
              1DBDCD56BDCDA53A7F5F97A52BBEF7E1E2DC225D164B26F3965457BFAD59DF72
              E9F472EBE70E40F79C7500A092F9B16347E98A7333A9AADA5CC78FEA9736D395
              ED663A6EAACB06BA8C5AB194A2B77579AB6374EE751DDFD0251E5FD5A2F05A3C
              D792B0C03A2450A92800401EF986862A993FFFA35253B395AED8B7D42F6DA5CB
              963AEF1C4586586734F681968317757C494B413C76CEE33108FEE51A1B33D601
              817245010072C44F9CB889B4B5EDA0D34FEA4AAD7314D9593ADF9A47FFB54A67
              21F8BB3E9FCF768CDE3F2B7575CFBB69D3DAADC301A58E0200F453C7DFE4870F
              DF46A7A357597691F8EFEF2884787F85FFD5659E1682791DE3B0618FB9E9D3DF
              B70E0694120A00D083156FE1EF2089C4E7742B74775D76D395CEF6D2B9731D8A
              47BCC3E1B3FAFFE7AF92C93CA2F34725089EE54F0840F72800C02AFC9429C3A5
              A5652F9DEEA92BFA31BA42F98CCE8759E74256DED5E56FFAFF302E047365D9B2
              396EEEDCF7AC4301C58202808AE6F7DC7398D4D47C4EB7F027E80A3F5EF1EF26
              6B7F440EE521DE6FE0055DE668299825994CC4A71050C92800A8287ECC9821B2
              CE3A7BE98BFF44BD182F3B09FF0E2A55468BC0935AFC1EE858B418682168B10E
              05140A2F7C287B3E0CE395FC64E95CE1C75BF9B5D69950943ED0E5412D050FC8
              F2E5F7BBE6E6A7AD0301F9440140D9F14110AFE0F7D217F2FD743C50978F5A67
              42497A5597FBF5F7E85EC9641EE0DD01941B0A00CA82AFAF1FA92FD207E8747F
              5D26089FBD476E2D15EF67EA788F0C1E7C8FBBFFFEFF580702068A028092A55B
              FA75BA75F6795D1AF4C5397E8B9F9DF75008F1CE848FE8EFDC34696FBFCD3DF8
              E0FF590702B241014049D12DFD0DF585F7908E45640F5D12D69950D1E2323057
              7F1F6F5B5106DEB60E04F415050045AF63CFFD2143F6D5E9E16CE9A38875BE33
              20F23B696DBD95630EA0D8510050947C10C447DADB5B9C3B4CC77867BE4A3F69
              0E4ACBFBFABB7B8F16D69BA5AEEE2F9CBB00C5880280A2E2C3705B7DE1FC8ABE
              701E29ECBD8FF210EF23304D1289EB5C53D353D6618095280030D77134BEC183
              BF2C99CC91BAF21F639D07C8A3787F811B74FCA34BA79758874165A300C08C0F
              82ED74ABE8087D413C562F7EC43A0F5040F1FE01B7EAF21B17454F5A874165A2
              00A0A07C43C32059B8F080152BFD09D6798022109FD2F86A6969B9C93DFCF007
              D6615039280028083F71E226D2DEFEAD152BFE51D6798022F496FEFBB85AFF9D
              FC86630BA0102800C82B9F4CEEAA2F6A5325FE081FC7E007FAA25597BB2591F8
              A56B6A7AD83A0CCA17050039E71B1B13924E1F2CCE9D2C9D07EB01909D39BAFC
              52C68FBFCB353666ACC3A0BC500090331D7FDF5FB0E0CB3AFD812EDB59E701CA
              C8CBE2FDA53A5EC54989902B14000C58C7C7F86A6A8ED22DFEEFEBC54DADF300
              656CBEFE3BBB5232995F6911586C1D06A58D0280ACF9C99347C8B26527EB0BD2
              097A713DEB3C40058957FE974A5BDBAFDC9C398BACC3A0345100D06F1DA7DEF5
              FE045DBEA317D7B7CE0354B0255AC02F979A9A8B394531FA8B02803EEB38FD6E
              2271BCAEF84F12B6F88162121F55F07AFDF7F913D7D434DF3A0C4A030500BDD2
              15FF501DBEAD5B1AF1CE7DACF881E2D5F98E402271819B35EB1DEB30286E1400
              746BC55EFD47E8F41C5D36B4CE03A0CF168AF73FD5F1123E3580EE5000B0968E
              53F1261247EA0BC8597A7133EB3C00B2F62F5DCE96BABADF724A62AC890280D5
              E8CA7F82AEFC7FA12BFF4F5967019033CF8B73DF75A9D40CEB20281E140074F0
              F5F53B482613BF65F879EB2C00F2C4B97BF5BF27691178C93A0AEC51002A9C4F
              26E303F79CA75BFCF1B1FA13D67900E4DD325D2E91DADAF3DD8C19EF5A87811D
              0A4085F2A347D7C8B061DFD22D8273F5E230EB3C000A2EDE51F05C1935EAD7EC
              1F5099280015C88761BDC4471113D9C13A0B0063CE3D2E9D7F1668B68E82C2A2
              0054109F4C6EA98DFF029D365867015064E2FD03962F3FD13537BF621D058541
              01A8001D6FF70F1F1E9FA8E747BAD45AE70150B43ED0A55137147EE1D2E9E5D6
              61905F148032E78360676DF6D7EA74B475160025E3294924BEE19A9AFE661D04
              F9430128537ECC98213264C88FB5C97F4F2F5659E7015072E277007E23353567
              B89933975A8741EE5100CA904F26C7E98AFF1A9D6E639D0540C97B595F4FA6BA
              747A967510E41605A08CF820585F9CBB48A7C708FF6F01E4D63449248E734D4D
              0BAD83203758499409DDEADF4F5BFA153ADDD43A0B80B2159F6AF8541745BFB3
              0E8281A30094B81547F2BB5257FEFB5A67015031EE96E5CB8F730F3EF87FD641
              903D0A4009D395FF412BFED63FD23A0B808AB3585F7F8E73E9F41FAC83203B14
              8012D4B1877F6DED853A3DD13A0B808A779316816F691158621D04FD43012831
              3E083E23CEDD22ECE10FA078BC2289C4A1AEA9E961EB20E83B0A4089F0F1FFAB
              20385157FE17EBC541D67900600DCBF5F5E97C1939F25C4E2E541A280025C04F
              98F051696F8FF7BA1D6F9D05007AE4FDC392C91CCA39058A1F05A0C8F920F8A2
              B6EAAB743AC23A0B00F4D13B5A04BEEDD2E95BAC83A07B148022E5A74C192E2D
              2DBFD6E961D65900202BCEDD2899CC09EC20589C280045C887E1B63AFC49971D
              ACB300C000FD4397835D14FDDD3A085647012832BAF2DF5F87F8EFFDEB596701
              801C794FBC3FCAA5D3B75B07C187280045C2373454C9C285E7EB3F925385FF2F
              00CA8FD7E5327D8D3B458BC072EB30604553147C10D4E9F07B716EA2751600C8
              B3D992487CC93535CDB70E52E92800C67C32B9AB36E23B74FA71EB2C005020AF
              EBF24517458F5A07A9641400433E0C0F97F8443E2243ACB30040812D13E74E70
              A9D435D6412A1505C0809F3265B0B4B45CA6D363ACB30080B19BF4F570AA7BF8
              E10FAC83541A0A4081F989133791B6B6BBB4F97ED63A0B00148947C5FB035D3A
              FDA675904A420128201F043BEA8AFF3E9D7ED43A0B00149937B404ECAB25E009
              EB209582025020BAF29FA02BFFF833B07CBE1F00BAF69EBE4E7EC9A55233AC83
              54020A4001F864F2486DB6F1F1FC6BACB30040915BAEAF97C7BB74FA2AEB20E5
              8E0290471DA7F04D267FACBFCC3FB6CE020025E65289A2935CE7018490071480
              3C59B1A7FF753A3DD43A0B0094A869BA0175B84BA75BAC8394230A401EF8C993
              47486B6B7C329FF1D65900A0C43DA425E0002D010BAC83941B0A408EF909133E
              21EDEDF19EFEDB5967018032F1A2BEAE7EDE3537FFAF7590724201C8219F4CEE
              A64DF55E9D8EB2CE020065263E77C03E2E8AE65907291714801CF14110887377
              EB74B875160028534B2491D8DF353545D641CA0105200774CB7F3FDDF2BF4DA7
              B5D65900A0CCBDAF1B5B07B9546AA675905247011820DDF2FF9AFE32DEA0D36A
              EB2C0050215AF575F7CB5A02EEB40E52CA280003E0C3F0641D7E2E3C8F005068
              6DE2FD612E9DFEA3759052C58A2B4BBAF2FFBE0E175BE700800AD6AE2560AA96
              80EBAC8394220A40167C109C26CE5D689D0300205E5F8FBFEB52A95F59072935
              14807EF2C9642387F6058022E37DA34BA7CFB68E514A2800FDA05BFEE76AD33C
              D33A0700A00BCE5DE452A9D3AD63940A0A401FF9303C5F8733AC7300007A74AE
              8BA2B3AC4394020A401FB0E50F0025C4B91FB8548AFDB47A4101E8856EF9C74D
              92BF2B01406939C545D12FAC4314330A400F74CBFF146D923FB3CE0100E8B7F8
              D301535D2A758D7590624501E8864F264F12EF7F699D030090B5F838018772B0
              A0AE5100BAA02BFFC3F497E6B7C2F30300A5AE4D9CFB824BA5A65B072936ACE0
              D6E0C3F0001D6E178EED0F00E5223E77C0815A026658072926148055E8967F52
              B7FCEF13CEEA0700E5263E8BE0142D01CDD6418A050560055DF9EFA62BFF269D
              0EB5CE0200C88B7774A9775134CF3A4831A000283F6EDC165255F5884E37B0CE
              0200C8AB05BAB137C6A5D32F5A07B156F105C04F9E3C425A5B1FD2E9B6D65900
              0005F1BCB4B5EDE1E6CC59641DC452451700DFD03048162C88770A495A670100
              1454B3D4D64E7233662CB30E62A5620B808F1F7B18C61FF53BCC3A0B00C08073
              7F9054EAABAE639550792AB70070721F00807367BB54AAD13A86C943B70E6041
              57FE47E9709D750E0080392FDE1FE9D2E9DF5A0729B48A2B003E08026D7CF7EB
              7490751600405168D312F0792D01B3AC8314524515005F5FBF8364327375BABE
              75160040517957DADBF772CDCD4F5B0729948A29007EECD88DA5BA3AFEACFF47
              ADB300008AD23F571C23E04DEB2085501105C007417C68DF6671EEB3D6590000
              45ED11A9AD0D2AE1E381955100C2F05A1D8EB6CE0100280957B928FAA675887C
              2BFB02A02BFF6375B8CA3A0700A08478FF0D974E97F5A7C5CABA00AC38C14F7C
              E6A7C1D659000025A545D71F63B504FC8F75907C29DB02E0EBEB474A2613FF8F
              FBB87516004049FA979680D15A02165807C987B22C00BEA1A14A162CF8B34E27
              5967010094B426A9AB9BECA64D6BB70E926BE5590082E0A7E2DCF7AC730000CA
              C24F5C14FDD03A44AE955D01D095FF81BAF2FF53393E36008089F870C187B874
              FA76EB20B954562B491F86DBEAF0575D865B6701009495F72491D8DD35353D6B
              1D2457CAA600F82953864B4B4BBCF2DFD63A0B00A02C3D2BDE7FCEA5D34BAC83
              E442F9148030FC9D0E8759E7000094B5EB5C147DC33A442E944501F041F04571
              6E9A750E004005F0FECB2E9DFEA3758C812AF902A02BFFCD74E5FFA44E475867
              01005484C55255B5939B35EB5FD64106A2A40B806F6C4C487CFE66E742EB2C00
              808AD22C7575C9523E3E4069178020F8A1AEFCCFB3CE0100A848A7B928BAD83A
              44B64AB600F8301CADC343BA0CB2CE0200A8486DBA11BA974BA5FE6A1D241B25
              5900FCA449EB4A5BDB3CE1237F00005B2F8AF7BB94E247034BB30084E1B53A1C
              6D9D0300002D00576A0138CE3A467F955C01F0C9E441FA64FFC93A070000AB38
              D045D1DDD621FAA3A40A80AEFC37D5957FFC91BF91D659000058C50259BEFCD3
              EEC107FFCF3A485F95560108C3BB7438C03A0700005DB8CF45D1BED621FAAA64
              0A800F822F8B73B75AE70000A007876A09F8BD7588BE288902E0274F1E21ADAD
              F1199836B4CE0200400F164A22F149D7D434DF3A486F4AA30084E18D3A7CDD3A
              0700007D70B78BA203AD43F4A6E80B80AFAF0F2593692A85AC000074F0BEC1A5
              D3B75BC7E84951AF54FD7EFBAD234B963CA5D32DADB30000D00FF3A5AD6D7B37
              67CE22EB20DD29EE0210863FD7E1BBD6390000E8B7223F4050D116005F5FFF59
              C9641ED6699575160000B29011E7C6BA54EA21EB205D29CA02E083A05A1289BF
              C6C757B6CE0200C0003C23EFBEBBAB9B37AFCD3AC89A8AB30084E1193A9C6F9D
              03008001F3FE74974E5F641D634D4557007C32B9A53E59CFE8B4D63A0B000039
              F0BE38B7834BA55EB50EB2AAE22B0041708F3E51FB59E7000020679CBB5D0B40
              83758CD522590758956EFD4FD2ADFFFBAD73000090077BBB282A9A755CD11400
              DFD03048162C883FF3BFAD7516000072CEB9E7E49D77762A961D028BA70084E1
              0F74F889750E0000F2E8141745BFB00E112B8A02E093C94DC5FBE7753AD43A0B
              000079F4AE2412DB14C3C9828AA30070B21F0040E5B8DA45D154EB10E6054057
              FE3BE9F0982E09EB2C00001440BBB4B7EFE29A9B9FB60C510C05E0011D2658E7
              0000A080522E8AEA2D039816001F04FB8A73D32D33000060C4F46381660560C5
              F1FE9F12EFB7B7CA000080A167A4AE6E67376D5ABBC59DDB1580303C5687ABAC
              EE1F000073DE1FE9D2E91B2DEEDAA400E8D67FAD38F70F9D6E6E71FF00001489
              57A5B6765B3763C6B242DFB14D014826BFA7ADE7A716F70D004091F98E8BA24B
              0B7DA7052F007ECF3D87C9A0412FEA748342DF37000045E86D696DDDD2CD9DFB
              5E21EFB4F0052008CE15E7CE2CF4FD020050B49CFB914BA5CE2BE85D16F2CE74
              E55FA70FF2659D0E2BE4FD020050E4DE91B6B62DDC9C398B0A7587852D00C9E4
              85E2FD6985BC4F00004AC4392E8A7E5CA83B2B5801F0F5F52325937945D8FA07
              00A02BEF4A5BDBC70BF52E40E10A4018C6A7FAFD41A1EE0F008092E3DCD92E95
              6A2CC85D15E24EFCE4C923A4B5F59FC2D63F00003D29D8BE00852900C9E479E2
              FD0F0B715F00009434EF1B5D3A7D76BEEF26EF05C04F99325C5A5A5ED5E9FAF9
              BE2F0000CAC0222D011FD512B0249F7792FF02904C9EAE0FE4827CDF0F000065
              C3B9135D2A75595EEF229F37AE5BFF8375EB3FDEF37FE37CDE0F000065E615DD
              78DEC6A5D3CBF37507F92D004130555BCC95F9BC0F0000CA927387B8546A5ADE
              6E3E5F37EC1B1AAA64E1C2E7B4C16C9DAFFB0000A06C79FF37974EEF96AF9BCF
              5F0108822F6A7BC95B730100A0EC793F564BC09C7CDC743E0BC0435A00C6E4EF
              590100A0CC3977974BA50ECACB4DE7E3467D188ED6E17FF2FAA4000050FEBCB4
              B77FD235373F97EB1BCE5701B84587AFE6FD690100A0DC797FA54BA78FCBF5CD
              E6BC00F889133791E5CBE38FFE0D2AC813030040796B9144E2E3AEA9697E2E6F
              34F705200CCFD7E18C823D2D000094BB3C1C1E38A70560C5817F5ED3E9A8823E
              31000094B7B7A4B6F6A36EC68C65B9BAC1DC168020F89A387753E19F170000CA
              9C735F75A9D4AD39BBB95C66F3613857873D0AFEA4000050FE9A5D148DCFD58D
              E5AC00F8FAFA4F4B26F3A4CD7302004005F0FE532E9D7E26173795BB02100457
              8873DFB47B560000287B97BA28FA4E2E6E2827054057FE4375E5FF864E879B3E
              2D000094B777A4A666533773E6D281DE506E0A4032798C787FB5F5B3020040D9
              F3FE48974EDF38D09BC94D0108C38775D8DDFA390100A002E46467C00117005D
              F96FABC373B9B82D0000D02B2FDE6FE3D2E917077223B9280017EBF07DEB6703
              00808AE1DCF92E953A73403731901FF64150AD21FEA5D38DAD9F0B00002AC81B
              5257F731376D5A7BB63730B002904CEE27DEDF63FD2C00005081F67651747FB6
              3F3CB0021086B7E9D060FD0C000050816ED102F0B56C7F38EB02E0F7DC73980C
              1A149F9A7088F533000040055A2ADE6FE4D2E925D9FC70F6052008BE2ECEDD68
              FDE80100A85803384150F605200CE3BF3B4CB27EEC0000542CEFA7BB747AFF6C
              7E34AB02E0274DDA40DADAE243FF565B3F7600002A589B24121BBBA6A685FDFD
              C1EC0A40189EA8C325D68F1A00808AE7DC712E95BAB2DF3F96CD7D690198A3C3
              9ED68F19000048CA45517D7F7FA8DF05C007C1462BCEFC97B07EC4000040DAA5
              A666133773E65BFDF9A1FE178030FC960E975B3F5A0000B082F7C7B874FADAFE
              FC483605A04987A4F563050000FFF517174553FAF303FD2A00BEBE7EA464326F
              0A7BFF0300504CDAA4AD6D433767CEA2BEFE40FF0A403279A4787FBDF5A30400
              006B70EE70974ADDD4E7ABF7E7B67D18DEAD4356071C00000079E4DCED5A00FA
              7C7E9E3E17003F65CA60696959A0D3A1D68F110000AC6589D4D6D6B9193396F5
              E5CA7D2F0061F8791DEEB37E740000A01BDE4F74E9F4ACBE5CB53F05E0373A1C
              67FDD800004037BCFF95168093FB72D5FE14807FEAF031EBC7060000BAF5B28B
              A22DFB72C53E15005F5FFF69C9649EB47E540000A017DE6FEFD2E9E77BBB5ADF
              0A40189EAAC345D68F090000F4C2B9935D2AF5AB5EAFD697DBD202F0800E13AC
              1F130000E8D59F5D14EDD3DB957A2D003E086AB54DFC47A743AC1F110000E8D5
              52A9AD1DD9DBC7017B2F00C9E424F1FE7EEB47030000FAC8FBD0A5D3E99EAED2
              9777007E2ACE7DCFFAB10000803EFB898BA21FF67485DE0B40183EA1C34ED68F
              040000F491F77F73E9F46E3D5DA5C702E0274F1E21ADAD6FEB3461FD58000040
              9F65B4048CD412B0B8BB2BF45C0082E04071EE4EEB47010000FA6D5F1745DD1E
              C2BFE7021086BFD0A14F871404000045E5622D00A775F7CDDE0AC03C1D76B57E
              040000A0DF1ED502B07B77DFECB600F82953864B4B4BFCF9FF2AEB47000000FA
              6DB9B4B68E7073E7BED7D537BB2F009CFE170080D296484C724D4D0F74F5AD9E
              0AC04F74F8817576000090B5735D149DD5D537BA2F00419012E742EBE4000020
              6B33B5004CEEEA1B5D1600DFD89890D9B317E974B87572000090B57764FCF811
              AEB131B3E637BA2E00F5F59F964CE649EBD40000608012894FBAA6A667D7FC72
              D70520993C46BCBFDA3A33000018B0A35D145DBFE617BB2E0061786DFC03D689
              0100C0805DAD0560EA9A5FECEE1D80A7C4FB4F592706000003F6A416809DD7FC
              E25A05C00741AD38171F34A0DA3A31000018B036DDA81FEED2E99655BFB87601
              482677D32B3E6A9D160000E48873A35D2AF5D86A5F5AF33A3E08A6EA15AFB4CE
              0A000072C4FB6FB874FABA55BFB4760108C378E53FB5CF370A00008ADDE52E8A
              8E5FF50B5DBD03F05771EEB3D649010040CE3CA40560CF55BFB05A01F00D0D55
              B26041BC03E010EBA40000206796C8F8F1EBAD7A44C0D50B407DFD3692C9BC60
              9D120000E4587BFB275C73F32B2B2FAE5E0092C983C4FB3F596704000039E6FD
              7E2E9DBE77E5C5D50B4010FC509C3BCF3A230000C8B9D35C145DBCF2C2EA0520
              0C6FD1E1ABD609010040CEFD560BC0112B2FAC59001ED761E7FEDE2200002872
              DEFFCDA5D3BBADBCF8DF02E01B1B13327BF612E11300000094A3251245C375C5
              EFE30B1F168071E3B690AAAA97ADD30100803CF17E73974EBF1E4F3F2C00F5F5
              13259399699D0D0000E489F7A11680743CFDB0002493C7E9377E639D0D0000E4
              89F7C76801B8369EAE5A007EA6DF38C53A1B0000C813EF2FD402F08378FA6101
              08C3BB7438C03A1B0000C813E76E77A95443C774E5D7B4003CA3C327ADB30100
              80BC79C245D12EF1A4A300F8780CC3F82380EB582703000079F39E1680E1F1A4
              B3008C1D3B4AAAABDFB24E050000F2ACAD6D849B336751670148267715EFE759
              67020000799648ECE49A9A9EEA2C006118EFFC7797752600009077FBBA28BA6F
              E53B00C78BF797592702000079E6DCB75C2A75C5CA77002ED2E154EB4C000020
              EF2E705174C6CA02C069800100A804CEDDEC52A9C35616804887C03A130000C8
              BB2617451356EE03F0AC78BFBD752200009077CF6801F8D4CA770016EA30C23A
              110000C8BBB7B4006CE8FCE8D135327CF83259E5B0C00000A06C65C4FBC1CE27
              939BEAE475EB340000A04012898D9C1F376E17A9AA7ACC3A0B00002890F86880
              3E999C24DEDF6F9D05000014CC04E783E04BE2DC1FAC9300008082F9625C00A6
              6A01B8D23A09F26CC30D45B6DE5A64F3CD4536DA4864F87091214344AAAAAC93
              01B0D2DE2EF2C10722EFBE2BF2E69B22AFBD26F28F7F88BCC5C961CB9EF7C7C4
              7F02385D27175867418E3927B2D34E22F5F522BBEE2AB2F1C6D68900948A7FFF
              5BE4B1C7449A9A449E7A2A5E59582742AE39F7FDF81D800B7472BA7516E448BC
              55BFDF7E22071F2CB2C106D6690094BAF9F345EEBC5364FAF4CE770B501EBC3F
              2F2E00576801F8A675160C507575E74AFFAB5FED7C7B1F0072E99D77446EB9A5
              B30CC47F3A40A9BBDCF930FCBD4EBE629D0403B0C30E22A79C22B2C516D64900
              94BB975F16F9F9CF459E7BCE3A0906E696F81D807BC4B9FDAC93200BF1DFF9E3
              ADFEA9533BDF0100804288DF01B8F96691DFFD8EFD034A957377C5EF00CCD269
              BD7516F4534D8DC81967888C1F6F9D0440A54AA5442EBC5064F972EB24E8BF99
              710198AB933DAC93A01FE21DFDCE3DB773EF7E00B0346F9EC88F7E24D2D2629D
              04FDE1FD837101785CA73B5B67411FC56FF59F779EC86EBB592701804E8FEB6A
              E4F4D345DADAAC93A0EFE6C505E0059D6C639D047D10FFCDFF873F144926AD93
              00C0EA1E7840E4020E2953329C7B2E2E00FFD2E9E6D659D007F10E7FC71F6F9D
              0200BA76E9A52277DD659D027DF3CFB800C4C77C1C659D04BDD86A2B91CB2FEF
              DCF90F008A51FC27806F7D4BE4A597AC93A077F3E302F01F9D7CC43A097A10BF
              F57FD9659D9FF7078062F6C20B9D25808F0716BB857101785727C3AC93A007FB
              ECD379A01F0028053FFB99C89FFF6C9D023D5B1C1780A53A59C73A09BA11EFF5
              7FD34D9D67F3038052109F4DF06B5FE3F800C56D495C00E20F6F0EB64E826E7C
              FEF322DFFB9E750A00E89F8B2F16F9CB5FAC53A07B1FC40520FEE026C7912D56
              575D25B2F5D6D62900A07FE27D018E3BCE3A05BAD71617808C4E9C751274E163
              1F13B9E106EB1400909DA38F1679E515EB14E85A860250CC8E3842E4F0C3AD53
              0040767EFBDBCE05C528C39F008A597C508D1D77B44E0100D979FA6991EF7CC7
              3A05BAD6C64E80C5AAB656E49E7B38CD2F80D2157F0A60BFFD44962DB34E82B5
              7DC0C7008BD5B6DB8A5C7185750A001898A95345FEF77FAD53606D4B381050B1
              9A3851E4073FB04E010003139FBD3495B24E81B52DE650C0C52A3E88C6514759
              A7008081B9F65A91DFFFDE3A05D6B690930115AB638F15F9F297AD5300C0C0DC
              7AABC835D758A7C0DAE6733AE06215EF397BC001D629006060E2D303C79F6842
              B1E9381DF00B3AD9C63A09D670C20922071D649D020006E68E3B3A4F658EE2E2
              DC737101785CA73B5B67C11AE223681D7AA8750A0018989B6F16B9FE7AEB1458
              DBBCB800CCD5C91ED649B0862F7DA9F3E3330050CAAEBC52E4B6DBAC53604DDE
              3F181780593AADB7CE8235ECB597C839E758A700808139F34C91871EB24E81B5
              CD743E08EE11E7F6B34E823570222000E5E0EB5F1779ED35EB1458937377C5EF
              00C41FD0FC8A7516AC2191E8DC7B76E850EB2400909DA54B3B3FCD94C95827C1
              DA6E890BC06F74C2499B8BD1F9E78B8C19639D0200B23377AEC88F7E649D025D
              BB2C2E003FD109C79C2D46071E2872E289D62900203B975C2272F7DDD629D0B5
              73E30270AA4E2EB24E822EACBF7EE7DEB39C111040A9696F1739E41091458BAC
              93A02BDE7F2F2E00C7EAF42AEB2CE8067F0600508AE23DFFE34F00A0581D1D17
              00AD68F247EB24E8C6CE3B8BFCE217D62900A07F4E3E59E4C927AD53A07B5F70
              BEBE7EA2643233AD93A007F1DFD13EF529EB1400D037CF3E2B72FCF1D629D0B3
              09F171007616E71EB74E821EC42BFF5FFD2AFEDCA6751200E899F79D27337BE6
              19EB24E889F79F727EECD88DA5BAFADFD659D08B534F15D97B6FEB1400D0B33F
              FF59E4673FB34E81DED4D46C18BF0350AD5B96CBF462C23A0F7AB0DE7A22575F
              2D326A94751200E8DA5B6F891C7BACC8BBEF5A2741CFDAA5AE6E70C77BCA3E0C
              DFD6A1CE3A117AB1C30E9D7F0AE06381008A4DFCB1BF78C73FDEFA2F05F35D14
              6DB4B200FC5D871DAC13A10FF6DF5FE4A493AC5300C0EA7EF94B91E9D3AD53A0
              6F9ED202B053670108829438175A27421FC527D78817002806BFFD6DE7825231
              4B0BC0C495EF00DCA2C357AD13A11FBEF21591638EB14E01A0D2DD7AABC835D7
              58A740FFDCA405E0F0CE02904C5E28DE9F669D08FDB4CF3E9D1FB7619F000085
              D6D6D6798C9278AF7F9416E7CE77A9D4992BFF04F06DFDC2AFAD33210BDB6C23
              72D659229B6C629D0440A588F7F63FE79CCE03FEA0F478FF4D974E5FB5F24F00
              FBEBC0299B4AD5BAEB8A1C7554E779B7137C9A13409EC47BFADF7597C80D3788
              BCFFBE751A646F1F17457FEE2C00E3C6ED2255558F5927C2006DBDB5C8114788
              ECBE3B470D04903BF1D1FD1E7944E4FAEB455E7AC93A0D062A3E0A603AFD4C67
              01A8AF1F2999CC02EB4CC891ADB61239E82091F1E345D659C73A0D8052B574A9
              C8ECD92277DEC98ABF9C5455ADEF66CD7AE7BF9B893E0CF5FFB4B0B628278307
              77BE1BB0EBAE22BBEC22B2D966D6890014BBD75E1379E2099179F3441E7D5464
              D932EB44C8AD775D14AD174F562D004FEBB0A37532E4D19021229B6F2EB2E186
              22C38777BE3BC0270880CAB57C79E7DFF2E343F7BEF9A6C8EBAF8B7CF081752A
              E493738FBB546AD78EE9CAAFF964F24EF1FE40EB6C0000206FA6B9283A249E7C
              580082E0A7DA0CBE679D0C0000E4CD055A00CE8827ABBE03F04DF1FE0AEB6400
              00204FBCFF864BA7AF8BA71F1680FAFA8992C9CCB4CE060000F2C4FB500B403A
              9E7E5800C68DDB42AAAA5EB6CE060000F2C4FBCDB500BC1E4F3F2C008D8D0999
              3D7B894E8758E703000039B744A268B8AEF87D7C61B5C3C5F964F2316D07BB58
              2704000039F75717459F5B7961F502108637EB70A8754200009063CEDDE852A9
              23FF7B71D5EF6901883F1A70BE754600009073A7BA28FAE9CA0BAB1780203850
              1BC29DD609010040CEEDAB05E0BE9517562F00F5F5DB4826F382754200009063
              EDED9F70CDCDAFACBCB87A016868A892050BDE154E0A040040395922E3C7AFE7
              1A1B332BBFB0D649E37D183EA2C3E7FA75B30000A098CD71513476D52FAC5D00
              82E00A71EE9BD649010040CE5CA605E0C455BFD0D53B00C7EA70957552000090
              33476B01B87ED52F74F50EC067C4B9BF592705000039D2DEBEAB6B6E7E7CD52F
              AD5D00A64C192C2D2DEFE9B4C63A2F000018B056A9AD1DEE66CC58B6EA175D57
              D7F461F8A40E9FB64E0C000006EC0917456B1DE6BFBB0270B50EC75827060000
              03E4FD952E9D3E6ECD2F775D0082E06871EE5AEBCC00006080BC3F520BC08D6B
              7EB9BB02B0A31680A7AD3303008001F27E7B2D00CFAFF9E5AE0B4063634266CF
              FE8F4ED7B3CE0D0000B2B658C68F1FB9EA11005772DDFD840FC3593AD45B2707
              000059FB8B8BA2295D7DA3FB02904C9E27DEFFD03A390000C8927367BB54AAB1
              CB6F75F7335A00A66801F8B3757600009025EF27BA747A5657DFEABE00ECB9E7
              30193428DE0FA0DA3A3F0000E8B736A9A9F9889B39736957DF743DFDA40FC3F8
              90C09FB17E040000A09FBC7F58B7FEF7E8EEDBBD15809FEBF05DEBC7000000FA
              C9B98B5C2A757AB7DFEEE967B5001CA0C35DD68F010000F4DB3E2E8ABADD97AF
              E7023079F208696D7D5BA709EB47010000FAAC5DBCAF73E9F4E2EEAEE07ABB05
              9F4C3EA637B24B6FD703000045E3AFBAF5FFB99EAED07B0108C38B7438D5FA91
              0000803E72EE7C974A9DD9E3557ABB0D1F0413F4861EB07E2C0000A0CF021745
              B37BBA425F0A40AD1680F8780043AC1F0D0000E8D552A9AD1DE966CC58D6D395
              7A2D00312D0133B5044CB47E440000A017CEDDEB52A9FD7ABD5A5F6ECB87E1F7
              75B8D8FA310100805E7DC745D1A5BD5DA9AFEF00ECA88DE269EB470400007AB5
              9D1680177ABB529F0A40CC87E1CB3A6C61FDA8000040B75ED295FF567DB962DF
              0B40105C26CE1D6FFDC8000040B77EA105E094BE5CB13F05606F2D0033AC1F19
              0000E88673F52E954AF5E9AA7DBD4D3F65CA606969890F0B3CCCFAF1010080B5
              BC2B7575A3DCB469AD7DB9729F0B40CC07C19FB45D1C64FD080100C05A6E7351
              F4A5BE5EB9BF05E0082D0037583F420000B006EF0F73E9F4CD7DBD7A7F0BC0FA
              5A00E6EB7490F5E3040000FFD52A6D6D1BB9397316F5F507FA5500621C151000
              80A2739F8BA27DFBF303D91480A95A00AEB47EA400006005E78E72A954BFFE44
              DFFF02505FBFA164326FE8B4CAFAF1020000592EDE6FECD2E905FDF9A17E1780
              980FC3F81483E3AC1F31000015CFFB0774E53FA9BF3F965D0148268FD73BBCCC
              FA3103000099EAA2E8EAFEFE50760560ECD851525DFD6F9D565B3F6A00002A58
              AB24129BB8A6A685FDFDC1AC0A40CC87617C58E0BDAD1F39000015EC6EDDFA3F
              309B1FCCBE0024938789F7BFB37EE40000542CEFBFECD2E93F66F3A3D9178049
              93D695B6B6F8A040EB5A3F7E00002AD052A9A9D9D0CD9CB9349B1FCEBA00C47C
              18FE41873E1F77180000E4CC4D2E8A0ECFF687075A00F6D1E15EEB670000808A
              93484C724D4D0F64FBE3032B000D0D55B260C13F75BA99F5F300004005795DEA
              EA3EEEA64D6BCFF606065400623E99BC50BC3FCDFA990000A0829CEBA2E8AC81
              DCC0C00B407DFD3692C93C9F8BDB020000BDF2E2DCD62E957A692037929395B6
              0FC3B93AEC61FD8C00005001D2BAF51F0EF44672530082E0686D23D75A3F2300
              005480AF6B0118F07178725500866A0188CF1038DCFA590100A08C2D96A14337
              75D3A7BF3FD01BCAD9DFED7D185EAEC3B74C9F160000CA997397B854EAA49CDC
              54AE32F9FAFA1D2493792697B709000056B3A38BA2BFE7E28672BAB2F661F8A0
              0E7B993C25000094B79CECFCB7526E0B40101C2ACEDD5CF8E704008032378013
              FF7425B70560CA94C1D2D2F29A4E4715FC890100A07CCD97BABA8FBA69D35A73
              758339FF7BBD0FC37374F851419F160000CA99F78DBAF57F762E6F32F70560EC
              D88DA5BAFA9F3A1D54A8E705008032B64C0BC0C7B500BC99CB1BCDCB1EFB3E99
              BC49C37EAD30CF0B000065ED06174547E5FA46F3550076D502302FFFCF090000
              65CEFB5D74EBFF895CDF6CDE3EB3CF4702010018B0946EFDD7E7E386F359000E
              D6E18EBC3D250000943BE7F677A9D4F4BCDC74BE32FBC6C684CC9EFDB44E77C8
              DB13030040B972EE3919376E47D7D898C9CBCDE7333B67090400206B3939EB5F
              77F25B00468FAE91E1C35FD2E9E6F9BC1F0000CACCEB5257B7652E0FFCB3A6BC
              9FB8C72793DF13EF7F9AEFFB0100A06C787F924BA72FC9E75DE4BF00ECB9E730
              1934E8559D7E24DFF705004019F88F16808F69015892CF3B29C8A97B7D18C687
              2F3CAB10F7050040893BCB45D1B9F9BE93C214800913D693F6F67FEA74FD42DC
              1F000025EA9D1587FD5D9CEF3B2A480188F92038579C3BB350F707004009FAB1
              6EFD9F53883B2A6401585F0BC02BC2BB00000074A5605BFFB1821580980FC3F3
              7538A390F709004049C8C3297F7B52D802505F3F52329997753ABC90F70B0040
              915BA405E01385DAFA8F15B400C47C10FC589C6B2CF4FD020050C4CE70517441
              21EFD0A2000CD502F0A24E372CF47D03005084DE92D6D6ADDCDCB9EF15F24E0B
              5E00623E993C49BCFFA5C57D03005054BC3FDEA5D39717FA6E6D0A4043C32059
              B0E0799D6E6171FF000014897F4A6DED766EC68C6585BE63930210F36178940E
              D759DD3F00004520AF67FCEB895D016868A892050B1ED3E9A7AD32000060E809
              A9ABFB8C9B36ADDDE2CECD0A40CCD7D78792C9A42C3300006024D0ADFFD95677
              6E5A00623E99BC53BC3FD03A07000005749BAEFCBF6419C0BE004C98F009696F
              7F56A783ADB3000050002DBAE1BBBD4BA7FF6919C2BC00C47C185EA4C3A9D639
              0000C83BEFCFD395FF8FAC63144701D873CF613268D00B3ADDD83A0B000079F4
              861680EDB4002CB10E52140520E683E06871EE5AEB1C0000E48DF787E9CAFF66
              EB18B1E229008D8D0949A71FD112F059EB2C0000E4C1A312456374C5EBAD83C4
              8AA600C47C32B987B6A339C5960B008001F2BA7E1BA75BFF73AC83AC54742B5A
              1F867FD4E110EB1C0000E4D04D2E8A0EB70EB1AAE22B00C9E4C7B4253DA7D321
              D6590000C88125E2DC762E957AC33AC8AA8AAE00C47C109CA64FD685D6390000
              1830E74ED695FFAFAC63AC15CB3A4057B40054EB13F6884E475B670100206BDE
              FF4D468D1A6375BCFF9E14650188F930DC4987BFE952639D0500802C2C97F6F6
              DD5C73F3E3D641BA52B40520C61102010025AB488EF8D79DE22E0063C60C91DA
              DAA774BA9575160000FAE11F5A0076D202D0621DA43B455D00623E0802712E55
              0A59010090F833FFCE4D70A954519FEEBE2456AA3E0CAFD3E128EB1C0000F4CA
              FB2B75CBFF38EB18BD298D023061C27AD2DEFE779D6E6A9D0500801EFC9F1680
              1DB4002CB60ED29B922800319F4C36E8937A9B750E0000BAE5DCC12E95BAD33A
              469FA25A07E80F2D01776A0938D03A0700006B71EE765DF93758C7E8735CEB00
              FDE1C78EDD58AAABE34F05D45967010060156F4922F169D7D434DF3A485F9554
              0188F9303C4087BBAC730000B042BCD7FF01BAF53FDD3A487F945C01886909B8
              4A8763AD730000A02E775174BC7588FE2ACD02B0DF7EEBC89225F374BA9D7516
              00400573EE395977DDCFB8E9D3DFB78ED2EFE8D601B2E593C95DC5FB87753AC8
              3A0B00A0222DD3F5D0EE2E9D7EC23A48364AB600C4B4049CAE4FFE05D6390000
              15E9141745BFB00E91ADD22E008D8D09993DFB019D26ADB300002A88F70F4810
              ECED1A1B33D651B255D20520E693C94DF57F44FCD1C011D6590000156191B4B7
              EFE49A9B5FB30E3210255F00623E0C0FD6E10EEB1C00800AE0DC212E959A661D
              63C00FC33A40AEF864F206F1FE08EB1C0080B276B58BA2A9D62172A17C0A4010
              0CD556F6A84E77B0CE02002843CE3D2DD5D563DCCC994BADA3E4E4E15807C825
              5F5FBF8D64327FD5E97AD65900006565B178FF59974EBF681D2457CAAA00C47C
              18EE2F9D870A2EBBC7060030111FEAF70BA57296BFBE2ACB95A496809FE8F003
              EB1C0080B2708E8BA21F5B87C8B5F22C009DC707B84FA77B5B67010094B0F8F3
              FEA3464D71D3A6B55B47C9B5B22C00313F79F208696DFD1F9D6E619D05005092
              5ED502F019974E2FB00E920F655B00623E087616E71ED2E910EB2C008092D2A2
              CB5E2E8AE65907C997B22E00319F4C1EA60DEE77D639000025C4B9A35C2A7583
              758CBC3E44EB0085E0C3F04A1DCAE2C00D00803CF3FED72E9D3EC13A46BE5546
              01983265B0B4B4CCD6E9E7ACB300008ADA43525717BA69D35AAD83E45B451480
              980F828DC4B94774FA31EB2C0080A2F48A2412635C53D37CEB208550310520E6
              C78DDB5EAAAAE6EAF423D659000045E51DF17E2F974E3F631DA4502AAA00C47C
              188ED7E17E5D065B6701001485365DA6B8286AB20E5248155700623E99FC8A36
              BD5B2AF5F10300FECBEB7284AEFC2BEED36215BB02F46178B60E6759E7000098
              3A4B57FEE75A87B050B905207EEC6178A34E0FB7CE02003071AB44D1A1AEF35D
              808A53B10520E6478FAE91E1C367E8B4DE3A0B00A0A0664B6DED643763C632EB
              20562ABA00C4FC8409EB497BFB1C9DEE689D05005010CF4A5BDB5E6ECE9C45D6
              412C557C0188F920F8F88A63046C689D050090576FEAEBFDEE2E957AD53A8835
              0AC00A3E0C47EB107F04643DEB2C0080BC582CDE872E9D7EC23A4831A000ACC2
              D7D78F914C66A64E875A670100E4D4FB9248ECED9A9A1EB40E522C28006BF061
              18EF1078AF2EB5D659000039F181AEFCF7D1957F641DA4985000BAA02560B20E
              770B470B048052D726DE1FECD2E97BAD83141B0A4037B4041CACC31F75A9B6CE
              0200C84ABBAEFCBFA62BFF3F5807294614801EF820F8BA3877BD4E13D6590000
              FDE275E57FACAEFCAFB50E52AC2800BDD012F06D2D01BFB6CE0100E8B3F8C87E
              C7BB28FA8D7590624601E8039F4C9EA44DF297D63900007DE0FDE9BAE57F9175
              8C624701E8231F04E78A73675AE70000F4C0B9B35D2AD5681DA3145000FA414B
              C069FACB75A1750E0040179CBB4857FEA75BC7281514807EF26178AA0EBCB504
              00C5A5624FEB9B2D0A40167C32F94DF1FE72E1D30100602DDEDBFF64974E5F62
              1DA4D45000B2E483E05071EE46E138010060A55D5F878F71A9D40DD6414A1105
              60007C181EA2C3CDBAD4586701800AD3AA5BFE87EA96FFEDD6414A15056080B4
              04ECA3C3345D86586701800AB14C972FB928BADB3A4829A300E4809680F13A4C
              D7659875160028734B75CBFF40DDF29F651DA4D4510072C4D7D77F563299BFE8
              748475160028538BC5B97D5C2AF5907590724001C8211F86A375B84F970DADB3
              0040997953DADB3FEF9A9B1FB70E522E280039E6C78DDB42AAABEF13EFB7B7CE
              020065E2EF2BB6FC5FB50E524E280079E0F7DAEB235A02EED05FD8D03A0B0094
              B8946E507DC1A5D38BAD83941B0A409EF8868641B260C1353A3DDC3A0B0094A4
              F8582B23474E75D3A6B55A47294714803CF2F1F39B4CFE58DBEB59C2730D007D
              E575E57F8EA45267BBCE53FB220F582915800F82AFEB2FF3D53A1D649D05008A
              5CABBE5E7EC3A5523759072977148002F1C96452BCBF43A7EB5B67018022B548
              5F270F76E974DA3A4825A0001490AFAFDF413299F863821FB7CE020045E61569
              6FDFC735373F671DA45250000ACC07C146E2DC9D3ADDDD3A0B00148987A4A6E6
              203773E65BD6412A0905C08096806A4924CE13EF4FB3CE0200C6AE96BABA13D8
              D3BFF0280086B4087C4D9CBB4AA7EB58670180026BD1E5DB2E8AAEB70E52A928
              00C6B404ECAC25E04F3ADDC23A0B0014C8BF2491F8A26B6AFA9B75904A460128
              02BEBE7EA46432B7E874B2751600C82BEF67C8E0C15F73F7DFFF1FEB28958E02
              50243A0E1A1404A78A733FD18B09EB3C009063F1C17D2E9671E3CE708D8D19EB
              30A000141D1F04FBEA3F92F800181C2F0040B978575FD78E70A9D49DD641F021
              0A4011F2E3C66D2D5555F17E013B5A670180017A5EDADB0FE6F3FDC5870250A4
              7C100CD5C67C894E8FB2CE020059BA466A6A4E7633672EB50E82B551008A9C0F
              C38325FE9CACC848EB2C00D0478BC5FBE35C3AFD07EB20E81E05A004AC387AE0
              0D3ADDDB3A0B00F4A2495FAFBEEE52A937AC83A067148012B1E2530227EA3FAC
              8BF4E260EB3C00B086B68E4F318D1B770E7BF997060A4089F141B0A32412BF17
              EF3F659D05003A38F79C2C5F7EA86B6E7EDC3A0AFA8E025082FC983143A4B6F6
              429D9E20FC3F0460EB26A9A9398E1DFD4A0F2B8F12E6C3303E72E08DBA6C649D
              0540C5795BB7FC8F76A9D474EB20C80E05A0C4F9B1633796EAEA2B75BABF7516
              0015E30E4924BEED9A9AE65B0741F6280065C227930DE2FD6F745A679D0540D9
              7A535F674E70E9F4EDD6413070148032E2274DDA40DADA7EA6D3C3ACB300282B
              5E979B65D0A09338894FF9A00094211F045F14E72E13F60D0030702FE8EBC9B1
              2E956AB60E82DCA20094293F61C27AD2DE7E8E4EBFAD4B95751E002567B9AEF8
              7F2E994CA34BA75BACC320F7280065CE2793BB8AF7F1A184475B670150229C7B
              5C5F378E715134CF3A0AF287025001FCE8D135326CD877F51FF5597A711DEB3C
              008AD6527D9D3853468EBCCC4D9BD66E1D06F94501A8203E99DC545BFD05C24E
              82005617EFE477BBAEFCBFEF52A957ADC3A030280015C8D7D78792C95CAAD31D
              ADB30030F73FBA9CE4A268AE7510141605A042F920A896780741E7CED6713DEB
              3C000AEEDFBA9C2DE3C75FCBC97B2A1305A0C2F9FAFA0D2593893F2D70B4F069
              01A012B474ECDD5F5D7D01C7EFAF6C140074F041B09DBE28C445A0C13A0B803C
              71EE5E59BEFC44D7DCFC8A7514D8A30060355A0426E88B447C34C19DACB300C8
              91F8637DF1DFF939980F564101C05A7C4343952C5C78B878FF63BDF831EB3C00
              B2166FE937CAF8F137F3777EAC8902806E691118240B161C21F18E421C561828
              250BB4C0C7EFE45DC251FCD01D0A007AE5274D5A575A5B8F17E74ED78BEB5BE7
              01D0ADF7F4DFE96F64F0E09FB81933DEB50E83E24601409FF93DF71C263535DF
              A2080045A773C5DFDA7A919B336791751894060A00FA6D9522709A5EFC88751E
              A082B1E247D62800C89A0F82F85D80EFE80BD0893A8EB0CE03549085BA5C2255
              5597BA59B3DEB10E83D24401C0806911A8D51270884ECFD0655BEB3C40197B53
              FFAD5D2589C42F59F163A02800C819DFD89890E6E67DC4FB781F813DACF30065
              E445FD77F56B1932E44A3763C632EB30280F1400E4850F82BD742BE5147DD1DA
              5F2F26ACF30025C9FB28DEDA9754EA5ED779C63E20672800C82B3F61C227A4BD
              FD3B3AFD862EEB58E7014A40AB2E77EBF27317458F5A8741F9A200A020FCD8B1
              A3A4BAFA3889CF4028B281751EA008CD17E7AED4E50AD7D434DF3A0CCA1F0500
              05D57174C1850B0F10EF8FD58BF5C2EF20304F97ABA5A5E526F7F0C31F588741
              E5E0C517667C186EAB5B3B476A1988FF3C30D23A0F5040F11EFC7F94F6F65FBB
              E6E6A7ADC3A0325100606EC5A186E3D3101FA585602FE1F712E529DE892F3E1B
              DFF53274E8ED6EFAF4F7AD03A1B2F1428BA2E2C78DDB5C1289AF6A1198AA17B7
              B0CE03E4C01BFAFB7CB36432D7BA74FA45EB30C04A140014A58E630ACC9E3D51
              A787E972A02EEB5A6702FAE13D5DEED2327B938C1DDBC4A978518C2800287A1D
              471A4C24268AF7711938409741D699802EB4EB12E97293FEAEFE49B7F6975807
              027A42014049F1F5F523A5BDFD8B2B0E3D3C5E972AEB4CA868CB7549EBEFE36D
              52537387BBFFFEFF580702FA8A028092E5274F1E21ADADFBEA8B6F836E714D12
              DE194061C45BFA8FE8EFDC34A9AAFA039FD947A9A200A02C749C993091D84F5F
              94E33F11C4656098752694957775B95F7FBFEE91EAEAE99C8807E5800280B2E3
              1B1AAAE4EDB7C76821D8572FEEAF2FDADB5B6742497A599759E2DCBD3272E4FD
              6EDAB456EB40402E510050F67C106CA765606F2D02F1A70AE2FD06F84401BA12
              EFB4375B7F4F1E90AAAA19AEA9E91FD681807CA200A0A2741C8AF8EDB7F7D0AD
              BAF8CF047121D845D891B052B5EBCAFE312D87333B56FA75750FB3958F4A4201
              4045F341305487DD7525B097AE04F6D4F9386167C27215EFBCF7842E73B500CE
              919A9A26F6DA4725A30000ABE8280489C41E5A06E243127F6EC5B29E752E6465
              B12E8FEACAFE11C964E6C8A0410FBB9933975A87028A050500E841C711091F7C
              703B2D049FD36577E92C043BE852639D0DAB69D3E5EF12AFF0BD8F57F88F4A73
              F3F3AEF3F8FB00BA400100FAC98F1E5D23C3876FA3D3D1AB2C3BE932D43A5B85
              8877D67B41976775651F9F4A779E2C5B368F53E902FD43010072C44F9CB889B4
              B5C5EF0E7C529CEB1C453E2D1C93205BCB747949E22D7BE79EED18BD7F56C68F
              7F8E63EB0303470100F2C8C7FFC6C68DDB4C6A6AB692F6F62D2591D84A57625B
              E9B7B65CB1547A39880FB0F3B2AEE05F944C263E535EBCC27FB16349A7DFE02D
              7C207F28008021BFD75E1FD152B0992E1FD365732D079BE99737D765135D36D4
              65D48A25619DB59FE22DF4B7572CF1A172FFADCB6BBAA27F4D57F4AFEBF2AA3E
              DED75C3ABDD83A2850A9280040915B7164C351BAD21C25D5D5F13842BF1C1FFA
              78FD8ED1FB95E33ABA828DDF51A8D56588741EF028FE4863FC2986550BC4CAEF
              AF2AFEFB79CB2A97E315787CB8DBF873F14BF5B6DFD7DB5EA6E37B3ABE2FF11E
              F6CE2DEE183399451D73E716C9F2E56F6BAEB72508DEE26D7AA0B8FD3F06151F
              CA6388EA650000000049454E44AE426082}
            Stretch = True
            OnClick = imgDeletePersonClick
          end
          object imgAddPerson: TImage
            Left = 8
            Top = 0
            Width = 35
            Height = 35
            Picture.Data = {
              0954506E67496D61676589504E470D0A1A0A0000000D49484452000002000000
              02000806000000F478D4FA0000000970485973000000070000000701B821B0DB
              0000001974455874536F667477617265007777772E696E6B73636170652E6F72
              679BEE3C1A000043C54944415478DAEDDD099C5B65BDFFF1E739B3740A2D941D
              B72B5C106893B485AA8078B50834494B9BA4DCF6EF2E2A880B206EE06E112F82
              A25E45445C2E2EA897E9A549DAD2490A581411502BA593B4A0A0A8A89422145A
              6867A639BFFF932E5A4A97594EF24B4E3EEFBEF2CA934C72CEF79C4E72BEC924
              E75803A0A14D5D36B5BDE3E9BF1FEA55DA0FF1AC3DCC37669C67EC3863CD0122
              B2BF78669CAD5E16B3AF31B28FBBCBBED6984E31667F77B9DD18BBFF4E931CE3
              4E1D3B5D37E04E1B76BA6E9D3B55DCB49E72D3EA77E367DCB49E75F37D468CAC
              B3BE59573DF78CB7CE6578D2AF5E5791C78CF88FF51D78D8DADB4FBD7DB3F6BA
              03B07B563B00D0CA92DDC71F6246F5BDD8887DB16FBD97BA8DE78BADD817B947
              E68BDD8F0F75E787B80DFB21DA3987C59AB56EB91E7325C49D9B478C95475C91
              78C433E6CF56CC5FDADA071E5934F3778F6BC7045A150500A8A179F38CF7CB13
              26BED4FA7294DB001EED367E47FB628EAA9EBB8DE151EE26A3B5332A7BD69D1E
              72EBE221F764F4A07B4A7A70CB58DA1E3CE9BE157F76EBCFD70E088415050008
              C819F9635FE849E704B7A18F582313DCABDF88BB7AB23BEDAB9DAD4955FFECE0
              4A81291B31AB8C67CB622BABF6DB14B97FFEDCF915ED7040B3A300004334E5BA
              291D07BF60E3319E6FA788B153AA57B9D3F1EEB48F76B61651FDBCC2EFDD69B9
              58B3DC5664F9D8CDFB2D9F3FF7AE8DDAC18066420100F6A0FA16FE5D274C18EF
              8977A22FF6246BE595EED5E804F3FC0FD141D7807B365B658CDC23E2DDED19FF
              9E135794EFE74F08C0EE5100801DCCCA1F3B76C0EF7CB56FE5146BE424F71079
              85BB7A3FED5C1896A7AC985F89B1F718EBFF6253BFB9F3F6B9E50D239F2C100E
              1400B4B4EA06BF4F3A4F34C63FDD1AFB6A77557583DFA99D0B3551FDDCC003C6
              CA2F8CF16E1DA80CFCF4B6D9F7FF433B14A0850280963275D9115DA39E1AFB6A
              CF9A33C497D3DD23A0FA213D4F3B1754F8EE09F05E31728BF5CC2DA6BDEFCE9E
              E90FF6698702EA850280D09B9E8BC5DC937C5C8C39C35DFC0FC357EFB06BD5AF
              24DE21E2CA409B5F28CE5A55D60E04D4120500A153DD735ED7936B4F12CF9C69
              8D4DBBAB8ED5CE8466240FBB67C8A556CC62D3D9B7947707103614008442BC3B
              72A0EDF066192BB3CCD657FA63B43321543618314B8D270BDBDABC85379FD9FB
              A4762060A42800685AA72D38EEA04EAF6D86B1768E889966F8F01EEAA3FA61C2
              BBC59AF96673A5BB78D6EABF6B070286830280A6326DC1C4436D9BCC352273DC
              2FEF29EEAA36ED4C6869D53270873132BFA36DA09B631BA0995000D0F0E6749F
              3C7AFDA80D675A236F75AFF4E3869DF0A03155CBC032F77BFAC30EBB39BB30F5
              C07AED40C09E5000D090E674CF697B7AD4EA8415F36677B1FA777D76B38B66F2
              8CB176A1F5CD0FC70C1CB7946317A0115100D050A62F98748C6F2B6F74BF9967
              BB8B2FD5CE038C9CFD9B31F27F9EB1DF5992EEEDD54E036C470180BAA9DD9131
              A33ACDEBADB1679BAD7FD707C248DC33EE9DEE49F7FA4A9777E3D2F8CA67B403
              A1B55100A026919F78AC48E5ED6EC37FAEBB78A0761EA08E9E3656FED73D055F
              534895566A87416BA200A0AEE674473AD78FF25246E45DEEE26986DF41B438F7
              00586EC47E6BCCC0981F724863D4134FBEA88BF84DE35FE0B57BEF11B1E7B98B
              876AE7011A8D7B325EE31BB9AEADC35CBB6446F951ED3C083F0A006A2A999F70
              BC18FB6EF70AE7ADEE6297761EA009F4BB53DE7ADE977B66ADBC5B3B0CC28B02
              80C0CD9B67BCBB8F8F56F7C1FF0123E6D5DA79806625C6FCDC13FB9513EFEB5D
              E81E57BE761E840B050081A9FE7D7F43A779BD6FEC47DD2FD678ED3C40883C24
              D65CDDB7DF86EB6E3FF5E14DDA61100E14008CD896AFF18DB2EFB4623EEC2EBE
              583B0F1056D5CF0988986F7699F6FFCE6556ACD3CE83E64601C0B0CD581C3B60
              F366FF22F76B74A1FB451AA79D0768214FBA67EFAF76F9ED5FA50860B8280018
              B2AD87DEB5178A35EF67C30FA85A2F46BE61FACD178A73CB4F68874173A10060
              D0AA87DFEDB0ED17B0E1071ACE065704AEA10860282800D8AB69C589FBB66D94
              F3DD13CCC7DCC5FDB5F300D8AD2D45C0EBECBBBC67FA834F6B874163A30060B7
              B67CAABFC33B5BAC5CEA2E1EAE9D07C0A03D6E8DBD6AE3FEEBBFCAB706B03B14
              003C4FF550BC1B46AD7E9B11F31931E6DFB4F30018B63F192B9F19DB37E1060E
              498C9D5100F01CF15CEC746BE44B6E38513B0B8060B822BFDA3DAE3F5048978B
              DA59D0382800D862C682E878BFCD7C41C49CA99D05406D586B167B9BEDFB6F3E
              ABF70FDA59A08F02D0E2AA07E9B1ED6D97B9970867BB8B6DDA7900D4DC26F778
              FFCAA601B9FCF6B9E50DDA61A08702D0A2A65C37A5E3E0C3FBDE6BC57CD65DDC
              4F3B0F80BAFBBB153B6FCCC071DFE5F301AD8902D082920B23AF13DFFB9A3112
              D1CE02409998DF8AF52E2AA657DEA11D05F545016821C99B26BE58DAFCCBDDF0
              2DDA59003496EAE703C46FBFA09059F1B07616D40705A0054C5D36B57DD4BAB5
              1FB4D6CE7317476BE701D0B09E754DE05363FB8EFB2A7F16083F0A40C825F2D1
              89C637DF71FFD3AFD0CE02A03988312BDAAC397749AAF41BED2CA81D0A4048CD
              E93E79F4FA8EF597B8FFE1EAEE7B3BB5F300683A9BDDE91BFE68EFE34BE32B9F
              D10E83E0510042289E9BF81FD6F8DF76C363B5B300687A0F19F1CE2B6456DEA6
              1D04C1A20084483A3B79DC266FE04A23F65CC3FF2D80E0883BDD20FD7211471B
              0C0F36122191CC45668AB1DF70C3176B6701105A8F1A6B2F2CA47AE76B07C1C8
              51009ADC963DF979DEB5EE4199D2CE02A0458859E075CAFB96CC283FAA1D05C3
              47016862F17C2461C55E6F38542F807AB366AD6B02E71452E585DA51303C1480
              26B4E513FE9DEBAF70C30B0CFF870074FDD01FEDBD876F0A341F361E4D667A2E
              16F38DFCC80D63DA5900609BFBA5CD7B5371E6CADF6A07C1E051009A85181B5F
              18BDD08AF982E17BFD001ACF807B9EBAFCA4FB4A9F9D37CFF8DA61B077148026
              30FDE6C8E1FE8077BD6B0109ED2C00B047627F6A7DFBB69EB3563EA21D057B46
              016870897C74B66BD5DF72C383B4B300C0608831EBACC87B0B99F24FB4B360F7
              28000D6A6A77644C57A7B9DAFD179DAD9D050086E93BFE68EF223E20D8982800
              0D68FA8249C78857B9C9B5E8A876160018A1FBDB7C33FBE6D9A5D5DA41F05C14
              800653DDA39F6FEC0FDC7FCC38ED2C001090F522F2F662A67C937610FC0B05A0
              41CCE99ED3B6BE63F5A7DCFFC8A7DC454F3B0F00044CC4C817F6EB9FF089F973
              E757B4C38002D0104E5B70DC411D5EFB8FDD709A761600A8B165BEEFBD7EE9EC
              958F69076975140065C9FC84E345BCEADB62476A6701803AF98BF1E4ACC2ACF2
              AFB583B4320A80A27836FA166BCD37DD701FED2C0050679B8C98F30B99D277B5
              83B42A0A8082E492A347497F57758F7E176A6701005556BE35B6CF5C307F6EB9
              5F3B4AABA100D45975AF7E95012F678D9CA89D05001AC42F07AC997D5BAAB446
              3B482BA100D4517CE18488F5ED62B7DA8FD0CE02000DE68F6DBE99C1FE02EA87
              025027C98591D7F9BEBD89EFF703C06E3D69C4CC2E644AB76B07690514803A48
              E4236F3362ABFBF3E7287E00B067FD22E69C62A6F443ED20614701A825313691
              8B7EC6ADE54F1BD635000C96B87F9F2DA44B97BA674ED10E13566C946A644E77
              A4737DA7FD8E1BBE453B0B003425B1DF1F3BE0BF8B6F08D40605A006662C8E1D
              50D92C0BDC70AA761600686A627FDA65DACECA6556ACD38E12361480804D5B38
              F148EBFB37BB153B5E3B0B0084C42A23ED330A99150F6B0709130A4080A6E7A3
              2F17318BC598C3B4B30040C83C6AAD3FBD27B5EA5EED2061410108487241ECB5
              E2C94237DC4F3B0B0084917B71B5CE9D662C4D977EA99D250C28000198B6207A
              A6E7996E371CAD9D050042EE1931365D4CF7DEAA1DA4D9510046289E8BBDD11A
              F99E1B766867018016D167C5BEBE27D39BD30ED2CC28002390CC462F106BBE6A
              588F00506FFD22F2C662A67C93769066C5866B98E2D9E887AC355769E7008016
              561163CF2DA67BAFD70ED28C2800C310CF462EB6D65EA99D0300B0654F811715
              D2A5AF690769361480214AE6629788912BB4730000FE49DCC6ECE29E74897765
              8780023004F15CE4526BECA7B57300009ECFBD38BBB2982E7F543B47B3A0000C
              52221BBBCC58F9A4760E00C01E5833AF902A5DAA1DA31950000621918DCE736B
              EA33DA3900007B2722971433E52F68E768741480BDE0D3FE00D074C48A795F4F
              A674AD7690464601D883442EF201B78ABEAC9D03003064E2FE9D5BC894BEAB1D
              A45151007663DB4E7EF85A090034AF8A88FC3F7616B46B14805D4864A36F766B
              E6FB6EE8696701008CC880EF9BD94B6797166B07693414809D2473919962EC02
              376CD7CE020008C446B132A3982A2FD30ED24828003B70AFFCA7BA35D2E3865D
              DA590000817A568C9728A657DEA11DA4515000B6999E8FBEDC17739B1BEEA79D
              0500103C31665D9BC8A94B32E515DA591A0105C0545FF94F3EC2DACD77BB5F8E
              C3B4B300006AEA51AF523969C959ABFFA41D445BCB1780198B63076CDE2C77BA
              15315E3B0B30449B8DD89F1BE3AF708FE447ACF51E7325B6BF9633748F934E11
              FF50377C89116F92B1F21AC3E765D0746C79737FE729B7CE5DFE947612D5B5A0
              1D40D39CEE48E7FA4E5B74C3A9DA59802178D05AF379BF4F72C5B9E5273483C4
              BB23077AA36C5AC47CDC5D3C4A7BC5008327B7AD5DD3955C7EDEF201ED245A5A
              B70088B1897CB4FA55BFB76847010669BD18F9D8E36BBABED5684F5ADBCAF4BB
              DDF0BFDC698C761E6070E47B8574F9EDDA29B4B46C01E0C87E68327FB1D64FF5
              A456DDAB1D644FA6E76231DF48DE0D8FD4CE020C8688FD7431D37B99760E0D2D
              590012F9C8DB8CD8EB5B75F9D15CC498D59D6DFDAF5934F3778F6B67198C64F7
              F18748E7C0CFDDF038ED2CC020547719FCD642A6748376907A6BB90D607241EC
              B5E249F5EFFEA3B4B30083F044A5AD72D22D3357FF5E3BC8504C5B38F148CFF7
              7FE586076B67010661C088972C6456DEA61DA49E5AAA00C4174E8818DFFB855B
              E871DA5980C1F07D33B35977611A5F184B595F72DA3980417AD26FB3AF5A3AB3
              F77EED20F5D2320560DBDB9277193EA98CE6717B215D3A553BC4482472915BDD
              D3CC69DA398041FAE3803527DF962AADD10E520F2D5100924B8E1EE5F78FFE99
              3572A2761660D03C79656156F9D7DA3146627A6EC289BEF1EED6CE010CC12FC7
              F6CBA9F3E7966BBA4F8D46D0120520918F5C67C4BE4B3B073058D50FFE15D3A5
              09DA398290C845AB6FA91EAB9D03183C7B4D21DD7BBE768A9A2FA576805A8B67
              A36FB1D6FC403B073024623E5FC8943EAE1D2308C97CEC4A11B9583B07301462
              EC3B8AE9DEEBB573D452A80BC0B46C6C8A67E51786A3FBA1E948A2902E17B553
              0421998D25C5CA12ED1CC0106DF4445E15E6030785B6005477516A3BED6F0C3B
              244113F27D2FB674F6CA92768E2024F2D189EEE5D47DDA398061F853475BFFCB
              9B651F1C4315CA02306F9EF1EE9E1CBBB9FA2A4A3B0B301CD22F0769EFE73F28
              33171D73F040A573AD760E60986E1DDB3F3E317FEEFC8A7690A085B200247291
              CFBB45FBA8760E60B86CE7A6AE9EE90FF669E70842F55B38D2DFB5493B07305C
              D6CA653DA972E8761D1FBA02B06DE723D9302E1B5A0705006828E2B628FF5948
              951668070952A83692D3174C3AC6F72AD5DD8FEEAF9D0518090A00D070D6FB6D
              F69561DA5360680AC0D4EEC898AE4E7B8F1B86E2BBD3686D1400A021F5FAA3BD
              9397C6573EA31D2408A12900895CE47AB738676BE700824001001A94956F1552
              E5F3B46304B228DA018290C847671B313769E700824201001A98B5730BA9DEF9
              DA3146BC18DA0146EACC45935EB4B95259E986076A6701824201001ADA93BE31
              9396A64B7FD10E32124D5D00B67CDF7F52EC1663E575DA598020510080C666C5
              DC72E27DA584DB0EF9DA5986BD0CDA014622918B7DD418F9BC760E20681400A0
              0958FBA142AAF7CBDA31861D5F3BC070C5174D3CC156FCBBDCB0533B0B10340A
              00D014FA3C91939AF578014D5900662E9AB2CF40A56FB91B1EA79D05A8050A00
              D034568DED1FFBF2F973EFDAA81D64A89AB20024F291EB8CD87769E7006A8502
              0034137B4D21DD7BBE768A21A7D60E3054DB76F59BD3CE01D4120500682A628D
              A47AD2E545DA4186A2A90A40FCA6F12FB06D6DD5AFFC1DAC9D05A8250A00D074
              1E1BB066E26DA9D21AED2083D5540520918B560FC490D1CE01D41A0500684A8B
              0AE9D22CED1083D5340520918FCD3122DDDA39807AA00000CDC96D545FDF932E
              DDA89D6390591BDFE9DD53F66FEFEC2BBBE18BB4B300F54001009AD6E3BEEF45
              96CE5EF9987690BD698A0210CF46BF6BAD7987760EA05E28004053FBDF42BAF4
              06ED107BD3F00520918D4E75297FDA0C5981A05000802667CD5985546981768C
              3D476C6073BA4F1EBDBE737DF553FF476B6701EA89020034BD47BBA47D7C2EB3
              629D7690DD69E80290CCC7AE14918BB57300F54601009A9F15F97A4FA67C8176
              8EDDE6D30EB03BF1059149D6B3BF76C30EED2C40BD51008050F08D6F5F5D98DD
              7B9776905D69C8023075D9D4F6D14F3D7EB71833453B0BA08102008446EFDA35
              A3A62C3F6FF98076909D35640148E6629788912BB473005A28004078B80DED47
              7AD2A5ABB473EC22576399B670E2919EEF57BFF33F5A3B0BA085020084CA33BE
              31E397A64B7FD10EB2A3862B00F15C34EB42A5B573009A280040B888313716D3
              A5D76BE7D851431580782E76BA35728B760E401B0500081FB1F2BA62AABC4C3B
              C7760D5300E674473AD777DAFBDCF038ED2C80360A00104AABD6AE1935B9513E
              10D83005209E8D5C6CADBD523B07D008280040388935171553A5AF6AE7A86A88
              0210BF69FC0B6C5BDB036E38563B0BD008280040388931EBC4F78E6D84830535
              4601E0603FC073500080F0126BAE2DA64AEFD5CEA15E0012F9E84457897EEB86
              6DDA59804641010042AD229E3FA9386B555933847E01C8458BEE6C9A760EA091
              500080D0BBB9902E9DA91940B50024B3B1A45859A299016844140020FCAC9878
              4FA6B4546DFE5A339ED33DA76D43E7EA15624C542B03D0A82800404B5839B67F
              FC09F3E7CEAF68CC5CAD0024B2D177BAB97F476BFE4023A30000AD41C4BCB598
              29FD5063DE2A0560EAB223BA463F35E601F7EAFFDF34E60F343A0A00D02AE461
              DBD9779CC6E35DA50024F2B10FBADAF3258D7903CD800200B40E31727E315DBE
              A6DEF3AD7B0198DA1D19D3D5691F72C343EB3D6FA05950008096F258A71D387A
              61EA81F5F59C69DD0B40221B9DE7E6FA997ACF1768261400A0C558F3F142AAF4
              F9FACEB28E4E5B70DC411D5EFB1F0DBBFC05F6880200B49C27BBA4FDDF739915
              EBEA35C3BA1600F7EAFF7237C78FD5739E4033A200002DC89A798554E9D2FACD
              AE4EE2DD91036DA77DD8F0EA1FD82B0A00D0929EEA92F623EAF52E40FD0A402E
              FA3937B34FD46B7E4033A30000AD49C47EBA98E9BDAC1EF3AA4B014867278FDB
              6837FFD1CD6C5C3DE607343B0A00D09AAA870B1E2DED47D6E35D80BA1480643E
              F259D76A3E558F7901614001005A98954F1552E5CFD57C36B59EC1ACFCB163FB
              A4E3CFBCFA07068F0200B4B42736F5CB4B6F9F5BDE50CB99D4BC00C4B3918BAD
              B557D67A3E4098500080D666453ED09329FF774DE751CB896F7DE08FFE8331F2
              C25ACE07081B0A00D0F21E19DB2F47CD9F5BEEAFD50C6A5B00F2917345ECB76A
              390F208C2800008C95B30BA9F2F76B36F95A4D78DE3CE3DD3D39B2DACDE2985A
              CD03082B0A0000E7FE935694226E7BEAD762E2352B00897C74B6117353EDD60B
              105E14000055D6C8AC9E7479516DA65D23895CF417EEEC949AAD1520C4280000
              B6B9BD902E9D5A8B09D7A400C4174D3CC156FCE5B55D2740785100006CE7891C
              BF24535E11F4746B520012D9E80FDD94DF5CFBD50284130500C0BFC8F70AE9F2
              DB839E6AE005207ED3F817D8B6B687DDB0B31EAB0508230A00801DF4791D72C4
              9219E547839C68E00520918D5D66AC7CB27EEB05081F0A0080E710736921539A
              17E424032D00DB1EE87F76C343EBB95E80B0A10000D891DB58AF19D32FFF16E4
              8E81022D00F15CEC8DD6C88FEABF6A8070A10000D899DB60BFBE275DBA31C0E9
              0527918FDE61C4BCBAFEAB0508170A00805D08F42B81811580642E32418C2D05
              394DA055510000EC8A787EB4386B5539886905B6B14EE4A2D7B8B3F7AAAD1520
              4428000076C58AF96A4FA6745120D30A622253BB2363BA3AED5FDD703FD53503
              84040500C0AE8831EB3ADB46BD68D1CCE5CF8E745A811480782E728E35F6DBDA
              2B06080B0A0080DD0AE82881811480442E7AA73B7B95F63A01C2820200600F02
              F930E0880BC0F405938EF1BDCAFD414C0BC0561400007B2056CCCB7A32A58746
              3291116FB4E3B9C815D6D84BB4D70610261400007B62AD5CD6932A7F7A44D318
              C99DE774CF695BDF79FF9F5D1979A1F6CA00C2840200602F1E19DB3FFE88F973
              E757863B81111580783E3AC38A59ACBD1680B0A10000D81BDF9A694B53A55B86
              7BFF9115805CF47FDD04FE9FF64A00C286020060107E584897DE3ADC3B0FBB00
              4C2B4EDCD7DBE8AF71C37DB5D700103614000083F08C3FDA3B6C697CE533C3B9
              F3B00B403C1B7D8BB5E607DA4B0F84110500C0608CE40041C32E00895CACC718
              49682F3C10461400008322922F64CAE9E1DC75580520D97DFC21D239F037376C
              D75E76208C28000006A97FC0DFFCC2DB66DFFF8FA1DE715805209E8F9D6F45AE
              D65E6A20AC28000006CB8A3DAF27D3FBAD21DF6F38334BE4223F7777FD0FED85
              06C28A020060086E2DA44B670CF54E432E00A7E5A3877588A91EF9AF4D7B8981
              B0A2000018828AEDEF7841CFDC7BD70EE54E432E00F17CF4DD56CCB5DA4B0B84
              190500C050586BDED9932AFDCF90EE33D4992472D1EA5E874ED75E5820CC2800
              00866849215D9A31943B0CA9009CB6E0B8833ABCF6470D9FFE076A8A02006088
              06DADAED61379FD9FBE460EF30A40290C8C6CE3656AED75E4A20EC280000864C
              CC5B0A99D20D83BDF9900A403C17CDBA3B0C6B870300068F02006018E617D2A5
              B983BDF1A00BC0B60771F5138663B59710083B0A008061787A6CBF1C327F6EB9
              7F30371E7C01C8C692626589F6D201AD8002006058C43BBD905979DB606E3AE8
              0290C8C5BEEEA6FC3EED65035A010500C0F0C8570AE9F2070773CB211480C81F
              DDCD8FD05E34A0155000000CD3438574E9E8C1DC70500560DA828951CFF37BB5
              970A6815140000C366BDE30AA9950FECF566839956221FFD8811F305ED65025A
              050500C008BCBF902E7D6D6F371A54014866A34BC59A211F6800C0F05000000C
              97B566714FAA3473AFB7DBDB0DA62E3BA2ABEBA9314FB8E168ED85025A050500
              C0083CE39E430EDADB73C85E0B403C173BDD1AB9457B69805642010030129EB5
              AF5D92EAFDF99E6EB3D70290CCC7AE14918BB5170668251400002322F673854C
              EFA7F67493BD1680442EF65B37A5E3B59705682514000023F4AB42BA74E29E6E
              B0C70210EF8E1C683B6D75F7BF9EF69200AD84020060842A5DD27E702EB362DD
              EE6EB0E702B03096B2BEE4B49702683514000023676714D2BDBBDD85FF1E0B40
              221BF992B17650BB1404101C0A00809112235716D3E58FEEEEE77B2E00B9E8AF
              DDD9CBB51702683514000001B8AB902EBD6A773FDC6D0198953F766CBF7454BF
              FFDFAEBD0440ABA1000008C0803FDA3B60697CE533BBFAE16E0B0087FF05F450
              000004418C3DA398EEBD75573FDB6D0188E7A29F733FFC847678A01551000004
              42CCA5854C69DEAE7EB4DB0290C8C66E33565EA79D1D6845140000012916D2A5
              C4AE7EB0CB02306F9EF1EE9E1C7DD20DF7D34E0EB4220A0080208831EB4E5E51
              3AC86DD7FD9D7FB6CB02306DC1C4A8E7F9BDDAC18156450100109436DF4CB879
              7669F5CED7EFB200C4739173ACB1DFD60E0DB42A0A0080C0887D7B21D3FBBD9D
              AFDE650148E4A2D58DFF39DA9981564501001014B7A1FF664FBAF49E5D5CFF7C
              897C74851133493B34D0AA2800008263EF2DA47B4F78DEB53B5F3175D9115D5D
              4F8D79DA0D3BB42303AD8A02002040FDEE3965BF9D9F539E5700120B23AF30BE
              FD95765AA09551000004C95AFF849ED4AA7B9F73DDCE374AE462E71923DFD40E
              0BB4320A008020596BDED9932AFDCF73AEDBF946895CB4BAF13F4F3B2CD0CA28
              0000826445BEDE93295FF09CEB76BE912B00F7B8B3576A87055A19050040C0EE
              2CA44BAFDEF18AE7148039DD73DAD677AE5EEF86A3B59302AD8C02002060EB4F
              5A511AB7E31E019F5300A62F98748CEF551ED04E09B43A0A0080C049FB9185CC
              8A87B75F7C4E0148666369B192D5CE08B43A0A0080A08935671653A59BB75F7E
              6E01C8453F21C67C4E3B24D0EA2800000267CDC58554E98BFFBAB883442E7A83
              3B7B937646A0D5510000044FBE574897DFBEFDD2730A403C17BDD75D31593B22
              D0EA2800000227E6D7854CE99FDFF2FB67019837CF78774F8E6E307C03005047
              010050031B0AA9D27E6ECB2FD50BFF2C00D3164E3CD2F3FD3F68A70340010050
              1BB6E2BDA4E7AC958F6C196FBF725A3E7A862766A97638001400003522E6D442
              A6747B75F8CF0290CC46DF23D67C433B1B000A0080DA1023E716D3E5EF54C7FF
              2A00F9E85522E643DAE100500000D48A5C5148973F561DFDB30024B2919CB136
              A51D0D00050040ADD8FF2BA47BE76C196DBF2A918B955C338868470340010050
              1B62CC8A62BA747C756CB75D6313F92D5F01DC473B1C000A00809A595F4897F6
              AB0EB6148064F7F18748E7C063DAA9006C450100502B5DD27E402EB362DD9602
              105F34F1045BF1976B8702B015050040CD5833A9902AADDC5A0016C652D6979C
              7626005B510000D4CAF6A3026E2D00F9D8F956E46AED5000B6A20000A8155700
              DEE30AC037B77E06201FBB52442ED60E05602B0A00805A711BFECB7BD2A54F6C
              2D00B9C88FC4D8376A8702B015050040CD88B9A19029BD654B0148E4A23F7567
              A76A676A31F7BBFF85EAE72E6EF7FDB6BF8EEAD8F4E8A299BF7B5C3B1400D4D2
              CC45C71CDC37D075B8E7555E246EBB638D4DBBAB8FD5CED55AE4B642BA7CFAB6
              02C04E80EA476E339EF9586156F9D7DA4900A011C4B391575A6BAF30BC10AD97
              DE42BA3471FB3B006BDDD9C1DA8942EE09DF376F5B3ABBB4583B080034A2443E
              32CB88BDDE0D0FD4CE12728FB90270989DBA6C6A7BD7538FF79B1D760B8C6059
              31BF17CF9B5948AD7C403B0B0034B264367A9458B3D00D27686709317FD3FE07
              8FB267E48F7D619B74FC553B4D78C9C3B6BFF3953D73EF5DAB9D04009AC1690B
              8E3BA8C36BBFC70D8FD2CE125603D61C6E93F909C78B78BFD50E1352EB3D634F
              5992EEEDD50E0200CD24998B4C1063EF72C3FDB4B3849235936C321B9D26D614
              B5B384911839BF982E5FA39D03009A512217BDD09D7D553B47288977BA4DE6A2
              FF4F8CF95FED2CA163CD1FC6F6C9F8F973CBFDDA5100A0194DB96E4AC72187F5
              AD72C3A3B5B3848D88FCA74D6663EF122BD76987091B6BCD3B7B52A5FFD1CE01
              00CD2C9E8B9C638DFDB6768ED011738E4DE6629788912BB4B384CCE6017FF3E1
              B7CDBEFF1FDA4100A0996DFB40E0A36ED8AE9D254CAC311FB1896CF47237FA98
              76985011FBD342A6F734ED18001006895C74993B9BAA9D234CC498FFAA7E06E0
              5A3778B7769890B9AA902E7D443B04008441221BF992B1F683DA39C2C55E6313
              F9D88F8DC81BB4A3848988F9703153FA92760E0008837836FA216BCD55DA3942
              E64736918B56F7B834533B4998586BDFDC93EAFD91760E000883643EF62611B9
              413B47A888E45D0188DCEA3659FCBD3A48D6CE2DA47AE76BC700803048E46373
              DC06AB5B3B47C82CADBE0370A71BBC4A3B49A8500000203014805A903B6C3C17
              BDD71A33593B4AA850000020301480E0B9EDFEF2EA9F001E70C363B4C3840A05
              0000024301089E18B3BAFA27803FBBF14BB4C3840A050000024301A80579D826
              F2D1C75C1538443B4AA850000020301480E05963D654DF0178C28D0FD00E132A
              140000080C05A026FE512D004FBBC158ED24A142010080C050008227C6ACAB16
              8067DC781FED30A142010080C050006A6243B5006C728351DA49428502000081
              A100D4C4C66A0118301C663158140000080C05A02606AA05C0375B3E1088C050
              0000203014809AF02900B540010080C050006AC2E74F00B540010080C050006A
              62800F01D602050000024301A8898D7C0DB01628000010180A404D6C604740B5
              40010080C0500082B77D4740EC0A3868140000080C05A026FEC1C1806A810200
              0081A100046FFBC180381C70D028000010180A402D540F079C8BDEEF46C76A47
              09150A00000486025013AB6C3C17BDD71A33593B49A850000020301480E0B9ED
              FEF2EA3B0077BAF1ABB4C3840A050000024301A805B9C31580C8AD6E8B759A76
              9450A100004060280035B1B4FA0EC0423798A99D244CACB56FEE49F5FE483B07
              008441321F7B9388DCA09D235444F2D635AB1FBBC11BB4B3848988F9703153FA
              92760E000883642EFA6131E68BDA3942E647369E8F7EC38A798F769230B1D67C
              A92755FAB0760E000883442EF265F7CCFA01ED1C2173B54D64A3971B6B3EA69D
              24649615D2A5D7698700803048E4A3B71B31AFD5CE112662CC7FD9783672B1B5
              F64AED302153E968EB3F7CD1CCDF3DAE1D04009AD9690B8E3BA8C36B7FD470D8
              FA4055FF546D93D9D8BBC4CA75DA614247CC39854CE9BBDA3100A09925F39173
              45ECB7B473848EDB46D978363AD75A73A3769610FAA3EDDC34BE67FA837DDA41
              00A019CDE98E74AEEFB4ABDCF028ED2CA163CD59765A3E7A862766A9769630B2
              622EECC994AED6CE0100CD28998D5C24D67E453B4718594F4EB3D3B391C9BEB5
              F76A8709A90DAE659D524895566A07018066125F1099643D5BDD53EDBEDA59C2
              C8F7BD988DDF34FE05B6ADED6FDA61C24B1EB6FD9DAFEC997BEF5AED2400D00C
              92DDC71F229D03BF76C3976A6709AB016B0EB753974D6DEF7AEAF1EADFA93DED
              406165C5FCBED26E672D9DD97BBF7616006864F17CE4682376A13566BC769610
              AB8CED1F3FCA5647895CB4FAEAF460ED4421F7A478F6EDC559BD79ED2000D088
              DCB628E3CEAADF9E3A403B4B98B90DFF9A9E74E9F06D052056324622DAA15AC4
              ED9EF13FBA24BDEA1EED2000D008920B279E24E25FC1CE7EEAA6B7902E4DDCFE
              0EC04FDDD9A9DA895A8BFCCE5A2F27627EE619F397B6B6BEBFB3E32000613773
              D13107572AA35EE01BF312F73C38D58A498B352FD3CED5626E7505E08CED05A0
              7A94A537692702B095EDDCD415967D4824971C3D4AFABB3669E700F04F3F7405
              E0AD5B0A403C17B9C21A7B897622005B510000D44AF53800C574E993DB0BC0FB
              5C01F8BA7628005B510000D48E7D7721DD7BDD960290CC45668AB10BB52301D8
              8A0200A076EC0C5700966C2900EC0D10682C140000B552DD0BE0D2D92B4B5B0A
              C0B6C32DF20974A041500000D4CAE6FE51E36E9DBBFC29BBFD8A442EFA8C3BDB
              473B18000A00809A79BA902EED5F1DFCB3002473D15E3126AA9D0C00050040AD
              D87B0BE9DE13B68CB65F15CF45B3EE425A3B1A000A00809A995F4897E656073B
              FE09E08BEEECC3DAC900500000D48898CF1732A58F5787FF7A07201F7DB71573
              AD7636001400003522E61C5700AA075CDAF14F00B1D3AD915BB4B301A00000A8
              0DEBDBA93DB37B7FB665BCFDCA4476F211C66EFEA3763800140000B5D1DED6F6
              E2C533EFFB6B75FCCF02306F9EF1EE9E1C5D6FF82A20A08E0200A006361452A5
              FDDC965FAA17EC8E3F49E462BF35468ED74E08B43A0A00801AF855215D3A71FB
              859D0A008705061A01050040D0DC06FFFA9E74E91D3B5CFE97782EFA7177C57F
              6987045A1D050040D0DCF6FD23AE005CB5C3E57F49666369B192D50E09B43A0A
              0080E06D3D0AE03F2FEDF8A333168D7F595BA5ED77DA1181564701001034AF52
              3962C959ABFFB4FDF2730AC09CEE396DEB3B573F6DF82600A08A02002060EB0B
              A9D2FEDBBF01506577BE452217BDCB9D9DA49D146865140000C1923B0AE9F26B
              76BCE67905209E8F7EC38A798F7654A09551000004EC6B8574E9FD3B5EF1BC02
              90CC47CE15B1DFD24E0AB4320A008040897D7B21D3FBBD1DAF7A5E0198968D4D
              F1ACFC463B2BD0CA2800008224BE4C2ECE2EDFB7E375CF7F0760EB83B5BA4BE0
              0EEDC040ABA200000850FFD87E193B7F6EB97FC72BEDAE6E99C84757183193B4
              1303AD8A02002038F6DE42BAF784E75DBBAB9B26F291EB8CD8776947065A1505
              004050C49A6B8BA9D27B77BE7E970520998FBE43C47C573B34D0AA2800000263
              E5EC42AAFCFDE75DBDABDB26739109626C593B33D0AA2800000263BDE30AA995
              0F3CEFEA5DDED86DFDE3F9E813EE87E3B47303AD88020020204F1452A58377DC
              03E0767677F74866A34BC59A33B49303AD880200200862A5A7982A4FDFD5CF76
              5B0012D9D865C6CA27B5C303AD8802002010D6CC2BA44A97EEFA47BB91C845E2
              EEC705EDEC402BA200000882F5E4B49E59E59FEEF267BBBBD3D4EEC898AE4EFB
              A41BB66B2F00D06A2800000230D0D1366ADCA299CB9FDDD50FED9EEE99C8467F
              E56EF10AED25005A0D050040007E5948974ED9DD0FF7580092F9E85522E643DA
              4B00B41A0A008091932B0AE9F2C776F7D33DBF03908FCC3262F3DA8B00B41A0A
              008091B262A7F7647A7B76FBF33DDD79C6E2D80195CDF2B81B7ADA0B02B4120A
              008011AAB8E79103DDF3C8D3BBBB81DDDB1412D9E87277AB13F6763B00C1A100
              00180931F69E62BAF7A43DDD66AF05209E8B5C618DBD447B6180564201003012
              D6CA653DA9F2A7F7789BBD4D24919D789AB1FEADDA0B03B4120A00809110E3BD
              A6985E79C79E6EB3D702B0EDC1FB0F37DC577B8180564101003002EBD7AE1975
              D0F2F3960FECE9467B2D0055895CB4BA47C0B8F61201AD82020060041615D2A5
              597BBBD1A00A403C1BFD90B5E62AED25025A050500C070593117F6644A57EFF5
              768399587CE18488F5BD92F64201AD82020060B82A6D95636E99B9FAF77BBBDD
              A00A405522177DD09D1DA5BD60402BA0000018A6FB0BE9D2F8C1DC702805E06B
              EEEC02ED25035A010500C0305DE50AC0470673C341178064363A4DAC296A2F19
              D00A2800008645CCA9854CE9F6C1DC74D005604E77A4737DA7ADEE1678ACF6F2
              0161470100300C4FAD5D33EA90BD7DFD6FBB411780AA44367A93BBC76CED2504
              C28E020060A8C4981B8BE9D2EB077BFB211580642EF25631F6FBDA0B09841D05
              00C050B9EDF39B8AE9DE1F0FF6F6432A00E9ECE4719BECE6356ED8A9BDA04098
              5100000C519F7BDE38744F47FFDBD9900A40157B05046A8F0200608806B5F7BF
              1D0DB90024F3917345ECB7B4971408330A008021B1727621551ED29FE8875C00
              662E3AE6E0814AE7DFDDB05D7B7981B0A20000188201E997C38B73CB4F0CE54E
              432E0055895C74993B9BAABDC440585100000C41B1902E25867AA7611680C87B
              DD5DAFD15E6220AC280000064B8C9C5B4C97BF33D4FB0DAB006CFB33C0DFDCB0
              437BC18130A2000018A47EE997170CF5EDFFAA611580AA442E7AB33B9BAEBDE4
              40185100000C52B6902E0D6B077DC32E00C97CEC4D227283F692036144010030
              28D6CE2DA47AE70FEBAEC39DE7B4E2C47DBD8DFEA36E38467BF981B0A1000018
              84F563FBC71E367FEE5D1B8773E7611780AA443EF66323F206ED3500840D0500
              C05E89FD7E21D37BF670EF3EA20290CCC692626589F63A00C286020060AFC43B
              BD905979DB70EF3EA202306F9EF1EE9E1C7DD80D5FA2BD1E8030A10000D88B3F
              9DB4A2F4EF6E3BEC0F7702232A0055896CF47237958F69AF09204C280000F648
              CCA5854C69DE482631E20270C6A2F12F6BABB43D10C4B4006C450100B00762C5
              BCAC27537A6824130964A39DC847EF706DE4D5DA6B04080B0A0080DD12FBD342
              A6F7B4914E26900290CC47DF2162BEABBD4E80B0A00000D81DB7BD7D6B3153FA
              E148A713480198B968CA3E0395BE47DCF000ED150384010500C0AE8831EB3ADB
              46BD68D1CCE5CF8E745A81FDDD3E998D5C2DD69EAFBB6A8070A00000D835F94A
              215DFE6010530AAC00CC58101D5FF14C39C86902AD8A02006057AC91484FBABC
              2A986905289E8BFECC4DF0353AAB05080F0A0080E709E8C37FDB055A0012D9C8
              1B8CB53FAEFF5A01C2850200606722E6FF1533A5EEA0A617680198D31DE9DCD0
              69FF2CC61C56FF550384070500C04E1E1DDB2F2F9D3FB7DC1FD40403FF7B7D22
              1B9DE7A6FA99FAAE17205C2800007624623F5DCCF45E16E434032F00D3164C3C
              D4F3FC3FB96157DDD60C10321400003BE81BB0E6A5B7A54A6B829C684D3EB11F
              CF45BFEF26FCD6FAAC17207C280000FEC99AEF1652A573829F6C0D24F3138E17
              F17E5BFBB50284130500C076E2CBE4E2ECF27D414FB766DFD9E72B81C0F05100
              006C25B715D2E5D36B31E59A1580643696162BD9DAAD1420BC280000AAC49A33
              8BA9D2CDB59876EDF6DA27C626F2D1921B4DA8D93C8090A20000707A0BA9D2A4
              EAEEFF6A31F19AEEB697A30402C3430100E036FB6F29644A37D46AF2352D0053
              AE9BD271E8617D0FBAEAF26FB59C0F10361400A0E5FD65ED9A51472D3F6FF940
              AD6650F303F724F2B10F1A912FD57A3E4098500080D626D65E504CF57EBD96F3
              A8790198569CB8AFB771CB8E810EAAF5BC80B0A000002DED1FFE68EFA54BE32B
              9FA9E54CEA72E85E760F0C0C0D0500685D62CC278AE9D2E5B59E4F5D0AC0E9DD
              53F66FEFECFBA31B1E508FF901CD8E0200B4AC273AEDC0110B530FACAFF58CEA
              5200AAE2B9C8A5D6D84FD76B7E4033A30000ADC96D943FD9932EFD579DE6551F
              D57701DA3AFB1E76331C57AF7902CD8A0200B41E3166DD68693F329759B1AE1E
              F3AB5B01A84A646397192B9FACE73C81664401005A90954F1552E5CFD56D76F5
              5CB67877E440DB69FFE086FBD773BE40B3A100002DE709F7B83FD23DEE9FAED7
              0CEB5A00AAE2D9D8A7AC95CFD67BBE4033A10000AD45442E2966CA5FA8E73CEB
              5E00AAFB0568DBE83F24C61C56EF7903CD820200B494BF77B48D3A7AD1CCE5CF
              D673A6752F0055895CF44277F6558D7903CD800200B40EB1E63DC554E99BF59E
              AF4A0198D31DE95C3FCAAE3662FE5D63FE40A3A300002DE38F63FBE5B8F973CB
              FDF59EB14A01A84AE4236F73B5E77B5AF3071A190500680DD6DA37F7A47A7FA4
              326FAD859E37CF78F74C8EFE4A8C99A2950168541400A015D87B4F5AD1FB72B7
              3DF455E6AEB9E8C97CE414117B87760EA0D1500080F013E3BDA6985E7987D6FC
              D537BCC95CF4FFC498B3B473008D840200849CB53F29A47ADFA81A417B1D4C5B
              38F148CFF757B961977616A05150008050DBE8552AE3979CB5FA4F9A21D40B40
              55221BBDDC25F998760EA0515000801013736921539AA71DA3210AC0D4EEC898
              AE4EEF01B7565EA89D056804140020B41EF1477BC72D8DAF7C463B484314802A
              BE1608FC0B0500082991371632E59F68C7A86A980260C4D8443E7AB71BBD523B
              0AA08D020084D25D8554E914B7E515ED20558D53009CC482D8C9C6933B1B2D17
              506F140020747C1139B99829FF4A3BC8760DB7A14DE4633F36226FD0CE0168A2
              00006123DF2BA4CB6FD74EB1A3862B00D372D19778C6DCEF86FB686701B45000
              8050595FB103C7DD927AE06FDA4176D47005A02A9E8D7EC85A7395760E400B05
              00080F2BE6C29E4CE96AED1CCFCBA51D6057E674CF695BDFB9BAFA81C0976B67
              0134500080701063EFD9AFFFB853E6CF9D5FD1CEB2B3862C0055897C74A25B73
              BF71C30EED2C40BD51008050E817CF3FA1386B55593BC8AE346C01A8620F8168
              55140020041A648F7FBBD3D005A0FAC4E1F777DDEB428ED7CE02D4130500687A
              0F6CDA7FC3E4DB4F7DB8617FF71BBA00542517C45E2B9E2C6B86AC4050280040
              53F38D2FAF2DCC2EFF423BC89E34C54635918F5C67C4BE4B3B07502F1400A099
              D96B0AE9DEF3B553EC35A57680C1704F20FBB92790EA21835FA49D05A8070A00
              D0ACECDFBAA42D92CBAC58A79D64AF49B5030CD6B405D1333DCF2CD2CE01D403
              0500684EE2D97471566F5E3BC760344D01A84A64A337B9C4B3B57300B5460100
              9A8F187363315D7ABD768EC16AAA0230FDE6C8E1FE80BDCF0D0FD5CE02D41205
              00683A8FFABE3769E9EC958F690719ACA62A0055C96C2C29566E6EC6ECC06051
              0080A622BE6F662D9D5D5AAC1D64289A72231ACF47BF61C5BC473B07502B1400
              A0A97CAD902EBD5F3BC45035650198BAEC88AEAEA7C6548FA91CD3CE02D40205
              00681AABC6F68F7DF9FCB9776DD40E32544D5900AAA62D9818F53CFFD76ED8A5
              9D05081A0500680A7DE2CB89C5D9E5FBB4830C47D31680AA642EFA6131E68BDA
              3980A0510080C627D65C544C95BEAA9D63B89ABA00CC9B67BCBB27478B6E78BA
              761620481400A0E12D2DA44A09B71515ED20C3D5D405A0EA8CFCB12F6C938E95
              6E7890761620281400A0A13D2E95CAC4E259ABFFAE1D64249ABE005425B3B1B4
              58C96AE700824201001A98955421555EA81D63C48BA11D2028895CF4DBEEEC1C
              ED1C4010280040C3FA46215D7A9F76882084A6004C2B4EDCB76DA37FB71813D5
              CE028C1405006840D6DC37B66FECC9CDF895BF5D2F4E88C4F391A38DD85FBB85
              1AA79D0518090A00D0709EB4625ED193293DA41D2428A12A0055DB8E1A583D12
              93A79D05182E0A00D0507CF7A89C5948F72ED10E12A4D01580AA44367699B1F2
              49ED1CC070510080C621623F5DCCF45EA69D2368A12C00D5FD03DC757C64B115
              9BD4CE020CC780BFF9E0DB66DFFF0FED1C4148761F7F88740E34CD11D2801D59
              6B169F786F29E5B62BBE7696C0974D3B40ADCC581C3BA0B259AABB0A3E4A3B0B
              30549EB11397A47B7BB5730421BE2032C97A7685760E60E8E4E101BFF2F2B094
              F19D85B6005425F3138E17F1EE74C3D1DA5980A1102BC962AA5CD0CE11846D87
              F00ED5DF4ED1129E755BC8930BA9D24AED20B512EA025095CCC7DE24223768E7
              0086428C5C594C973FAA9D2308895CB47ABC8E0F6BE70086C4CAD98554F9FBDA
              316ABA88DA01EAC13D015DE3CEDEAB9D03182C2BE6F73D99D231DA398290C845
              1E704B148A65416B708FBFAFBAC7DF45DA396ABE9CDA01EA614E77A4737DA75D
              E686AFD2CE020C96889C58CC947FA59D6324920B279E24BE7F97760E60F0E48E
              B56BBA4E5B7EDEF201ED24B5D61205A06AE6A2630E1EA874569F888ED6CE020C
              8A353F2BA44A53B5638C44221BBBCDBD9C7A9D760E6090FEE8FBDE494B67AF6C
              896FADB44C01A89AB1203ABEE299EA87020FD0CE020C4A131F7424918B66DCD9
              02ED1CC020FDC3F3DB5EB564F67DBFD30E522F2D5500AAA6E763AFF14596BAE1
              28ED2CC0203C5969AB9C78CBCCD5BFD70E3214D3174C3AC6F72A771BCA369A43
              BF58491453E565DA41EAA9E50A4055221B7DB35BF21FB4EAF2A3B98831ABBDFE
              8ED7F6CCBD77AD7696C198B660E2A19EE7FFDC0D8FD5CE020C821891371532E5
              9F6807A9B796DD002673B14FBBFFF54BB5730083F488B479A9E2CC95BFD50EB2
              27897C74A27B3ACDB9E191DA598041B1E6E38554E9F3DA317416BD5589B1897C
              E47FDC2A385B3B0A30481BDCE91363FBE59BF3E796FBB5C3ECA8FA4D9B0D1DE6
              BD62EDE7DCC57DB5F30083F49D42BA74AE76082DAD5B009C29D74DE938E4B04D
              3D6E359CA69D0518346BFE20229FDFEC57B2DABB28AD7EBB66B3DF9111B11F33
              BCEA477359BA76CDA8335BE1EB7EBBD3D205A02A9D9D3C6E93ADFCC218896867
              0186A8E24E77B857DD2BDC03F92FEEB4468CA9E93B036E1E9DBE2F871BCFBED8
              8A4C7657FD873BB569AF0860887A6DE7A657F74C7FF069ED209A5ABE00549DB9
              68D28B36572AF7B8E18BB4B300006AEAEF9BDBE4A45B6796FFAC1D441B05609B
              EA81837CF17EEA56C838ED2C00809A78C26DF54E0DF3017E868202B083E9B909
              27FAC6BBC50DC76A67010004EA196B25DE932ADFA91DA45150007692CC474E11
              B145C3279901202C361A31D30B99D2EDDA411A0905601792D9E834B1A6BAFB55
              F6160800CDADDF3D9FCF2EA64A376B0769341480DDD8B61FF36E776AD7CE0200
              18968A8879633153EAD60ED28828007B10CF46DF62ADF99E1B7ADA59000043E2
              5B6BDFDA93EAFD917690464501D88B643EFA0ED720BF63585700D02C44AC796F
              3155FAA6769046C6466D10E2F9E8FBAD98FFD6CE010018046B2E2EA44A5FD48E
              D1E828008394C846E7B9B5F519ED1C0080DD732FFD3F5DCCF45EA69DA3195000
              8620998B5D2246AED0CE0100783EF7FC7C65315DFEA8768E66410118A2783E76
              BE15F99A61DD0140A31063ED870BA9DE2F6B0769266CC48621998DBD4BAC5C6B
              F876000068734FC7E6FD3D99D2D5DA419A0D056098E2B9D81BAD91EF1BF61300
              005A2AC6CA3B0BA9F2F7B58334230AC0082473919962EC7CC31E0301A0DEFA45
              E48DC54CF926ED20CD8A023042C96C2C2956AABF80A3B5B300408B78D618995D
              48978BDA419A19052000D3F3B1D7F8228B0D471104805A7BC688972A6456DEA6
              1DA4D9510002323D1F7DB92FA6E0860769670180301263D6799E97EC99B5F26E
              ED2C61400108D0F46C64B26FED12377C817616000817FB376325594895566A27
              090B0A40C0CE5C34E9450395CA62B762276B6701803070CFA7A581369971EBCC
              F29FB5B3840905A00666E58F1DDB67DA6FB46293DA5900A0C9DDBAB97FD47FDE
              3A77F953DA41C28602502353974D6DEF7AEAF1AFBBE179DA5900A019B90DD4F5
              8FAD1975DEF2F3960F686709230A408D6D3B926075F794EC3510000647DCBFCF
              1632A579DA41C28C025007897C6C8E11F9811B766967018006D767AD7D674FAA
              F747DA41C28E025027D372D15779C6E4DDF060ED2C00D0A09EB0BE9DDD33BBF7
              67DA415A0105A08EE2F9C8D19E6F9788352FD3CE02000DC59A3FF89E9DB17466
              EFFDDA515A0505A0CEA62D9878A8E7F959377C95761600680C7287EDEF3CAB67
              EEBD6BB593B4120A8082EA3704463DB5F673D6D84BB4B300802A2BDF1ADB672E
              983FB7DCAF1DA5D55000146D3BA4F0B7DD701FED2C0050679B8CD8F71432BDDF
              D30ED2AA2800CAE20B22936C9B5D60C4FCBB761600A89307DDD6E72C76EBAB8B
              02D000924B8EDECFEFEFFABEFBCF486B6701801A5BD2D66EDF7CF399BD4F6A07
              697514804621C626F3B18BC5C8E5869D0601081F71CF6F5F387945F9E3F3E619
              5F3B0C28000D27918B4D778F931BDCF000ED2C001090A7ADD8B7F5647A73DA41
              F02F14800654DD5F807BB02C70C39876160018116BEEB3BE39AB27537A483B0A
              9E8B02D0A0A61527EE6B37CA57AC9173B5B300C0308858F3CDFDFAC67E68FEDC
              BB366A87C1F351001A5C321B4B8BDDF2554176210CA03958B3D66DFFCF29A4CA
              0BB5A360F728004DE0B47CF4B00E31FFE386D3B5B300C05EDC5AB1036FBB25F5
              C0DFB48360CF2800CD428C8D2F8C5E68C55CE92E8DD28E03003BD9648D9D77E2
              8ADE2FF229FFE640016832F1851322D6F77EEC8613B5B300C036AB3C91372DC9
              94576807C1E051009AD0D4654774753D35A6FA4EC00586FF43007AC458F97687
              D7F5814533973FAB1D0643C3C6A38925B3D16962CDF7DCF005DA5900B49CC77C
              DFBC73E9ECD262ED20181E0A4093DBF601C16BDD30A39D05406B10636E14DFBB
              70E9EC958F6967C1F051004222918FCD710FCB6BDC23F310ED2C0042EBEF6EAB
              717E21555AA01D042347010891198B6307542AFE1546ECBBB4B30008952D7FEB
              B71D7D1FE999FEE0D3DA61100C0A40086DDD7990B9C63D665FA89D0540731363
              567B56CEED4995EFD4CE8260510042EAF4EE29FBB777F67DD60DDFE74E6DDA79
              00349D0131F265AFB3EF33EE557F9F7618048F021072C9FC84E3C5F7AE73FFD3
              AFD0CE02A069DC259E7F6E71D6AAB27610D40E05A0054C5D36B57DD4BAC7DF6F
              ADB9D45DDC573B0F8086B5DE8AF9C489F795AE616F7EE14701682167E48F7D61
              9B745CE1866F36FCDF03F81771A7FFDBDC261FBE7566F9CFDA61501F6C045A50
              7241ECB5E2C9D56E18D3CE024099985FFBD65CB4345DFAA57614D41705A04555
              FF2C307ADD3FDE21562E77170FD2CE03A0EEFE6A8D7CBC2755FEA1DB12887618
              D41F05A0C54D5B30F150DBE6CFB362CE7517DBB5F300A8B98D62E48B9D6D5D57
              B2FFFED64601C01689FCC4638DF897B9E11CED2C006AC35AB358FCF60B0A9915
              0F6B67813E0A009E23B930F23ADFB75F72BF1893B5B300088898DF8AF52E2AA6
              57DEA11D058D830280E79937CF78F74C8EBC598C9DE72E1EA99D07C0B03D64AD
              FDCC89F7F6FE84AFF561671400ECD694EBA6741C7A68FFDBC5CA3CC3218781E6
              61CD5A2BF64BA673E37FB3173FEC0E05007B3573D1947D3657FA2F102397B88B
              0768E701B05B4F5863BFD0DED679351FF0C3DE50003068B3F2C78E1D90CEF752
              048086F3B47B5C5E3B5A3AAEC86556ACD30E83E64001C090ED50042E76170FD4
              CE03B4B0278C98ABBB4CFB7FB3E1C7505100306CC92547EFE7F78D7EBFB5F27E
              C3CE84807A7A5C8CF9CA283B70F5C2D403EBB5C3A03951003062D38A13F7B59B
              FC733C311F744F4AFFA69D0708B13F89355F912EEF3B4BE32B9FD10E83E64601
              4060B67C6BE0B04D6F10E35D6C8C44B4F30061E19EA84BEE31F5C5C7D674FD64
              F979CB07B4F3201C2800089E189B58189969C45EE42E9DAA1D07685A627F2A9E
              7CB938ABB484FDF523681400D4547C4164926D33EF754F646F7117476BE7019A
              40BF3BDDE89E9DAF2AA44A2BB5C320BC2800A88BD3F2D1C33A7CF31E6BCDBBDD
              CB98C3B4F3000DE8516BECB515DF7E73E9EC958F698741F85100505773BA239D
              EB47792923F22E77F134C3EF205A9C7B002C3746BEC6DFF7516F3CF942CDF405
              938EA9789BDFE15EF59C63F81A215ACB53C6CA8D7EA5ED6AF76ABFA41D06AD89
              0200755B7735BCE93FC5DA771831AF31FC5E229CAA1FE2BB5DC45CBFDFC0D8FF
              9B3FF7AE8DDA81D0DA78A2454399968BBEA4CDD8378A91F30C47224438FCD5FD
              3EDFE089FD764FA6F4907618603B0A001A52F590C4BF3C3E7A9A27A6FAED818C
              3B8DD1CE040CC17AF7723F6BC5FBC149F7AD5CC6A178D1882800687853971DD1
              35FAA97DCF10B3E5AB842977EAD4CE04EC429FB5E6162332BF32BAED26F6D487
              46470140538977470EF43ABCFF142B73DCC5A9EED4AE9D092D6DC08AB9DDBDDA
              BFB1ADC32EB8F9CCDE27B5030183450140D39AB1387680BFD99F69AC9D2362CE
              70578DD2CE8496D0E74E7788358BA5E2FD84EFECA3595100100AA7774FD9BFBD
              A3CF950133CB5D8CBBD37EDA99102A4FB9DFADA288CD7B9D1B17F74C7FF069ED
              40C0485100103A73BAE7B4AD6F5F75B278E64C6BEC4C77D504ED4C6842D6FCC1
              18B9D58A593CA6DF14E7CF2DF76B470282440140E86DD9E1505B2569B7FE99E0
              B5866F1460D736B8D332F77B72CBE6F64AE19699AB7FAF1D08A8250A005A4A75
              57C41BDABD937D4FCE70BFFCD54230C59DDAB4734145458CFD4D7583EF79E696
              358F76DEC5AE78D14A2800686953BB236346757A27599157BB47C329EEAAFF30
              7C9830AC36BB27BCFBC4983B8DB5BF686B33B7F2A97DB4320A00B08369C589FB
              DA8D72F2B6427092DB589CE81E24E3B47361589E142B775B63EF31BEF78B8EF6
              8EBB16CD5CFEAC7628A0515000803D11636764A3C755AC3DD15A39D15D3CD15D
              19753FE9D08E86E7E8774F67656BE49EEA46DFF7BC7B969ED9FB807B8613ED60
              40A3A20000433475D9D4F651EB1F3BD6F3ED145708AA9F21A87ECBE004773A50
              3B5B8B58EF9EB87EE7B6ECABC49AE5B622CB371DF0CC6F6E3FF5E14DDAC18066
              420100027246FED8177AD239C15889B8179E138CD888BB7AA23B8DD5CED6A4AA
              3BDCA91E3CA7EC5EC7AF329E2D8BADAC3AF9B7AB56B36F7D60E42800402D89B1
              D3F2D1177B628E122B47BB6B8EB6C63B4A8CB8737394A11C3CED9E86AA1B7977
              F21F74A5E9C1EAD8FADE833DB357FE95B7F081DAA100008AD2D9C9E3FA6DE525
              9B7D79699B352F718FC817BB2DDE4B5C7378A135F630779343DCE543DCB9A79D
              75887CF7E4B2D69DAF75F91F75E77F7797FFE2AEFC8B1BFF452ADE9FF6B1DE23
              B9CC8A75DA4181564501001A5CF5D0C8BF7A45E45033E01D229E7F88F1CD81BE
              31E33C63C755CF5D5118E70A43F59B0AFB98EA3B0AD6745931A3DD86775F37EE
              74AFA1F737CF2D105DEE347AA7D96C74A71DFF86EEBBFB3EE5EEDBEF9E249E11
              23CFBAA78BEA5BF2EBDDA93A5EE7AE5BE726BA4EC43CB965DC669E74AFDCD7F6
              5979EC3FEE2DADE56D7AA0B1FD7F286A94BF1315AA400000000049454E44AE42
              6082}
            Stretch = True
            OnClick = imgAddPersonClick
          end
        end
      end
      object listConnectPersons: TListBox
        AlignWithMargins = True
        Left = 0
        Top = 356
        Width = 956
        Height = 35
        Margins.Left = 0
        Margins.Right = 0
        Style = lbOwnerDrawVariable
        Align = alTop
        BorderStyle = bsNone
        Color = 16316664
        ItemHeight = 35
        TabOrder = 2
        Visible = False
        OnClick = listConnectPersonsClick
        OnDrawItem = listConnectPersonsDrawItem
      end
    end
    object pnlRegisterPhysical: TPanel
      AlignWithMargins = True
      Left = 20
      Top = 29
      Width = 956
      Height = 73
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alTop
      BevelOuter = bvNone
      Color = 16316664
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 16316664
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 1
      Visible = False
      ExplicitWidth = 935
      object Shape8: TShape
        Left = 0
        Top = 36
        Width = 956
        Height = 1
        Align = alTop
        Pen.Color = 14474460
        ExplicitLeft = 1
        ExplicitWidth = 0
      end
      object Shape16: TShape
        Left = 0
        Top = 0
        Width = 956
        Height = 1
        Align = alTop
        Pen.Color = 14474460
        ExplicitWidth = 1162
      end
      object Shape25: TShape
        Left = 0
        Top = 72
        Width = 956
        Height = 1
        Align = alTop
        Pen.Color = 14474460
        ExplicitTop = 200
        ExplicitWidth = 929
      end
      object pnlBodyNamePhysical: TPanel
        Left = 0
        Top = 1
        Width = 956
        Height = 35
        Align = alTop
        BevelOuter = bvNone
        Color = 16316664
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 16316664
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        ExplicitWidth = 935
        object pnlEdtNamePhysical: TPanel
          Left = 150
          Top = 0
          Width = 806
          Height = 35
          Align = alClient
          BevelOuter = bvNone
          Color = 16316664
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 16316664
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          Padding.Left = 20
          ParentBackground = False
          ParentFont = False
          TabOrder = 0
          ExplicitWidth = 785
          object Shape29: TShape
            Left = 805
            Top = 0
            Width = 1
            Height = 35
            Align = alRight
            Pen.Color = 14474460
            ExplicitLeft = 31
            ExplicitHeight = 33
          end
          object edtNamePhysical: TEdit
            AlignWithMargins = True
            Left = 20
            Top = 7
            Width = 785
            Height = 28
            Margins.Left = 0
            Margins.Top = 7
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alClient
            AutoSize = False
            BorderStyle = bsNone
            Color = 16316664
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 6316128
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            ExplicitWidth = 764
          end
        end
        object pnlLabNamePhysical: TPanel
          Left = 0
          Top = 0
          Width = 150
          Height = 35
          Align = alLeft
          BevelOuter = bvNone
          Color = 16316664
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 16316664
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentBackground = False
          ParentFont = False
          TabOrder = 1
          object Shape30: TShape
            Left = 149
            Top = 0
            Width = 1
            Height = 35
            Align = alRight
            Pen.Color = 14474460
            ExplicitLeft = 31
            ExplicitHeight = 33
          end
          object LabNamePhysical: TLabel
            AlignWithMargins = True
            Left = 21
            Top = 3
            Width = 125
            Height = 29
            Margins.Left = 20
            Align = alClient
            AutoSize = False
            Caption = 'Nome:'
            Color = 12966379
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = True
            Layout = tlCenter
            ExplicitLeft = -3
            ExplicitTop = 2
            ExplicitWidth = 116
            ExplicitHeight = 27
          end
          object Shape31: TShape
            Left = 0
            Top = 0
            Width = 1
            Height = 35
            Align = alLeft
            Pen.Color = 14474460
            ExplicitLeft = 31
            ExplicitHeight = 33
          end
        end
      end
      object pnlBodyCpfPhysical: TPanel
        Left = 0
        Top = 37
        Width = 956
        Height = 35
        Align = alTop
        BevelOuter = bvNone
        Color = 6316128
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 16316664
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 1
        ExplicitWidth = 935
        object pnlLabCPFPhysical: TPanel
          Left = 0
          Top = 0
          Width = 150
          Height = 35
          Align = alLeft
          BevelOuter = bvNone
          Color = 16316664
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 16316664
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentBackground = False
          ParentFont = False
          TabOrder = 0
          object Shape32: TShape
            Left = 149
            Top = 0
            Width = 1
            Height = 35
            Align = alRight
            Pen.Color = 14474460
            ExplicitLeft = 31
            ExplicitHeight = 33
          end
          object Shape33: TShape
            Left = 0
            Top = 0
            Width = 1
            Height = 35
            Align = alLeft
            Pen.Color = 14474460
            ExplicitLeft = 31
            ExplicitHeight = 33
          end
          object LabCPFPhysical: TLabel
            AlignWithMargins = True
            Left = 21
            Top = 3
            Width = 125
            Height = 29
            Margins.Left = 20
            Align = alClient
            AutoSize = False
            Caption = 'CPF:'
            Color = 12966379
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = True
            Layout = tlCenter
            ExplicitLeft = 25
            ExplicitTop = 6
          end
        end
        object pnEdtCPFPhysical: TPanel
          Left = 150
          Top = 0
          Width = 806
          Height = 35
          Align = alClient
          BevelOuter = bvNone
          Color = 16316664
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 16316664
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          Padding.Left = 20
          ParentBackground = False
          ParentFont = False
          TabOrder = 1
          ExplicitWidth = 785
          object Shape34: TShape
            Left = 805
            Top = 0
            Width = 1
            Height = 35
            Align = alRight
            Pen.Color = 14474460
            ExplicitLeft = 31
            ExplicitHeight = 33
          end
          object edtCPFPhysical: TEdit
            AlignWithMargins = True
            Left = 20
            Top = 7
            Width = 785
            Height = 28
            Margins.Left = 0
            Margins.Top = 7
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alClient
            AutoSize = False
            BorderStyle = bsNone
            Color = 16316664
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 6316128
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            ExplicitWidth = 764
          end
        end
      end
    end
  end
end
