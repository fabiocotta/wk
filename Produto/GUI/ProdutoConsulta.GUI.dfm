inherited frmProdutoConsultaGUI: TfrmProdutoConsultaGUI
  Caption = 'Consulta produtos'
  StyleElements = [seFont, seClient, seBorder]
  TextHeight = 15
  inherited Panel1: TPanel
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 530
    inherited Label1: TLabel
      Width = 51
      Caption = 'Descri'#231#227'o'
      StyleElements = [seFont, seClient, seBorder]
      ExplicitWidth = 51
    end
    inherited edtNome: TEdit
      Left = 76
      Anchors = [akLeft, akTop, akRight]
      StyleElements = [seFont, seClient, seBorder]
      ExplicitLeft = 76
    end
    inherited btPesquisar: TButton
      Anchors = [akTop, akRight]
    end
  end
  inherited Panel2: TPanel
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 530
    ExplicitHeight = 209
    inherited DBGrid1: TDBGrid
      Columns = <
        item
          Expanded = False
          FieldName = 'CODIGO'
          Title.Caption = 'Codigo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Caption = 'Descri'#231#227'o'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRECOVENDA'
          Title.Caption = 'Pre'#231'o de venda'
          Width = 139
          Visible = True
        end>
    end
  end
  inherited Panel3: TPanel
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 274
    ExplicitWidth = 530
    inherited btSelcionar: TButton
      OnClick = btSelcionarClick
    end
  end
end
