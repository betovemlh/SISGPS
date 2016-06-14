inherited frmCadastroMetasEspecificas: TfrmCadastroMetasEspecificas
  Caption = 'Cadastro de Metas Especificas'
  ClientWidth = 799
  ExplicitWidth = 805
  ExplicitHeight = 518
  PixelsPerInch = 96
  TextHeight = 13
  object lbl4: TLabel [0]
    Left = 8
    Top = 77
    Width = 23
    Height = 13
    Caption = 'Sigla'
  end
  inherited pnl2: TPanel
    Width = 799
    ExplicitWidth = 799
    inherited pgControl: TPageControl
      Width = 797
      ActivePage = tabCadastro
      ExplicitWidth = 797
      inherited tabConsulta: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 789
        ExplicitHeight = 460
        inherited dbgrd1: TDBGrid
          Width = 685
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
              FieldName = 'Sigla'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DescricaoAreaProcesso'
              Title.Caption = 'Area Processo'
              Width = 200
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DataCriacao'
              Title.Caption = 'Data de Cria'#231#227'o'
              Visible = True
            end>
        end
        inherited pnl1: TPanel
          Left = 685
          ExplicitLeft = 685
        end
      end
      inherited tabCadastro: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 789
        ExplicitHeight = 460
        object lbl1: TLabel [0]
          Left = 3
          Top = 8
          Width = 9
          Height = 13
          Caption = 'Id'
        end
        object lbl5: TLabel [1]
          Left = 75
          Top = 5
          Width = 77
          Height = 13
          Caption = 'Data de Cria'#231#227'o'
        end
        object lbl2: TLabel [2]
          Left = 3
          Top = 141
          Width = 84
          Height = 13
          Caption = 'Area de Processo'
        end
        object lbl3: TLabel [3]
          Left = 3
          Top = 95
          Width = 23
          Height = 13
          Caption = 'Sigla'
        end
        object lbl6: TLabel [4]
          Left = 3
          Top = 52
          Width = 28
          Height = 13
          Caption = 'Nome'
        end
        inherited pnl3: TPanel
          Width = 789
          ExplicitWidth = 789
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
          TabOrder = 2
        end
        object dblkcbb1: TDBLookupComboBox
          Left = 3
          Top = 156
          Width = 286
          Height = 21
          DataField = 'FK_IdAreaProcesso'
          DataSource = dsCadastro
          KeyField = 'Id'
          ListField = 'Nome'
          ListSource = dsAreaProcesso
          TabOrder = 3
        end
        object dbedt1: TDBEdit
          Left = 3
          Top = 111
          Width = 121
          Height = 21
          DataField = 'Sigla'
          DataSource = dsCadastro
          TabOrder = 4
        end
        object dbmmo1: TDBMemo
          Left = 3
          Top = 183
          Width = 658
          Height = 231
          DataField = 'Descricao'
          DataSource = dsCadastro
          TabOrder = 5
        end
        object dbedtSigla: TDBEdit
          Left = 3
          Top = 68
          Width = 449
          Height = 21
          DataField = 'Nome'
          DataSource = dsCadastro
          TabOrder = 6
        end
      end
    end
  end
  inherited cdsCadastro: TClientDataSet
    FieldDefs = <
      item
        Name = 'Id'
        DataType = ftInteger
      end
      item
        Name = 'DataCriacao'
        DataType = ftDateTime
      end
      item
        Name = 'Nome'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'FK_IdAreaProcesso'
        DataType = ftInteger
      end
      item
        Name = 'Sigla'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Descricao'
        DataType = ftMemo
      end
      item
        Name = 'DescricaoAreaProcesso'
        DataType = ftString
        Size = 100
      end>
    StoreDefs = True
    object cdsCadastroId: TIntegerField
      FieldName = 'Id'
    end
    object cdsCadastroDataCriacao: TDateTimeField
      FieldName = 'DataCriacao'
    end
    object cdsCadastroNome: TStringField
      FieldName = 'Nome'
      Size = 100
    end
    object cdsCadastroFK_IdAreaProcesso: TIntegerField
      FieldName = 'FK_IdAreaProcesso'
    end
    object cdsCadastroSigla: TStringField
      FieldName = 'Sigla'
      Size = 10
    end
    object cdsCadastroDescricao: TMemoField
      FieldName = 'Descricao'
      BlobType = ftMemo
    end
    object cdsCadastroDescricaoAreaProcesso: TStringField
      FieldKind = fkLookup
      FieldName = 'DescricaoAreaProcesso'
      LookupDataSet = cdsAreaProcesso
      LookupKeyFields = 'Id'
      LookupResultField = 'Nome'
      KeyFields = 'FK_IdAreaProcesso'
      Size = 100
      Lookup = True
    end
  end
  object cdsAreaProcesso: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 592
    Top = 400
    Data = {
      760000009619E0BD010000001800000004000000000003000000760002496404
      00010010000000044E6F6D650100490010000100055749445448020002006400
      0B446174614372696163616F0800080010000000084F626A657469766F04004B
      0010000100075355425459504502004900050054657874000000}
    object cdsAreaProcessoId: TIntegerField
      FieldName = 'Id'
    end
    object cdsAreaProcessoNome: TStringField
      FieldName = 'Nome'
      Size = 100
    end
    object cdsAreaProcessoDataCriacao: TDateTimeField
      FieldName = 'DataCriacao'
    end
    object cdsAreaProcessoObjetivo: TMemoField
      FieldName = 'Objetivo'
      BlobType = ftMemo
    end
  end
  object dsAreaProcesso: TDataSource
    DataSet = cdsAreaProcesso
    Left = 544
    Top = 400
  end
end
