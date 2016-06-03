inherited frmCadastroAreaProcesso: TfrmCadastroAreaProcesso
  Caption = 'Cadastro de Area de Processo'
  ExplicitWidth = 320
  ExplicitHeight = 240
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnl2: TPanel
    inherited pgControl: TPageControl
      ActivePage = tabCadastro
      inherited tabConsulta: TTabSheet
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
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
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object lbl4: TLabel [0]
          Left = 3
          Top = 88
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
        object dbmmoInformacoesGerais: TDBMemo
          Left = 3
          Top = 107
          Width = 658
          Height = 307
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
  end
end
