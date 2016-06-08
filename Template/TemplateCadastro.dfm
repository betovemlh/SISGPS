object frmCadastroTemplate: TfrmCadastroTemplate
  Left = 368
  Top = 136
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Cadastro Template'
  ClientHeight = 490
  ClientWidth = 674
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnl2: TPanel
    Left = 0
    Top = 0
    Width = 674
    Height = 490
    Align = alClient
    TabOrder = 0
    object pgControl: TPageControl
      Left = 1
      Top = 1
      Width = 672
      Height = 488
      ActivePage = tabConsulta
      Align = alClient
      TabOrder = 0
      OnChange = pgControlChange
      object tabConsulta: TTabSheet
        Caption = 'Consulta'
        OnShow = tabConsultaShow
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object dbgrd1: TDBGrid
          Left = 0
          Top = 0
          Width = 560
          Height = 460
          Align = alClient
          DataSource = dsCadastro
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDblClick = dbgrd1DblClick
        end
        object pnl1: TPanel
          Left = 560
          Top = 0
          Width = 104
          Height = 460
          Align = alRight
          TabOrder = 1
          object btnNovo: TBitBtn
            Left = 1
            Top = 0
            Width = 101
            Height = 33
            Caption = 'Novo'
            DoubleBuffered = True
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000000000000000
              0000000000000000000000000000914A22BFC4652FFFC76730FFCA6A30FFCD6C
              31FF9C5225BF0000000000000000000000000000000000000000000000000000
              0000000000000000000000000000C1632EFFF4BD86FFEE9C4FFFEE9641FFF19C
              47FFD06E32FF0000000000000000000000000000000000000000000000000000
              0000000000000000000000000000C1622EFFF4BD87FFE8934FFFE98F41FFF29E
              49FFCF6E32FF0000000000000000000000000000000000000000000000000000
              0000000000000000000000000000C0622EFFF4BD87FFE68F4EFFE88B41FFF29E
              48FFCE6D31FF0000000000000000000000000000000000000000000000000000
              0000000000000000000000000000C0612DFFF4BC86FFE68E4DFFE7893FFFF19C
              46FFCD6C31FF000000000000000000000000000000000000000084401FBFB358
              2AFFB65A2BFFB95C2BFFBC5E2CFFBE602DFFF3BC86FFE48B4BFFE5863DFFEF98
              43FFCB6A30FFCD6C31FFCE6D31FFCF6E32FFD06E32FFB6602CDFAF5529FFF0B9
              8AFFE69353FFE38740FFE38236FFE38232FFE99349FFE07E3AFFE38139FFED94
              3FFFEF9943FFF19C46FFF29E48FFF29E49FFF19D47FFCD6C31FFAE5428FFF0B9
              8AFFDD834CFFD87339FFDA763AFFDB783AFFDC7736FFDB7433FFDE7835FFE381
              39FFE5863DFFE78940FFE88C41FFEA8F42FFEE9641FFCA6A30FFAD5328FFF0B9
              8BFFDF8C5AFFDA7E4BFFDC814CFFDE844EFFE0874FFFDD7D42FFDE7E40FFE286
              44FFE69154FFE79254FFE89455FFEA9856FFEFA157FFC76730FFAC5228FFEFB9
              8BFFF0B98BFFF1BA8AFFF1BB8BFFF1BC8BFFF2BD8BFFE08750FFDE7E3FFFEB9D
              57FFF4C08DFFF5C18DFFF5C18DFFF5C18DFFF5C18DFFC4652FFF7F3D1DBFAD52
              28FFAF5428FFB15629FFB3582AFFB65A2AFFF1BC8BFFDE844EFFDC7A3DFFE68E
              44FFBE602DFFC0612DFFC0622EFFC1622EFFC1632EFF7E401EA6000000000000
              0000000000000000000000000000B3582AFFF1BB8BFFDC814DFFDA763BFFE58B
              42FFBC5E2CFF0000000000000000000000000000000000000000000000000000
              0000000000000000000000000000B15629FFF1BA8BFFDB7F4BFFD8733AFFE389
              42FFB95C2BFF0000000000000000000000000000000000000000000000000000
              0000000000000000000000000000AF5428FFF0BA8BFFDF8C5BFFDD834DFFE694
              53FFB65A2BFF0000000000000000000000000000000000000000000000000000
              0000000000000000000000000000AD5228FFF0BA8BFFF0BA8BFFF0BA8BFFF0BA
              8BFFB3582AFF0000000000000000000000000000000000000000000000000000
              00000000000000000000000000007F3D1DBFAC5228FFAD5328FFAE5428FFAF55
              29FF84401FBF0000000000000000000000000000000000000000}
            ParentDoubleBuffered = False
            TabOrder = 0
            OnClick = btnNovoClick
          end
          object btnEditar: TBitBtn
            Left = 0
            Top = 32
            Width = 101
            Height = 33
            Caption = 'Editar'
            DoubleBuffered = True
            Glyph.Data = {
              76060000424D7606000000000000360000002800000014000000140000000100
              2000000000004006000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000100000185430B87BD5F10C0BD5F10C0BD5F
              10C0BD5F10C0BD5F10C0BD5F10C0BD5F10C0BD5F10C0BD5F10C0B75C0FBB4121
              0542000000000000000000000000000000000000000000000000000000001C0E
              021CFB7E15FFFB7E15FFFB7E15FFFB7E15FFFB7E15FFFB7E15FFFB7E15FFFB7E
              15FFFB7E15FFFB7E15FFFB7E15FFB75C0FBB0000000000000000000000000000
              00000000000000000000000000001F100320FB7E15FFFB7E15FFFB7E15FFFB7E
              15FFFB7E15FFFB7E15FFFB7E15FFFB7E15FFFB7E15FFFB7E15FFFB7E15FFBD5F
              10C0000000000000000000000000000000000000000000000000000000001F10
              0320FB7E15FFFB7E15FFFB7E15FFFB7E15FFFB7E15FFAD570EB0D76C12DAFB7E
              15FFFB7E15FFFB7E15FFFB7E15FFBD5F10C00000000000000000000000000000
              00000000000000000000000000001F100320FB7E15FFFB7E15FFFB7E15FFFB7E
              15FFFB7E15FF3A1D053B954B0C979A4C0D9CF87E15FEFB7E15FFFB7E15FFBD5F
              10C0000000000000000000000000000000000000000000000000000000001F10
              0320FB7E15FFFB7E15FFFB7E15FFFB7E15FFFB7E15FFDB6E11DE562B07570000
              000063320865F87E15FEFB7E15FFBD5F10C00000000000000000000000000000
              00000000000000000000000000001F100320FB7E15FFFB7E15FFFB7E15FFFB7E
              15FFFB7E15FFF77B15FD5D2E085E000000000000000063320865F87E15FEBD5F
              10C0000000000000000000000000000000000000000000000000000000001F10
              0320FB7E15FFFB7E15FFFB7E15FFFB7E15FFFB7E15FFFB7E15FFF77B15FD5D2E
              085E000000000000000063320865C76411CA0000000000000000000000000000
              00000000000000000000000000001F100320FB7E15FFFB7E15FFFB7E15FFFB7E
              15FFFB7E15FFFB7E15FFFB7E15FFF77B15FD5D2E085E00000000000000006332
              08657E3F0B800000000000000000000000000000000000000000000000001F10
              0320FB7E15FFFB7E15FFFB7E15FFFB7E15FFFB7E15FFFB7E15FFFB7E15FFFB7E
              15FFF77B15FD5D2E085E0000000000000000633208657E3F0B80000000000000
              00000000000000000000000000001F100320FB7E15FFFB7E15FFFB7E15FFFB7E
              15FFFB7E15FFFB7E15FFFB7E15FFFB7E15FFFB7E15FFF77B15FD5D2E085E0000
              000000000000633208657D3F0A7F000000000000000000000000000000001F10
              0320FB7E15FFFB7E15FFFB7E15FFFB7E15FFFB7E15FFFB7E15FFFB7E15FFFB7E
              15FFFB7E15FFFB7E15FFF77B15FD5D2E085E0000000000000000BE5F10C1793D
              0A7B0000000000000000000000001F100320FB7E15FFFB7E15FFFB7E15FFFB7E
              15FFFB7E15FFFB7E15FFFB7E15FFBB5E10BF050200051F1003201F1003205C2E
              085D5E2F085F954B0C97552A0756663309686F38097100000000000000001F10
              0320FB7E15FFFB7E15FFFB7E15FFFB7E15FFFB7E15FFFB7E15FFFB7E15FF6030
              0862F67D15FCFB7E15FFEA7714F02915032A82410B84964B0D98000000000301
              0003A8540DAB00000000000000001F100320FB7E15FFFB7E15FFFB7E15FFFB7E
              15FFFB7E15FFFB7E15FFFB7E15FF5E2F0860FB7E15FFF57A15FB432206440000
              00000100000180400B82703809729C4D0C9E4623064700000000000000001F10
              0320FB7E15FFFB7E15FFFB7E15FFFB7E15FFFB7E15FFFB7E15FFFB7E15FF5E2F
              0860FB7E15FF6231086400000000000000000000000001000001462306472C16
              042D00000000000000000000000009040109DC6F12E0FB7E15FFFB7E15FFFB7E
              15FFFB7E15FFFB7E15FFFB7E15FF5E2F086086430B8800000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000090401091F1003201F1003201F1003201F1003201F1003201F1003200C06
              010C010000010000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000}
            ParentDoubleBuffered = False
            TabOrder = 1
            OnClick = btn2Click
          end
          object btnExcluir: TBitBtn
            Left = 1
            Top = 67
            Width = 100
            Height = 32
            Caption = 'Excluir'
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
              0000000000000000000000000000000000001610061B8D6527AA9F722CC09F72
              2CC09F722CC09F722CC09F722CC09F722CC09F722CC09F722CC08C6326A9150F
              0619000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000007A58229434250F3F000000000000
              000000000000000000000000000000000000000000000000000037270F427856
              2291000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000008E6627AD100B0413000000000C09
              072600000000000000000C09072600000000080604180403020E110C05148E66
              28AC000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000009C6F2BBC02020103000000001E17
              116000000000000000001E17116000000000110D09350D0A072B040301059B6F
              2BBB000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000009F722CC000000000000000001E17
              116000000000000000001E171160000000000D0A072B110D0935000000009F72
              2CC0000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000009F722CC000000000010000021E17
              105F00000000000000001E171160000000000A080621140F0B3F000000009F72
              2CC0000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000009F722CC0000000000303020B1B15
              0F5600000000000000001E171160000000000706041717120D49000000009F72
              2CC0000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000009D702BBF00000000070504161812
              0D4B00000000000000001E171160000000000403020D1A140E53000000009D70
              2BBF000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000B08030D936A29B3000000000A0806211410
              0B4000000000000000001E17116000000000010101041D17105D00000000976C
              29B60806020A0000000000000000000000000000000000000000000000000000
              00000000000000000000000000001811071D876126A3000000000E0B082C110D
              093500000000000000001E17116000000000000000001E171160000000008A63
              27A7150F06190000000000000000000000000000000000000000000000000000
              0000000000000000000000000000251B0A2D7A56219300000000110D09370D0A
              072A00000000000000001E17116000000000000000001E171160000000007D59
              2397221809290000000000000000000000000000000000000000000000000000
              000000000000000000000000000032240E3D6C4E1E830000000015100B420A08
              051F00000000000000001E17116000000000000000001E171160000000007050
              1F872E210D380000000000000000000000000000000000000000000000000000
              0000000000000000000000000000402E124D5F441B730000000018130D4D0605
              031400000000000000001E17116000000000000000001E171160000000006347
              1C783C2B11480000000000000000000000000000000000000000000000000000
              00000000000000000000000000004D37165D523B176300000000130F0B3E0202
              0107000000000000000016110C45000000000000000016110C4500000000563E
              1868493414580000000000000000000000000000000000000000000000000000
              000000000000000000000A07030C402E114D392910461A1307201A1307201A13
              07201A1307201A1307201A1307201A1307201A1307201A1307201A1307203B2B
              11483E2D114C0A07030C00000000000000000000000000000000000000000000
              00000000000000000000A1732CC3845F24A0845F24A0845F24A0845F24A0845F
              24A0845F24A0845F24A0845F24A0845F24A0845F24A0845F24A0845F24A0845F
              24A0845F24A0A1732DC200000000000000000000000000000000000000000000
              000000000000000000009F722CC0000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000009F722CC000000000000000000000000000000000000000000000
              00000000000000000000856025A29F722CC09F722CC09F722CC09F722CC09F72
              2CC09F722CC09F722CC09F722CC09F722CC09F722CC09F722CC09F722CC09F72
              2CC09F722CC0845F24A000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000007856
              2291020201030000000000000000000000005F441B731B140821000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000004A35
              155A9C712CBE9F722CC09F722CC09F722CC0805C249B02020103000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000}
            ParentDoubleBuffered = False
            TabOrder = 2
            OnClick = btnExcluirClick
          end
          object btn1: TBitBtn
            Left = 1
            Top = 425
            Width = 100
            Height = 32
            Caption = 'Sair'
            DoubleBuffered = True
            Glyph.Data = {
              36080000424D3608000000000000360400002800000020000000200000000100
              08000000000000040000C40E0000C40E00000001000000000000000000000000
              80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
              A6000020400000206000002080000020A0000020C0000020E000004000000040
              20000040400000406000004080000040A0000040C0000040E000006000000060
              20000060400000606000006080000060A0000060C0000060E000008000000080
              20000080400000806000008080000080A0000080C0000080E00000A0000000A0
              200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
              200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
              200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
              20004000400040006000400080004000A0004000C0004000E000402000004020
              20004020400040206000402080004020A0004020C0004020E000404000004040
              20004040400040406000404080004040A0004040C0004040E000406000004060
              20004060400040606000406080004060A0004060C0004060E000408000004080
              20004080400040806000408080004080A0004080C0004080E00040A0000040A0
              200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
              200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
              200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
              20008000400080006000800080008000A0008000C0008000E000802000008020
              20008020400080206000802080008020A0008020C0008020E000804000008040
              20008040400080406000804080008040A0008040C0008040E000806000008060
              20008060400080606000806080008060A0008060C0008060E000808000008080
              20008080400080806000808080008080A0008080C0008080E00080A0000080A0
              200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
              200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
              200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
              2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
              2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
              2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
              2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
              2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
              2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
              2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFF6F6F6F6F6F6F6F6F6F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFE1EAEAEAEAEAEAEAEAEAEAEAEBE109FFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFF309FFFFFFFFFFFFFFFFFFFFFFFFFFE1FFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFEAF6FFFFFFFFFFFFFFFFFFFFFFFFFFEBF6FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFEAF6FFFFFFFFFFFFFFFFFFFFFFFFFFEAF6FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFEAF6FFFFFFFFFFFFFFFFFFFFFFFFFFEAF6FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFEAF6FFFFFFFFFFFFFFFFFFFFFFFFFFEAF6FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFF09FFFFFFFFFFFFFFFFFFFFFFFFFFFFEAF6FFFFFFFFFFFFFFFFFFFFFF
              FFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAF6FFFFFFFFFFFFFFFFFFFFFF
              49A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAF6FFFFFFFFFFFFFFFFFFFF49
              F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAF6FFFFFFFFFFFFFFFFFF51F7
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAF6FFFFFFFFFFFFFFFF5152ED
              F7F7F7F7F7F7F7F7F7F7F7F7F7ACF7FFFFFFFFEAF6FFFFFFFFFFFFFFFF5252ED
              F7F7F7F7F7F7F7F7F7F7F7F7F7ACF7FFFFFFFFEAF6FFFFFFFFFFFFFFFFFF51F7
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAF6FFFFFFFFFFFFFFFFFFFF51
              A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAF6FFFFFFFFFFFFFFFFFFFFFF
              51A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAF6FFFFFFFFFFFFFFFFFFFFFF
              FFA4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAF6FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFF09FFFFFFFFFFFFFFFFFFFFFFFFFFFFEAF6FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFEAF6FFFFFFFFFFFFFFFFFFFFFFFFFFEAF6FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFEAF6FFFFFFFFFFFFFFFFFFFFFFFFFFEAF6FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFEAF6FFFFFFFFFFFFFFFFFFFFFFFFFFEAF6FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFEAF6FFFFFFFFFFFFFFFFFFFFFFFFFFEAF6FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFF09EBFFFFFFFFFFFFFFFFFFFFFFFFF6E1FFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFF3E0E0E0E0E0E0E0E0E0E0E0E0E1F6FFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            ParentDoubleBuffered = False
            TabOrder = 3
            OnClick = btn1Click
          end
        end
      end
      object tabCadastro: TTabSheet
        Caption = 'Cadastro'
        ImageIndex = 1
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object pnl3: TPanel
          Left = 0
          Top = 420
          Width = 664
          Height = 40
          Align = alBottom
          TabOrder = 0
          object btnGravar: TBitBtn
            Left = 0
            Top = 4
            Width = 100
            Height = 32
            Caption = 'Gravar'
            DoubleBuffered = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Glyph.Data = {
              0E070000424D0E0700000000000036040000280000001A0000001A0000000100
              080000000000D8020000C40E0000C40E00000001000000000000000000000000
              80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
              A6000020400000206000002080000020A0000020C0000020E000004000000040
              20000040400000406000004080000040A0000040C0000040E000006000000060
              20000060400000606000006080000060A0000060C0000060E000008000000080
              20000080400000806000008080000080A0000080C0000080E00000A0000000A0
              200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
              200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
              200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
              20004000400040006000400080004000A0004000C0004000E000402000004020
              20004020400040206000402080004020A0004020C0004020E000404000004040
              20004040400040406000404080004040A0004040C0004040E000406000004060
              20004060400040606000406080004060A0004060C0004060E000408000004080
              20004080400040806000408080004080A0004080C0004080E00040A0000040A0
              200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
              200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
              200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
              20008000400080006000800080008000A0008000C0008000E000802000008020
              20008020400080206000802080008020A0008020C0008020E000804000008040
              20008040400080406000804080008040A0008040C0008040E000806000008060
              20008060400080606000806080008060A0008060C0008060E000808000008080
              20008080400080806000808080008080A0008080C0008080E00080A0000080A0
              200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
              200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
              200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
              2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
              2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
              2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
              2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
              2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
              2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
              2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
              FFFFFFFFFFFF0909FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFF09F0
              E8E8E8E8E8E8F0F4FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFF3E8E8F1F3090909
              09F4F1E8E8F3FFFFFFFFFFFF0000FFFFFFFFFFE8E8F2FFFFFFFFFFFFFFFFFFFF
              F2E8E8FFFFFFFFFF0000FFFFFFFFE8E809FFFFFFFFFFFFFFFFFFFFFFFF09E8E8
              FFFFFFFF0000FFFFFFE8E8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8E8FFFFFF
              0000FFFFF1E8FFFF09090909FF0909FFFFFF09090909FFFFE8F1FFFF0000FF09
              E8F4FFFFE8E8E8E8FFE8E809FFFFE8E8E8E8FFFF09E809FF0000FFF1E8FFFFFF
              E8E8E8E8FF0909FFFFFFE8E8E8E8FFFFFFE8F1FF0000FFE8F3FFFFFFE8E8E8E8
              FFFFFFFFFFFFE8E8E8E8FFFFFFF4E8FF000009E809FFFFFFE8E8E8E8FFFFFFFF
              FFFFE8E8E8E8FFFFFFFFE8090000F4E8FFFFFFFFE8E8E8E8E8E8E8E8E8E8E8E8
              E8E8FFFFFFFFE8F30000F3E8FFFFFFFFE8E8E8E8E8E8E8E8E8E8E8E8E8E8FFFF
              FFFFE8F30000F3E8FFFFFFFFE8E8E8E8E8E8E8E8E8E8E8E8E8E8FFFFFFFFE8F2
              0000F3E8FFFFFFFFE8E8E8E8E8E8E8E8E8E8E8E8E8E8FFFFFFFFE8F3000009E8
              FFFFFFFFE8E8F2FF090909090909FFF2E8E8FFFFFFFFE8090000FFE809FFFFFF
              E8E8F3FFFFFFFFFFFFFFFFF2E8E8FFFFFF09E8FF0000FFE8E8FFFFFFE8E8F3FF
              FFFFFFFFFFFFFFF2E8E8FFFFFFE8E8FF0000FF09E809FFFFE8E8F3FFFFFFFFFF
              FFFFFFF3E8E8FFFF09E809FF0000FFFFE8E8FFFFE8E8E8F0F0F0F0F0F0F0F0E8
              E8E8FFFFE8E8FFFF0000FFFFFFE8E8FFFF090909090909090909090909FFFFF0
              E8FFFFFF0000FFFFFF09E8E8FFFFFFFFFFFFFFFFFFFFFFFFFFFFE8E809FFFFFF
              0000FFFFFFFF09E8E8F4FFFFFFFFFFFFFFFFFFFF09E8E809FFFFFFFF0000FFFF
              FFFFFFFFF1E8E8F209FFFFFFFF09F3E8E8F1FFFFFFFFFFFF0000FFFFFFFFFFFF
              FF09F2E8E8E8E8E8E8E8E8F209FFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
              FF09090909FFFFFFFFFFFFFFFFFFFFFF0000}
            ParentDoubleBuffered = False
            ParentFont = False
            TabOrder = 0
            OnClick = btnGravarClick
          end
          object btnCancelar: TBitBtn
            Left = 106
            Top = 4
            Width = 100
            Height = 32
            Caption = 'Cancelar'
            DoubleBuffered = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000000000000101
              16291C1C8FCD2727BDF904043F69000000000000000000000000000000000000
              00000000000001013B5B2828C1F52020A5DA00002337000000000202172B2222
              87CC2E2EF1FF1A1AFBFF2323C6FB04043F6B0000000000000000000000000000
              00000000385B2626C3F64F4FF7FF6161F5FF27279FD70000243826268DD43636
              F3FF0505FAFF0000ECFF1010F1FF1C1CC9FB04043F6B00000000000000000101
              36591D1DC4F63A3AEFFF3B3BECFF4C4CF6FF7171F7FF2D2DA8DF3636A8F23030
              FFFF0000F8FF0000EBFF0000E7FF0A0AEBFF1212C2F80404386002022F511212
              BDF42929E9FF2F2FE6FF3C3CEAFF4646F4FF7777FFFF4343C3F705052A4E3535
              AFF22525FAFF0000F1FF0000E5FF0000DFFF0505E3FF0A0AC3FD0B0BBEFB1616
              E3FF2121DFFF2E2EE4FF3C3CEEFF6060F9FF4040C2F401013C5E000000000303
              264A3232B2F11E1EF5FF0000EAFF0000DFFF0000D7FF0101DBFF0606DCFF1313
              D7FF2222DEFF2F2FE7FF4E4EF4FF3B3BC5F60101375900000000000000000000
              00000404274C2A2AAEF21818F0FF0000E0FF0000D5FF0000CCFF0000CCFF0B0B
              D4FF2020DFFF3D3DEEFF2E2EBFF60101375B0000000000000000000000000000
              000000000000040421402121AFF70E0EE7FF2A2AE8FF4242EAFF4242EAFF3737
              E7FF2929E7FF2222BEFA00002D4D000000000000000000000000000000000000
              000000000000050529501717B3F94242F4FF8585FFFF8F8FFFFF8E8EFFFF8787
              FEFF5757F5FF1F1FC3FC0000365D000000000000000000000000000000000000
              000007072D5B1F1FB3F74B4BFAFF9393FFFFA0A0FFFF9696FDFF9595FDFF9F9F
              FFFF9696FEFF6A6AFBFF2B2BC5FB01013E6B0000000000000000000000000707
              2A592828B6F65C5CFCFFAAAAFFFFB4B4FFFFB0B0FDFF3D3DECFF3636EAFFABAB
              FDFFB3B3FFFFACACFFFF8181FDFF3A3ACAFB02023E6B0000000009092B5A3131
              AEF46767FDFFBBBBFFFFC8C8FFFFC4C4FFFF4D4DF4FF0101B3FB0202ABF84C4C
              F1FFC1C1FFFFC6C6FFFFBFBFFFFF9494FEFF4141C4F802023F6A3333A2F66E6E
              FFFFD4D4FFFFDFDFFFFFD3D3FFFF5D5DF7FF0808AEF406062B53040424450A0A
              AAF26262F4FFD2D2FFFFD9D9FFFFD6D6FFFFAAAAFFFF4242BFFB232375C95B5B
              EDFFC9C9FFFFEDEDFFFF6969FBFF1010B2F607072D5900000000000000000404
              274A1414AEF17474F8FFEBEBFFFFDEDEFFFF8B8BF3FF262693D503030E1F1A1A
              6DC35A5AEBFF6868FFFF1C1CADF609092C5B0000000000000000000000000000
              00000404274C1D1DABF18787FDFF8484F2FF181887CC0000182B000000000202
              0D1F1C1C73C32222A1F409092A58000000000000000000000000000000000000
              0000000000000404284B2323A7F21C1C89CF0000162900000000}
            ParentDoubleBuffered = False
            ParentFont = False
            TabOrder = 1
            OnClick = btnCancelarClick
          end
        end
      end
    end
  end
  object dsCadastro: TDataSource
    DataSet = cdsCadastro
    Left = 457
    Top = 393
  end
  object cdsCadastro: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCadastro'
    OnNewRecord = cdsCadastroNewRecord
    Left = 417
    Top = 393
  end
end
