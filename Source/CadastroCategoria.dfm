inherited frmCadastroCategoria: TfrmCadastroCategoria
  Caption = 'Cadastro de Categoria'
  ExplicitWidth = 680
  ExplicitHeight = 518
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnl2: TPanel
    inherited pgControl: TPageControl
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
              Width = 300
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DataCriacao'
              Title.Caption = 'Data Cria'#231#227'o'
              Visible = True
            end>
        end
      end
      inherited tabCadastro: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 664
        ExplicitHeight = 460
        object lbl2: TLabel [0]
          Left = 3
          Top = 48
          Width = 28
          Height = 13
          Caption = 'Nome'
        end
        object lbl1: TLabel [1]
          Left = 3
          Top = 8
          Width = 9
          Height = 13
          Caption = 'Id'
        end
        object lbl5: TLabel [2]
          Left = 75
          Top = 5
          Width = 77
          Height = 13
          Caption = 'Data de Cria'#231#227'o'
        end
        object dbedtNome: TDBEdit
          Left = 3
          Top = 61
          Width = 430
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
          TabOrder = 2
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
          TabOrder = 3
        end
      end
    end
  end
  inherited cdsCadastro: TClientDataSet
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
  end
end
