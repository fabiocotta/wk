object frmPedidoConsultaGUI: TfrmPedidoConsultaGUI
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Consultar pedido'
  ClientHeight = 160
  ClientWidth = 374
  Color = clBtnFace
  Constraints.MinHeight = 151
  Constraints.MinWidth = 328
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  Position = poScreenCenter
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  TextHeight = 15
  object pnlMain: TPanel
    Left = 0
    Top = 0
    Width = 374
    Height = 160
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 312
    ExplicitHeight = 148
    object Label1: TLabel
      Left = 16
      Top = 40
      Width = 84
      Height = 15
      Caption = 'N'#250'mero Pedido'
    end
    object edtNumeroPedido: TEdit
      Left = 133
      Top = 37
      Width = 214
      Height = 28
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnKeyPress = edtNumeroPedidoKeyPress
    end
    object Panel1: TPanel
      Left = 0
      Top = 90
      Width = 374
      Height = 70
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      ExplicitTop = 200
      ExplicitWidth = 521
      object btConfirmar: TButton
        Left = 133
        Top = 0
        Width = 101
        Height = 65
        Caption = 'Consultar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = btConfirmarClick
      end
      object btCancelar: TButton
        Left = 240
        Top = 0
        Width = 107
        Height = 65
        Caption = 'Cancelar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = btCancelarClick
      end
    end
  end
end
