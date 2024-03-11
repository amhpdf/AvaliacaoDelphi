object fPrincipal: TfPrincipal
  Left = 0
  Top = 0
  Caption = 'Cadastro de Pessoa'
  ClientHeight = 662
  ClientWidth = 937
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  OnShow = FormShow
  TextHeight = 15
  object pnlPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 937
    Height = 662
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 931
    ExplicitHeight = 653
    object rlrPrint: TRLReport
      Left = -16
      Top = 100
      Width = 992
      Height = 1403
      DataSource = dsPrint.dsPrint
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      Visible = False
      object RLBand1: TRLBand
        Left = 47
        Top = 47
        Width = 898
        Height = 55
        BandType = btHeader
        Transparent = False
        object trlTitulo: TRLLabel
          Left = 396
          Top = 10
          Width = 106
          Height = 35
          Align = faCenter
          Caption = 'rllTitulo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 35
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLBand3: TRLBand
        Left = 47
        Top = 180
        Width = 898
        Height = 29
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 0
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        object RLDBText1: TRLDBText
          Left = 25
          Top = 5
          Width = 47
          Height = 17
          DataField = 'NOME'
          DataSource = dsPrint.dsPrint
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText2: TRLDBText
          Left = 272
          Top = 5
          Width = 80
          Height = 17
          DataField = 'CPF_CNPJ'
          DataSource = dsPrint.dsPrint
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
      end
      object RLBand4: TRLBand
        Left = 47
        Top = 209
        Width = 898
        Height = 16
        BandType = btFooter
      end
      object RLBand2: TRLBand
        Left = 47
        Top = 102
        Width = 898
        Height = 43
        BandType = btTitle
      end
      object RLBand5: TRLBand
        Left = 47
        Top = 145
        Width = 898
        Height = 35
        BandType = btColumnHeader
        object trlCPF_CNPJ: TRLLabel
          Left = 272
          Top = 12
          Width = 80
          Height = 17
          Caption = 'CPF_CNPJ'
        end
        object RLLabel1: TRLLabel
          Left = 25
          Top = 12
          Width = 43
          Height = 17
          Caption = 'Nome'
        end
      end
    end
    object pgcPrincipal: TPageControl
      Left = 1
      Top = 74
      Width = 935
      Height = 587
      ActivePage = tsOperacao
      Align = alClient
      TabOrder = 0
      object tsOperacao: TTabSheet
        Caption = 'Opera'#231#245'es'
        object pnlGrid: TPanel
          Left = 0
          Top = 0
          Width = 927
          Height = 557
          Align = alClient
          TabOrder = 0
          ExplicitWidth = 921
          ExplicitHeight = 548
          object gbListagem: TGroupBox
            Left = 1
            Top = 1
            Width = 925
            Height = 232
            Align = alTop
            Caption = 'Listagem de Pessoas'
            TabOrder = 0
            ExplicitLeft = 3
            ExplicitTop = -5
            object grdPessoa: TDBGrid
              Left = 2
              Top = 17
              Width = 921
              Height = 213
              Align = alClient
              DataSource = dsPrint.dsCadastro
              ReadOnly = True
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -12
              TitleFont.Name = 'Segoe UI'
              TitleFont.Style = []
              OnCellClick = grdPessoaCellClick
            end
          end
          object gbDados: TGroupBox
            Left = 1
            Top = 233
            Width = 925
            Height = 323
            Align = alClient
            Caption = 'Dados'
            TabOrder = 1
            ExplicitWidth = 919
            ExplicitHeight = 314
            object lbNome: TLabel
              Left = 24
              Top = 24
              Width = 33
              Height = 15
              Caption = 'Nome'
              FocusControl = dbeNome
            end
            object lbCPFCNPJ: TLabel
              Left = 290
              Top = 24
              Width = 53
              Height = 15
              Caption = 'CPF/CNPJ'
              FocusControl = dbeCPFCNPJ
            end
            object lbTipo: TLabel
              Left = 426
              Top = 24
              Width = 23
              Height = 15
              Caption = 'Tipo'
            end
            object dbeNome: TDBEdit
              Left = 24
              Top = 45
              Width = 250
              Height = 23
              DataField = 'NOME'
              DataSource = dsPrint.dsCadastro
              TabOrder = 0
            end
            object dbeCPFCNPJ: TDBEdit
              Left = 290
              Top = 45
              Width = 122
              Height = 23
              DataField = 'CPF_CNPJ'
              DataSource = dsPrint.dsCadastro
              TabOrder = 1
            end
            object dbeTipo: TDBEdit
              Left = 426
              Top = 45
              Width = 122
              Height = 23
              DataField = 'TIPO'
              DataSource = dsPrint.dsCadastro
              ReadOnly = True
              TabOrder = 2
            end
            object gbDadosJuridica: TGroupBox
              Left = 2
              Top = 82
              Width = 921
              Height = 239
              Align = alBottom
              Caption = 'Dados Pessoa Jur'#237'dica'
              TabOrder = 3
              ExplicitTop = 73
              ExplicitWidth = 915
              object lbEndereco: TLabel
                Left = 335
                Top = 80
                Width = 49
                Height = 15
                Caption = 'Endere'#231'o'
                FocusControl = dbeEndereco
              end
              object lbCEP: TLabel
                Left = 22
                Top = 26
                Width = 21
                Height = 15
                Caption = 'CEP'
                FocusControl = dbeCep
              end
              object lbUF: TLabel
                Left = 190
                Top = 26
                Width = 14
                Height = 15
                Caption = 'UF'
                FocusControl = dbeUF
              end
              object lbCidade: TLabel
                Left = 238
                Top = 32
                Width = 37
                Height = 15
                Caption = 'Cidade'
                FocusControl = dbeCidade
              end
              object lbBairro: TLabel
                Left = 22
                Top = 80
                Width = 31
                Height = 15
                Caption = 'Bairro'
                FocusControl = dbeBairro
              end
              object lbEmail: TLabel
                Left = 22
                Top = 179
                Width = 34
                Height = 15
                Caption = 'E-mail'
                FocusControl = dbeEmail
              end
              object lbTelefone: TLabel
                Left = 22
                Top = 130
                Width = 44
                Height = 15
                Caption = 'Telefone'
                FocusControl = dbeTelefone
              end
              object lbCelular: TLabel
                Left = 279
                Top = 130
                Width = 37
                Height = 15
                Caption = 'Celular'
                FocusControl = dbeCelular
              end
              object dbeEndereco: TDBEdit
                Left = 335
                Top = 99
                Width = 323
                Height = 23
                DataField = 'ENDERECO'
                DataSource = dsPrint.dsCadastro
                TabOrder = 0
              end
              object dbeCep: TDBEdit
                Left = 22
                Top = 47
                Width = 154
                Height = 23
                DataField = 'CEP'
                DataSource = dsPrint.dsCadastro
                TabOrder = 1
              end
              object dbeUF: TDBEdit
                Left = 190
                Top = 47
                Width = 34
                Height = 23
                DataField = 'UF'
                DataSource = dsPrint.dsCadastro
                TabOrder = 2
              end
              object dbeCidade: TDBEdit
                Left = 238
                Top = 48
                Width = 214
                Height = 23
                DataField = 'CIDADE'
                DataSource = dsPrint.dsCadastro
                TabOrder = 3
              end
              object dbeBairro: TDBEdit
                Left = 22
                Top = 99
                Width = 300
                Height = 23
                DataField = 'BAIRRO'
                DataSource = dsPrint.dsCadastro
                TabOrder = 4
              end
              object dbeEmail: TDBEdit
                Left = 22
                Top = 200
                Width = 300
                Height = 23
                DataField = 'EMAIL'
                DataSource = dsPrint.dsCadastro
                TabOrder = 5
              end
              object dbeTelefone: TDBEdit
                Left = 22
                Top = 149
                Width = 244
                Height = 23
                DataField = 'TELEFONE'
                DataSource = dsPrint.dsCadastro
                TabOrder = 6
              end
              object dbeCelular: TDBEdit
                Left = 279
                Top = 149
                Width = 244
                Height = 23
                DataField = 'CELULAR'
                DataSource = dsPrint.dsCadastro
                TabOrder = 7
              end
            end
          end
        end
      end
      object tsVinculo: TTabSheet
        Caption = 'Vinculo'
        ImageIndex = 1
        object gbVinculo: TGroupBox
          Left = 0
          Top = 0
          Width = 927
          Height = 557
          Align = alClient
          Caption = 'Gerenciar V'#237'nculos'
          TabOrder = 0
          ExplicitLeft = 160
          ExplicitTop = 96
          ExplicitWidth = 185
          ExplicitHeight = 105
          object DBText1: TDBText
            Left = 26
            Top = 54
            Width = 72
            Height = 18
            DataField = 'NOME'
            DataSource = dsPrint.dsCadastro
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = 0
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object lblVinculo: TLabel
            Left = 26
            Top = 31
            Width = 51
            Height = 17
            Caption = 'Empresa'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = 18
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object DBGrid1: TDBGrid
            Left = 310
            Top = 98
            Width = 409
            Height = 249
            DataSource = dsPrint.dsVinculo
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'Segoe UI'
            TitleFont.Style = []
          end
          object btnAdicionarVinculo: TButton
            Left = 184
            Top = 125
            Width = 120
            Height = 54
            Caption = 'Vincular'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = 6
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            Style = bsCommandLink
            TabOrder = 1
            StyleElements = []
            OnClick = btnAdicionarVinculoClick
          end
          object DBLookupComboBox1: TDBLookupComboBox
            Left = 26
            Top = 142
            Width = 145
            Height = 23
            DataSource = dsPrint.dsCadastro
            KeyField = 'ID'
            ListField = 'NOME'
            ListSource = dsPrint.dsCombo
            TabOrder = 2
          end
        end
      end
    end
    object pnlOperacoes: TPanel
      Left = 1
      Top = 1
      Width = 935
      Height = 73
      Align = alTop
      TabOrder = 1
      ExplicitWidth = 929
      object btnIncluir: TButton
        Left = 1
        Top = 1
        Width = 187
        Height = 71
        Align = alLeft
        Caption = 'Incluir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -33
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Style = bsSplitButton
        TabOrder = 0
        StyleName = 'Windows'
        OnClick = btnIncluirClick
        OnContextPopup = btnIncluirContextPopup
        ExplicitLeft = -5
        ExplicitTop = -4
      end
      object btnCancelar: TButton
        Left = 188
        Top = 1
        Width = 187
        Height = 71
        Align = alLeft
        Caption = 'Cancelar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -33
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        StyleName = 'Windows'
        OnClick = btnCancelarClick
      end
      object btnEditar: TButton
        Left = 375
        Top = 1
        Width = 187
        Height = 71
        Align = alLeft
        Caption = 'Editar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -33
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        StyleName = 'Windows'
        OnClick = btnEditarClick
      end
      object btnGravar: TButton
        Left = 562
        Top = 1
        Width = 187
        Height = 71
        Align = alLeft
        Caption = 'Gravar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -33
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        StyleName = 'Windows'
        OnClick = btnGravarClick
      end
      object btnImprimir: TButton
        Left = 749
        Top = 1
        Width = 187
        Height = 71
        Align = alLeft
        Caption = 'Imprimir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -33
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Style = bsSplitButton
        TabOrder = 4
        StyleName = 'Windows'
        OnClick = btnImprimirClick
      end
    end
  end
  object pmIncluir: TPopupMenu
    Left = 766
    Top = 501
    object PessoaFisica: TMenuItem
      Caption = 'Pessoa F'#237'sica'
      OnClick = PessoaFisicaClick
    end
    object PessoaJurdica: TMenuItem
      Caption = 'Pessoa Jur'#237'dica'
      OnClick = PessoaJurdicaClick
    end
  end
  object pmPrint: TPopupMenu
    Left = 678
    Top = 517
    object ListadePFsicas1: TMenuItem
      Caption = 'Lista de P. F'#237'sicas'
      OnClick = ListadePFsicas1Click
    end
    object ListadePJurdicas1: TMenuItem
      Caption = 'Lista de P. Jur'#237'dicas'
      OnClick = ListadePJurdicas1Click
    end
  end
end
