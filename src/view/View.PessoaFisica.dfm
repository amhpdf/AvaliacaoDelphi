inherited FrmCadastroCliente: TFrmCadastroCliente
  Caption = 'Cadastro de Pessoas F'#237'sica'
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlcontainer: TPanel
    inherited pgcMain: TPageControl
      inherited tsConsulta: TTabSheet
        inherited pnlMainConsultar: TPanel
          inherited dbbGridConsultar: TDBGrid
            DataSource = nil
          end
          inherited pnlNavegador: TPanel
            inherited dbnGridConsultar: TDBNavigator
              Hints.Strings = ()
            end
          end
        end
      end
      inherited tsEdit: TTabSheet
        inherited pnlMainEditar: TPanel
          object lblDesc: TLabel
            Left = 35
            Top = 59
            Width = 27
            Height = 13
            Caption = 'Nome'
          end
          object lblCodigo: TLabel
            Left = 29
            Top = 24
            Width = 33
            Height = 13
            Caption = 'C'#243'digo'
          end
          object lblCPF: TLabel
            Left = 45
            Top = 94
            Width = 19
            Height = 13
            Caption = 'CPF'
          end
          object lblTelefone: TLabel
            Left = 20
            Top = 129
            Width = 42
            Height = 13
            Caption = 'Telefone'
          end
          object edtCodigo: TEdit
            Left = 70
            Top = 20
            Width = 60
            Height = 21
            CharCase = ecUpperCase
            Enabled = False
            TabOrder = 0
          end
          object edtNome: TEdit
            Left = 70
            Top = 56
            Width = 330
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 1
          end
          object edtCPF: TEdit
            Left = 70
            Top = 92
            Width = 100
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 2
          end
          object edtTelefone: TEdit
            Left = 70
            Top = 128
            Width = 100
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 3
          end
        end
      end
    end
  end
end
