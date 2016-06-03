inherited frmCadastroModeloReferencia: TfrmCadastroModeloReferencia
  Caption = 'Cadastro Modelo de Referencia'
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
              Title.Caption = 'Data cria'#231#227'o'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'InformacoesGerais'
              Title.Caption = 'Informa'#231#245'es Gerais'
              Visible = True
            end>
        end
      end
      inherited tabCadastro: TTabSheet
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object lbl1: TLabel [0]
          Left = 3
          Top = 8
          Width = 9
          Height = 13
          Caption = 'Id'
        end
        object lbl2: TLabel [1]
          Left = 3
          Top = 48
          Width = 28
          Height = 13
          Caption = 'Nome'
        end
        object lbl3: TLabel [2]
          Left = 75
          Top = 5
          Width = 77
          Height = 13
          Caption = 'Data de Cria'#231#227'o'
        end
        object lbl4: TLabel [3]
          Left = 3
          Top = 88
          Width = 88
          Height = 13
          Caption = 'InformacoesGerais'
        end
        object dbedt1: TDBEdit
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
        object dbedt2: TDBEdit
          Left = 3
          Top = 61
          Width = 438
          Height = 21
          DataField = 'Nome'
          DataSource = dsCadastro
          TabOrder = 1
        end
        object dbedt3: TDBEdit
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
        object dbmmo1: TDBMemo
          Left = 3
          Top = 107
          Width = 658
          Height = 291
          DataField = 'InformacoesGerais'
          DataSource = dsCadastro
          TabOrder = 2
        end
      end
    end
  end
  inherited cdsCadastro: TClientDataSet
    object cdsCadastroId: TIntegerField
      DisplayWidth = 5
      FieldName = 'Id'
    end
    object cdsCadastroNome: TStringField
      DisplayWidth = 120
      FieldName = 'Nome'
      Size = 100
    end
    object cdsCadastroDataCriacao: TDateTimeField
      DisplayWidth = 22
      FieldName = 'DataCriacao'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsCadastroInformacoesGerais: TBlobField
      DisplayWidth = 18
      FieldName = 'InformacoesGerais'
    end
  end
end
