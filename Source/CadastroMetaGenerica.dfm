inherited frmCadastroMetaGenerica: TfrmCadastroMetaGenerica
  Caption = 'Cadastro de Meta Gen'#233'rica'
  ExplicitWidth = 680
  ExplicitHeight = 518
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnl2: TPanel
    inherited pgControl: TPageControl
      ActivePage = tabConsulta
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
              Width = 200
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DataCriacao'
              Title.Caption = 'Data de Cria'#231#227'o'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'sigla'
              Title.Caption = 'Sigla'
              Visible = True
            end>
        end
      end
      inherited tabCadastro: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 664
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
        object lbl4: TLabel [2]
          Left = 3
          Top = 88
          Width = 48
          Height = 13
          Caption = 'Descri'#231#227'o'
        end
        object lbl2: TLabel [3]
          Left = 3
          Top = 48
          Width = 28
          Height = 13
          Caption = 'Nome'
        end
        object lbl3: TLabel [4]
          Left = 456
          Top = 48
          Width = 23
          Height = 13
          Caption = 'Sigla'
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
        object dbmmoInformacoesGerais: TDBMemo
          Left = 3
          Top = 107
          Width = 658
          Height = 307
          DataField = 'Descricao'
          DataSource = dsCadastro
          TabOrder = 3
        end
        object dbedtNome: TDBEdit
          Left = 3
          Top = 61
          Width = 430
          Height = 21
          DataField = 'Nome'
          DataSource = dsCadastro
          TabOrder = 4
        end
        object dbedtNome1: TDBEdit
          Left = 456
          Top = 61
          Width = 70
          Height = 21
          DataField = 'sigla'
          DataSource = dsCadastro
          TabOrder = 5
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
    object cdsCadastrosigla: TStringField
      FieldName = 'sigla'
      Size = 10
    end
    object cdsCadastroDescricao: TMemoField
      FieldName = 'Descricao'
      BlobType = ftMemo
    end
    object cdsCadastroDataCriacao: TDateTimeField
      FieldName = 'DataCriacao'
    end
  end
end
