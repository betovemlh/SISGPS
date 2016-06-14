inherited frmCadastroAreaProcesso: TfrmCadastroAreaProcesso
  Caption = 'Cadastro de Area de Processo'
  ExplicitWidth = 680
  ExplicitHeight = 518
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnl2: TPanel
    inherited pgControl: TPageControl
      ActivePage = tabCadastro
      inherited tabConsulta: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 664
        ExplicitHeight = 460
        inherited dbgrd1: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'Id'
              Width = 30
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Nome'
              Width = 250
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DataCriacao'
              Title.Caption = 'Data Cria'#231#227'o'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Objetivo'
              Visible = True
            end>
        end
      end
      inherited tabCadastro: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 664
        ExplicitHeight = 460
        object lbl4: TLabel [0]
          Left = 3
          Top = 137
          Width = 39
          Height = 13
          Caption = 'Objetivo'
        end
        object lbl2: TLabel [1]
          Left = 3
          Top = 48
          Width = 28
          Height = 13
          Caption = 'Nome'
        end
        object lbl1: TLabel [2]
          Left = 3
          Top = 8
          Width = 9
          Height = 13
          Caption = 'Id'
        end
        object lbl5: TLabel [3]
          Left = 75
          Top = 5
          Width = 77
          Height = 13
          Caption = 'Data de Cria'#231#227'o'
        end
        object lbl6: TLabel [4]
          Left = 4
          Top = 96
          Width = 105
          Height = 13
          Caption = 'Modelo de Refer'#234'ncia'
        end
        object lbl3: TLabel [5]
          Left = 380
          Top = 95
          Width = 45
          Height = 13
          Caption = 'Categoria'
        end
        object dbmmoInformacoesGerais: TDBMemo
          Left = 3
          Top = 156
          Width = 658
          Height = 262
          DataField = 'Objetivo'
          DataSource = dsCadastro
          TabOrder = 2
        end
        object dbedtNome: TDBEdit
          Left = 3
          Top = 61
          Width = 566
          Height = 21
          DataField = 'Nome'
          DataSource = dsCadastro
          TabOrder = 1
        end
        object dbedtId: TDBEdit
          Left = 3
          Top = 21
          Width = 53
          Height = 21
          TabStop = False
          Color = clInactiveCaption
          DataField = 'Id'
          DataSource = dsCadastro
          ReadOnly = True
          TabOrder = 3
        end
        object dbedtDataCriacao1: TDBEdit
          Left = 75
          Top = 21
          Width = 131
          Height = 21
          TabStop = False
          Color = clInactiveCaption
          DataField = 'DataCriacao'
          DataSource = dsCadastro
          ReadOnly = True
          TabOrder = 4
        end
        object dblkcbbFK_IdAreaProcesso: TDBLookupComboBox
          Left = 3
          Top = 110
          Width = 350
          Height = 21
          DataField = 'FK_IDModeloReferencia'
          DataSource = dsCadastro
          KeyField = 'Id'
          ListField = 'Nome'
          ListSource = dsModeloReferencia
          TabOrder = 5
        end
        object dblkcbbFK_IDModeloReferencia: TDBLookupComboBox
          Left = 379
          Top = 110
          Width = 282
          Height = 21
          DataField = 'FK_IDCategoria'
          DataSource = dsCadastro
          KeyField = 'Id'
          ListField = 'Nome'
          ListSource = dsCategoria
          TabOrder = 6
        end
      end
    end
  end
  inherited cdsCadastro: TClientDataSet
    object cdsCadastroId: TIntegerField
      FieldName = 'Id'
    end
    object cdsCadastroNome: TStringField
      FieldName = 'Nome'
      Size = 100
    end
    object cdsCadastroDataCriacao: TDateTimeField
      FieldName = 'DataCriacao'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsCadastroObjetivo: TMemoField
      FieldName = 'Objetivo'
      BlobType = ftMemo
    end
    object cdsCadastroFK_IDModeloReferencia: TIntegerField
      FieldName = 'FK_IDModeloReferencia'
    end
    object cdsCadastroFK_IDCategoria: TIntegerField
      FieldName = 'FK_IDCategoria'
    end
  end
  object cdsModeloReferencia: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 144
    Top = 248
  end
  object dsModeloReferencia: TDataSource
    DataSet = cdsModeloReferencia
    Left = 144
    Top = 304
  end
  object cdsCategoria: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 328
    Top = 248
  end
  object dsCategoria: TDataSource
    DataSet = cdsCategoria
    Left = 320
    Top = 296
  end
end
