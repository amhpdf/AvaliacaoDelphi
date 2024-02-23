inherited FrmCadastroPessoaJuridica: TFrmCadastroPessoaJuridica
  Caption = 'Cadastro Pessoa Jur'#237'dica'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlcontainer: TPanel
    inherited pgcMain: TPageControl
      ActivePage = tsEdit
      inherited tsConsulta: TTabSheet
        inherited pnlMainConsultar: TPanel
          inherited pnlNavegador: TPanel
            inherited dbnGridConsultar: TDBNavigator
              Hints.Strings = ()
            end
          end
        end
      end
      inherited tsEdit: TTabSheet
        inherited pnlMainEditar: TPanel
          object lblId: TLabel
            Left = 10
            Top = 14
            Width = 11
            Height = 13
            Caption = 'ID'
          end
          object lblNome: TLabel
            Left = 10
            Top = 60
            Width = 27
            Height = 13
            Caption = 'Nome'
          end
          object lblCNPJ: TLabel
            Left = 10
            Top = 106
            Width = 25
            Height = 13
            Caption = 'CNPJ'
          end
          object lblEndereco: TLabel
            Left = 10
            Top = 152
            Width = 45
            Height = 13
            Caption = 'Endere'#231'o'
          end
          object lblBairro: TLabel
            Left = 10
            Top = 198
            Width = 28
            Height = 13
            Caption = 'Bairro'
          end
          object lblCidade: TLabel
            Left = 246
            Top = 198
            Width = 33
            Height = 13
            Caption = 'Cidade'
          end
          object lblUF: TLabel
            Left = 10
            Top = 244
            Width = 13
            Height = 13
            Caption = 'UF'
          end
          object lblCep: TLabel
            Left = 246
            Top = 244
            Width = 19
            Height = 13
            Caption = 'Cep'
          end
          object lblEmail: TLabel
            Left = 10
            Top = 290
            Width = 24
            Height = 13
            Caption = 'Email'
          end
          object lblTelefone: TLabel
            Left = 10
            Top = 336
            Width = 42
            Height = 13
            Caption = 'Telefone'
          end
          object lblCelular: TLabel
            Left = 246
            Top = 336
            Width = 33
            Height = 13
            Caption = 'Celular'
          end
          object edtID: TEdit
            Left = 10
            Top = 30
            Width = 55
            Height = 21
            TabOrder = 0
          end
          object edtNome: TEdit
            Left = 10
            Top = 76
            Width = 330
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 1
          end
          object edtCNPJ: TEdit
            Left = 10
            Top = 122
            Width = 167
            Height = 21
            TabOrder = 2
          end
          object edtEndereco: TEdit
            Left = 10
            Top = 168
            Width = 466
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 3
          end
          object edtBairro: TEdit
            Left = 10
            Top = 214
            Width = 230
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 4
          end
          object edtCidade: TEdit
            Left = 246
            Top = 214
            Width = 230
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 5
          end
          object edtUF: TEdit
            Left = 10
            Top = 260
            Width = 34
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 6
          end
          object edtCep: TEdit
            Left = 246
            Top = 260
            Width = 121
            Height = 21
            TabOrder = 7
          end
          object edtEmail: TEdit
            Left = 10
            Top = 306
            Width = 466
            Height = 21
            CharCase = ecLowerCase
            TabOrder = 8
          end
          object edtTelefone: TEdit
            Left = 10
            Top = 352
            Width = 100
            Height = 21
            TabOrder = 9
          end
          object edtCelular: TEdit
            Left = 246
            Top = 352
            Width = 100
            Height = 21
            TabOrder = 10
          end
        end
      end
      object tsVinculo: TTabSheet
        Caption = 'V'#237'nculo'
        ImageIndex = 2
        object pnlVinculo: TPanel
          Left = 0
          Top = 0
          Width = 496
          Height = 410
          Align = alClient
          BevelKind = bkSoft
          BevelOuter = bvNone
          TabOrder = 0
          object pnlAdicionarVinculo: TPanel
            Left = 0
            Top = 0
            Width = 492
            Height = 75
            Align = alTop
            BevelKind = bkSoft
            TabOrder = 0
            DesignSize = (
              488
              71)
            object Label1: TLabel
              Left = 10
              Top = 10
              Width = 46
              Height = 13
              Caption = 'P.Jur'#237'dica'
            end
            object Label2: TLabel
              Left = 10
              Top = 42
              Width = 39
              Height = 13
              Caption = 'P. F'#237'sica'
            end
            object edtIdPessoaJuridica: TEdit
              Left = 60
              Top = 8
              Width = 58
              Height = 21
              Anchors = [akLeft, akTop, akRight]
              CharCase = ecUpperCase
              Enabled = False
              TabOrder = 0
            end
            object Button1: TButton
              Left = 381
              Top = 8
              Width = 99
              Height = 52
              Anchors = [akTop, akRight]
              Caption = '&Adicionar'
              TabOrder = 1
            end
            object edtNomePessoaJuridica: TEdit
              Left = 125
              Top = 8
              Width = 250
              Height = 21
              Anchors = [akLeft, akTop, akRight]
              CharCase = ecUpperCase
              Enabled = False
              TabOrder = 2
            end
            object edtIdPessoaFisica: TEdit
              Left = 60
              Top = 40
              Width = 58
              Height = 21
              Anchors = [akLeft, akTop, akRight]
              CharCase = ecUpperCase
              TabOrder = 3
            end
            object edtNomePessoaFisica: TEdit
              Left = 125
              Top = 39
              Width = 250
              Height = 21
              Anchors = [akLeft, akTop, akRight]
              CharCase = ecUpperCase
              TabOrder = 4
            end
          end
          object dbgVinculo: TDBGrid
            Left = 0
            Top = 75
            Width = 492
            Height = 290
            Align = alClient
            DataSource = dsVinculo
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
          end
          object pnlNavegadorVinculo: TPanel
            Left = 0
            Top = 365
            Width = 492
            Height = 41
            Align = alBottom
            BevelKind = bkSoft
            TabOrder = 2
            DesignSize = (
              488
              37)
            object dbnGridVinculo: TDBNavigator
              Left = 256
              Top = 4
              Width = 224
              Height = 27
              VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
              Anchors = [akTop, akRight]
              TabOrder = 0
            end
          end
        end
      end
    end
  end
  inherited pnlBottuns: TPanel
    inherited btnImprimir: TButton
      OnClick = btnImprimirClick
    end
  end
  inherited dsConsultar: TDataSource
    OnDataChange = dsConsultarDataChange
    Left = 544
    Top = 264
  end
  object dsVinculo: TDataSource
    Left = 544
    Top = 320
  end
end
