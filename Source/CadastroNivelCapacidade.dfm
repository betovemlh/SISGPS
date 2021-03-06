inherited frmCadastroNivelCapacidade: TfrmCadastroNivelCapacidade
  Caption = 'Cadastro de Niveis de Capacidade'
  ClientHeight = 520
  ExplicitWidth = 680
  ExplicitHeight = 548
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnl2: TPanel
    Height = 520
    ExplicitHeight = 520
    inherited pgControl: TPageControl
      Height = 518
      ActivePage = tabCadastro
      ExplicitHeight = 518
      inherited tabConsulta: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 664
        ExplicitHeight = 490
        inherited dbgrd1: TDBGrid
          Height = 490
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
              Title.Caption = 'Data de Cria'#231#227'o'
              Visible = True
            end>
        end
        inherited pnl1: TPanel
          Height = 490
          ExplicitHeight = 490
          inherited btnEditar: TBitBtn
            OnClick = btnEditarClick
          end
          inherited btnExcluir: TBitBtn
            Top = 66
            ExplicitTop = 66
          end
          inherited btn1: TBitBtn
            Top = 456
            ExplicitTop = 456
          end
        end
      end
      inherited tabCadastro: TTabSheet
        OnShow = tabCadastroShow
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 664
        ExplicitHeight = 490
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
          Top = 48
          Width = 28
          Height = 13
          Caption = 'Nome'
        end
        object shp1: TShape [3]
          Left = 6
          Top = 132
          Width = 635
          Height = 1
        end
        object lbl3: TLabel [4]
          Left = 6
          Top = 139
          Width = 139
          Height = 13
          Caption = 'Metas Gen'#233'ricas Dispon'#237'veis'
        end
        object lbl4: TLabel [5]
          Left = 379
          Top = 139
          Width = 147
          Height = 13
          Caption = 'Metas Gen'#233'ricas Selecionadas'
        end
        object lbl6: TLabel [6]
          Left = 4
          Top = 86
          Width = 105
          Height = 13
          Caption = 'Modelo de Refer'#234'ncia'
        end
        inherited pnl3: TPanel
          Top = 450
          ExplicitTop = 450
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
          TabOrder = 1
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
          TabOrder = 2
        end
        object dbedtNome: TDBEdit
          Left = 3
          Top = 61
          Width = 430
          Height = 21
          DataField = 'Nome'
          DataSource = dsCadastro
          TabOrder = 3
        end
        object btnAddMeta: TBitBtn
          Left = 279
          Top = 264
          Width = 75
          Height = 33
          Caption = 'Add'
          DoubleBuffered = True
          Glyph.Data = {
            36090000424D3609000000000000360000002800000018000000180000000100
            2000000000000009000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000090000
            0047000000810000009F000000A20000008E0000005E00000017000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000700000076000000E71D1D
            1DFF5D5D5DFF7D7D7DFF818181FF6B6B6BFF363636FF020202FA000000A40000
            0020000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000023000000CF303030FFB3B3B3FFFAFA
            FAFFFCFCFCFFFEFEFEFFFFFFFFFFFDFDFDFFFAFAFAFFD9D9D9FF5F5F5FFF0202
            02F2000000580000000000000000000000000000000000000000000000000000
            0000000000000000000000000023000000E6696969FFF6F6F6FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFFADAD
            ADFF0D0D0DFE0000006300000000000000000000000000000000000000000000
            00000000000000000007000000CF6A6A6AFFFBFBFBFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFBABABAFF060606FA00000037000000000000000000000000000000000000
            00000000000000000077313131FFF6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFEFEFEFF818181FF000000CC000000020000000000000000000000000000
            00000000000A000000E7B4B4B4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7E7
            E7FF8F8F8FFFFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFF5F5F5FF1B1B1BFF0000004B0000000000000000000000000000
            0000000000481F1F1FFFFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBEB
            EBFF373737FF3C3C3CFFE3E3E3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFEFEFEFF737373FF000000A00000000000000000000000000000
            0000000000825E5E5EFFFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFF9F9F9FF737373FF141414FFB5B5B5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFB3B3B3FF000000D90000000100000000000000000000
            0000000000A07E7E7EFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFB4B4B4FF141414FF6E6E6EFFFCFCFCFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFD7D7D7FF000000F60000000400000000000000000000
            0000000000A4838383FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFAFAFAFF5B5B5BFF000000FFE4E4E4FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFDEDEDEFF000000FB0000000500000000000000000000
            0000000000916E6E6EFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFE2E2E2FF3A3A3AFF3A3A3AFFE2E2E2FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFC4C4C4FF000000E70000000200000000000000000000
            0000000000623B3B3BFFFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFB4B4B4FF141414FF777777FFFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF8F8F8FFF000000B90000000000000000000000000000
            00000000001A030303FBDBDBDBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6D6
            D6FF151515FFB6B6B6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFDFDFDFF3B3B3BFF0000006F0000000000000000000000000000
            000000000000000000A8646464FFFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFF9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFB8B8B8FF010101EF000000130000000000000000000000000000
            00000000000000000023030303F4B1B1B1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFE9E9E9FF242424FF00000071000000000000000000000000000000000000
            000000000000000000000000005D0E0E0EFFBBBBBBFFFEFEFEFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAEA
            EAFF3A3A3AFF000000B100000002000000000000000000000000000000000000
            000000000000000000000000000000000067080808FB878787FFF7F7F7FFFEFE
            FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFFB9B9B9FF2424
            24FF000000B10000000800000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000003A000000D11D1D1DFF7777
            77FFB6B6B6FFD8D8D8FFDEDEDEFFC5C5C5FF909090FF3C3C3CFF010101F00000
            0072000000020000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000000000030000004E0000
            00A5000000DB000000F8000000FD000000E9000000BB0000006F000000130000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000010000000400000005000000020000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
          ParentDoubleBuffered = False
          TabOrder = 4
          OnClick = btnAddMetaClick
        end
        object btn3: TBitBtn
          Left = 279
          Top = 320
          Width = 75
          Height = 32
          Caption = 'Del'
          DoubleBuffered = True
          Glyph.Data = {
            36090000424D3609000000000000360000002800000018000000180000000100
            2000000000000009000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000200000002000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000001000000370000
            0088000000BB000000D3000000D3000000B90000008400000033000000010000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000032000000C10E0E0EFF5959
            59FF919191FFAFAFAFFFAEAEAEFF909090FF565656FF0C0C0CFF000000BC0000
            002D000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000067050505F9777777FFECECECFFFCFC
            FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFFEAEAEAFF727272FF0404
            04F70000005F0000000000000000000000000000000000000000000000000000
            0000000000000000000000000067101010FFB8B8B8FFFDFDFDFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFFB5B5
            B5FF0E0E0EFF0000005E00000000000000000000000000000000000000000000
            00000000000000000033050505FAB9B9B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFB6B6B6FF040404F60000002B000000000000000000000000000000000000
            000000000001000000C2787878FFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFDFDFDFF717171FF000000B8000000010000000000000000000000000000
            0000000000390E0E0EFFEDEDEDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFF6F6F6FF6F6F6FFFBCBCBCFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFEAEAEAFF0C0C0CFF0000002F0000000000000000000000000000
            00000000008A5B5B5BFFFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFD7D7D7FF2D2D2DFF434343FFEAEAEAFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFCFCFCFF545454FF0000007F0000000000000000000000000000
            0000000000BD939393FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFA3A3A3FF0F0F0FFF838383FFFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF8E8E8EFF000000B30000000000000000000000000000
            0002000000D4AFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFF4A4A
            4AFF121212FFC1C1C1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFABABABFF000000CC0000000200000000000000000000
            0002000000D4AFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFF2020
            20FF1A1A1AFFD9D9D9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFAAAAAAFF000000CB0000000200000000000000000000
            0000000000BC929292FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFD
            FDFF878787FF101010FFA5A5A5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFEFEFEFF8D8D8DFF000000B10000000000000000000000000000
            0000000000885A5A5AFFFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFC3C3C3FF1C1C1CFF656565FFF6F6F6FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFCFCFCFF535353FF0000007E0000000000000000000000000000
            0000000000370E0E0EFFECECECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFEBEBEBFF515151FFB5B5B5FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFE9E9E9FF0B0B0BFF0000002C0000000000000000000000000000
            000000000001000000C1767676FFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFDFDFDFF6F6F6FFF000000B6000000000000000000000000000000000000
            00000000000000000031050505F9B7B7B7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFB3B3B3FF030303F600000029000000000000000000000000000000000000
            00000000000000000000000000640F0F0FFFB8B8B8FFFDFDFDFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFFB4B4
            B4FF0D0D0DFE0000005B00000000000000000000000000000000000000000000
            000000000000000000000000000000000062050505F8757575FFECECECFFFCFC
            FCFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFCFCFCFFE9E9E9FF717171FF0404
            04F60000005B0000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000002F000000BD0D0D0DFF5858
            58FF919191FFABABABFFABABABFF8F8F8FFF565656FF0B0B0BFF000000B70000
            0029000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000001000000320000
            0083000000B5000000CD000000CC000000B4000000800000002D000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000200000002000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
          ParentDoubleBuffered = False
          TabOrder = 5
          OnClick = btn3Click
        end
        object dbgrd2: TDBGrid
          Left = 3
          Top = 158
          Width = 262
          Height = 288
          DataSource = dsMetasGenericasDisponiveis
          Options = [dgIndicator, dgColumnResize, dgTabs, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 6
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'Nome'
              Width = 200
              Visible = True
            end>
        end
        object dbgrd3: TDBGrid
          Left = 379
          Top = 158
          Width = 262
          Height = 288
          DataSource = dsMetasGenericasXNiveisCapacidadeSelecionadas
          Options = [dgIndicator, dgColumnResize, dgTabs, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 7
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'NomeMetaGenerica'
              Title.Caption = 'Nome'
              Width = 200
              Visible = True
            end>
        end
        object dblkcbbFK_IdAreaProcesso: TDBLookupComboBox
          Left = 3
          Top = 100
          Width = 286
          Height = 21
          DataField = 'FK_IDModeloReferencia'
          DataSource = dsCadastro
          KeyField = 'Id'
          ListField = 'Nome'
          ListSource = dsModeloReferencia
          TabOrder = 8
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
        Name = 'FK_IDModeloReferencia'
        DataType = ftInteger
      end
      item
        Name = 'FK_IdFormaRepresentacao'
        DataType = ftInteger
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
    object cdsCadastroFK_IDModeloReferencia: TIntegerField
      FieldName = 'FK_IDModeloReferencia'
    end
  end
  object cdsMetasGenericasXNiveisCapacidadeSelecionadas: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    OnNewRecord = cdsMetasGenericasXNiveisCapacidadeSelecionadasNewRecord
    Left = 544
    Top = 104
    Data = {
      5C0000009619E0BD0100000018000000030000000000030000005C0002496404
      0001000000000014464B5F49444E6976656C4361706163696461646504000100
      0000000011464B5F49444D65746147656E657269636104000100000000000000}
    object cdsMetasGenericasXNiveisCapacidadeSelecionadasId: TIntegerField
      FieldName = 'Id'
    end
    object cdsMetasGenericasXNiveisCapacidadeSelecionadasFK_IDNivelCapacidade: TIntegerField
      FieldName = 'FK_IDNivelCapacidade'
    end
    object cdsMetasGenericasXNiveisCapacidadeSelecionadasFK_IDMetaGenerica: TIntegerField
      FieldName = 'FK_IDMetaGenerica'
    end
    object cdsMetasGenericasXNiveisCapacidadeSelecionadasNomeMetaGenerica: TStringField
      FieldKind = fkLookup
      FieldName = 'NomeMetaGenerica'
      LookupDataSet = cdsMetasGenericasCadastradas
      LookupKeyFields = 'Id'
      LookupResultField = 'Nome'
      KeyFields = 'FK_IDMetaGenerica'
      Size = 100
      Lookup = True
    end
  end
  object cdsMetasGenericasDisponiveis: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 168
    Top = 104
    object cdsMetasGenericasDisponiveisId: TIntegerField
      FieldName = 'Id'
    end
    object cdsMetasGenericasDisponiveisNome: TStringField
      FieldName = 'Nome'
      Size = 100
    end
    object cdsMetasGenericasDisponiveissigla: TStringField
      FieldName = 'sigla'
      Size = 10
    end
    object cdsMetasGenericasDisponiveisDescricao: TMemoField
      FieldName = 'Descricao'
      BlobType = ftMemo
    end
    object cdsMetasGenericasDisponiveisDataCriacao: TDateTimeField
      FieldName = 'DataCriacao'
    end
  end
  object dsMetasGenericasDisponiveis: TDataSource
    DataSet = cdsMetasGenericasDisponiveis
    Left = 168
    Top = 152
  end
  object dsMetasGenericasXNiveisCapacidadeSelecionadas: TDataSource
    DataSet = cdsMetasGenericasXNiveisCapacidadeSelecionadas
    Left = 536
    Top = 160
  end
  object cdsMetasGenericasCadastradas: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 304
    Top = 104
    Data = {
      910000009619E0BD010000001800000005000000000003000000910002496404
      00010000000000044E6F6D650100490000000100055749445448020002006400
      057369676C610100490000000100055749445448020002000A00094465736372
      6963616F04004B0000000100075355425459504502004900050054657874000B
      446174614372696163616F08000800000000000000}
    object IntegerField1: TIntegerField
      FieldName = 'Id'
    end
    object StringField1: TStringField
      FieldName = 'Nome'
      Size = 100
    end
    object StringField2: TStringField
      FieldName = 'sigla'
      Size = 10
    end
    object MemoField1: TMemoField
      FieldName = 'Descricao'
      BlobType = ftMemo
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'DataCriacao'
    end
  end
  object cdsModeloReferencia: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 304
    Top = 176
    object cdsModeloReferenciaId: TIntegerField
      FieldName = 'Id'
    end
    object cdsModeloReferenciaNome: TStringField
      FieldName = 'Nome'
      Size = 100
    end
    object cdsModeloReferenciaDataCriacao: TDateTimeField
      FieldName = 'DataCriacao'
    end
    object cdsModeloReferenciaInformacoesGerais: TBlobField
      FieldName = 'InformacoesGerais'
    end
  end
  object dsModeloReferencia: TDataSource
    DataSet = cdsModeloReferencia
    Left = 304
    Top = 232
  end
  object cdsFormaRepresentacao: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 96
    Top = 288
    object cdsFormaRepresentacaoId: TIntegerField
      FieldName = 'Id'
    end
    object cdsFormaRepresentacaoNome: TStringField
      FieldName = 'Nome'
      Size = 100
    end
    object cdsFormaRepresentacaoDataCriacao: TDateTimeField
      FieldName = 'DataCriacao'
    end
  end
  object dsFormaRepresentacao: TDataSource
    DataSet = cdsFormaRepresentacao
    Left = 96
    Top = 344
  end
end
