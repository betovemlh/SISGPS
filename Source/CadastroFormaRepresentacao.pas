unit CadastroFormaRepresentacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TemplateCadastro, DB, DBClient, StdCtrls, Buttons, Grids, DBGrids,
  ComCtrls, ExtCtrls, Mask, DBCtrls,UVariaveis;

type
  TfrmCadastroFormaRepresentacao = class(TfrmCadastroTemplate)
    cdsCadastroId: TIntegerField;
    cdsCadastroNome: TStringField;
    cdsCadastroDataCriacao: TDateTimeField;
    dbedtNome: TDBEdit;
    lbl2: TLabel;
    dbedtDataCriacao1: TDBEdit;
    lbl5: TLabel;
    dbedtId: TDBEdit;
    lbl1: TLabel;
    dblkcbbFK_IdAreaProcesso: TDBLookupComboBox;
    lbl6: TLabel;
    cdsModeloReferencia: TClientDataSet;
    dsModeloReferencia: TDataSource;
    cdsCadastroFK_IDModeloReferencia: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure cdsCadastroNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    function permiteGravar():Boolean;override;
    function permiteExcluir():Boolean;override;
    procedure LoadModeloReferencia();
  public
    { Public declarations }
  end;

var
  frmCadastroFormaRepresentacao: TfrmCadastroFormaRepresentacao;

implementation

{$R *.dfm}

{ TfrmCadastroTemplate1 }

procedure TfrmCadastroFormaRepresentacao.cdsCadastroNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsCadastroDataCriacao.AsDateTime := now();
end;

procedure TfrmCadastroFormaRepresentacao.FormCreate(Sender: TObject);
begin
  CampoPrimario := 'id';
  TabelaXML :=XMLFormaRepresentacao;
  inherited;
  LoadModeloReferencia();
end;

function TfrmCadastroFormaRepresentacao.permiteExcluir: Boolean;
begin
  Result := true;
end;

function TfrmCadastroFormaRepresentacao.permiteGravar: Boolean;
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

procedure TfrmCadastroFormaRepresentacao.LoadModeloReferencia();
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

end.
