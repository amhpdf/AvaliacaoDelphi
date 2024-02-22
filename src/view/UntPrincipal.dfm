object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Principal'
  ClientHeight = 242
  ClientWidth = 527
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  Menu = mmMenu
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object actlstMenu: TActionList
    Left = 256
    Top = 128
    object actPFisica: TAction
      Category = 'Cadastros'
      Caption = '&Pessoa F'#237'sica'
      OnExecute = actPFisicaExecute
    end
    object actPJuridica: TAction
      Category = 'Cadastros'
      Caption = '&Pessoa Jur'#237'dica'
    end
    object actSair: TAction
      Caption = '&Sair'
      OnExecute = actSairExecute
    end
  end
  object mmMenu: TMainMenu
    Left = 192
    Top = 128
    object Cadastro: TMenuItem
      Caption = '&Cadastros'
      object mniCliente: TMenuItem
        Action = actPFisica
      end
      object mniFornecedor: TMenuItem
        Action = actPJuridica
      end
    end
    object mniSair: TMenuItem
      Action = actSair
    end
  end
end
