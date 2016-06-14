unit CadastroAreaProcesso;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TemplateCadastro, DB, DBClient, StdCtrls, Buttons, Grids, DBGrids,
  ComCtrls, ExtCtrls, Mask, DBCtrls,UVariaveis;

type
  TfrmCadastroAreaProcesso = class(TfrmCadastroTemplate)
    cdsCadastroId: TIntegerField;
    cdsCadastroNome: TStringField;
    cdsCadastroObjetivo: TMemoField;
    dbmmoInformacoesGerais: TDBMemo;
    lbl4: TLabel;
    dbedtNome: TDBEdit;
    lbl2: TLabel;
    dbedtId: TDBEdit;
    lbl1: TLabel;
    cdsCadastroDataCriacao: TDateTimeField;
    dbedtDataCriacao1: TDBEdit;
    lbl5: TLabel;
    dblkcbbFK_IdAreaProcesso: TDBLookupComboBox;
    lbl6: TLabel;
    lbl3: TLabel;
    dblkcbbFK_IDModeloReferencia: TDBLookupComboBox;
    cdsModeloReferencia: TClientDataSet;
    dsModeloReferencia: TDataSource;
    cdsCadastroFK_IDModeloReferencia: TIntegerField;
    cdsCadastroFK_IDCategoria: TIntegerField;
    cdsCategoria: TClientDataSet;
    dsCategoria: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure cdsCadastroNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    function permiteGravar():Boolean;override;
    function permiteExcluir():Boolean;override;
    procedure LoadModeloReferencia();
    procedure LoadCategoria();
  public
    { Public declarations }
  end;

var
  frmCadastroAreaProcesso: TfrmCadastroAreaProcesso;

implementation

{$R *.dfm}

procedure TfrmCadastroAreaProcesso.cdsCadastroNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsCadastroDataCriacao.AsDateTime := now();
end;

procedure TfrmCadastroAreaProcesso.FormCreate(Sender: TObject);
begin
  CampoPrimario := 'id';
  TabelaXML := XMLAreaProcesso;
  inherited;
  LoadModeloReferencia();
  LoadCategoria();
end;

function TfrmCadastroAreaProcesso.permiteExcluir: Boolean;
begin
  Result := true;
end;

function TfrmCadastroAreaProcesso.permiteGravar: Boolean;
begin
  Result := false;
  if cdsCadastroNome.IsNull then
    Application.MessageBox(Pchar('Nome não pode ser vazio'),
                           Pchar(Application.Title),MB_ICONEXCLAMATION)
  else if  cdsCadastroDataCriacao.IsNull then
    Application.MessageBox(Pchar('Data não pode ser vazia'),
                           Pchar(Application.Title),MB_ICONEXCLAMATION)
  else
    Result := true;
end;

procedure TfrmCadastroAreaProcesso.LoadModeloReferencia();
begin
  Try
    cdsModeloReferencia.Close();
    if FileExists(PathBaseDadosXML+XMLModeloReferencia) then
      cdsModeloReferencia.LoadFromFile(PathBaseDadosXML+XMLModeloReferencia)
    else
      cdsModeloReferencia.CreateDataSet();
    cdsModeloReferencia.Open();
  Except
    on E:Exception do
    begin
      Application.MessageBox(Pchar('Ocorreu o seguinte erro ao carregar os Modelos de Referencia : '+#13#10+E.Message),
                             Pchar(Application.Title),MB_ICONERROR);
    end;

  End;
end;

procedure TfrmCadastroAreaProcesso.LoadCategoria();
begin
  Try
    cdsCategoria.Close();
    if FileExists(PathBaseDadosXML+XMLCategoria) then
      cdsCategoria.LoadFromFile(PathBaseDadosXML+XMLCategoria)
    else
      cdsCategoria.CreateDataSet();
    cdsCategoria.Open();
  Except
    on E:Exception do
    begin
      Application.MessageBox(Pchar('Ocorreu o seguinte erro ao carregar as Categorias : '+#13#10+E.Message),
                             Pchar(Application.Title),MB_ICONERROR);
    end;

  End;
end;

end.
