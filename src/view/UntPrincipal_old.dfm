object frmPrincipal: TfrmPrincipal
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
    object actCliente: TAction
      Category = 'Cadastro'
      Caption = '&Cliente'
      OnExecute = actClienteExecute
    end
    object actFornecedor: TAction
      Category = 'Cadastro'
      Caption = '&Fornecedor'
    end
    object actGrupo: TAction
      Category = 'Cadastro'
      Caption = '&Grupo'
    end
    object actProduto: TAction
      Category = 'Cadastro'
      Caption = '&Produto'
    end
    object actVenda: TAction
      Category = 'Venda'
      Caption = 'actVenda'
    end
  end
  object mmMenu: TMainMenu
    Left = 144
    Top = 120
    object Cadastros: TMenuItem
      Caption = 'Cadastros'
      object N1: TMenuItem
        Caption = '-'
      end
      object Produtos1: TMenuItem
        Caption = 'Produtos'
      end
    end
    object Movimento: TMenuItem
      Caption = '&Movimento'
    end
    object Sair: TMenuItem
      Caption = '&Sair'
    end
  end
end
