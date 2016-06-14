unit CadastroMetasEspecificas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TemplateCadastro, DB, DBClient, StdCtrls, Buttons, Grids, DBGrids,
  ComCtrls, ExtCtrls, Mask, DBCtrls,UVariaveis;

type
  TfrmCadastroMetasEspecificas = class(TfrmCadastroTemplate)
    cdsAreaProcesso: TClientDataSet;
    cdsCadastroId: TIntegerField;
    cdsCadastroDataCriacao: TDateTimeField;
    cdsAreaProcessoId: TIntegerField;
    cdsAreaProcessoNome: TStringField;
    cdsAreaProcessoDataCriacao: TDateTimeField;
    cdsAreaProcessoObjetivo: TMemoField;
    cdsCadastroFK_IdAreaProcesso: TIntegerField;
    cdsCadastroSigla: TStringField;
    cdsCadastroDescricao: TMemoField;
    cdsCadastroNome: TStringField;
    dbedtDataCriacao1: TDBEdit;
    dbedtId: TDBEdit;
    lbl1: TLabel;
    lbl5: TLabel;
    lbl2: TLabel;
    dblkcbb1: TDBLookupComboBox;
    dsAreaProcesso: TDataSource;
    lbl3: TLabel;
    dbedt1: TDBEdit;
    lbl4: TLabel;
    lbl6: TLabel;
    dbmmo1: TDBMemo;
    dbedtSigla: TDBEdit;
    cdsCadastroDescricaoAreaProcesso: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure cdsCadastroNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    function permiteGravar():Boolean;override;
    function permiteExcluir():Boolean;override;
    procedure  LoadAreasProcesso();
  public
    { Public declarations }
  end;

var
  frmCadastroMetasEspecificas: TfrmCadastroMetasEspecificas;

implementation

{$R *.dfm}

procedure TfrmCadastroMetasEspecificas.cdsCadastroNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  cdsCadastroDataCriacao.AsDateTime := now();
end;

procedure TfrmCadastroMetasEspecificas.FormCreate(Sender: TObject);
begin
  CampoPrimario := 'id';
  TabelaXML := XMLMetasEspecificas ;
  LoadAreasProcesso();
  inherited;
end;

procedure TfrmCadastroMetasEspecificas.LoadAreasProcesso;
begin
  Try
    cdsAreaProcesso.Close();
    if FileExists(PathBaseDadosXML+XMLAreaProcesso) then
      cdsAreaProcesso.LoadFromFile(PathBaseDadosXML+XMLAreaProcesso)
    else
      cdsAreaProcesso.CreateDataSet();
    cdsAreaProcesso.Open();
  Except
    on E:Exception do
    begin
      Application.MessageBox(Pchar('Ocorreu o seguinte erro ao carregar as Areas de Processo : '+#13#10+E.Message),
                             Pchar(Application.Title),MB_ICONERROR);
    end;

  End;
end;

function TfrmCadastroMetasEspecificas.permiteExcluir: Boolean;
begin
  Result := true;
end;

function TfrmCadastroMetasEspecificas.permiteGravar: Boolean;
begin
  Result := false;
  if cdsCadastroNome.IsNull then
    Application.MessageBox(Pchar('Nome não pode ser vazio'),
                           Pchar(Application.Title),MB_ICONEXCLAMATION)
  else if  cdsCadastroDataCriacao.IsNull then
    Application.MessageBox(Pchar('Data não pode ser vazia'),
                           Pchar(Application.Title),MB_ICONEXCLAMATION)
  else if  cdsCadastroSigla.IsNull then
    Application.MessageBox(Pchar('Sigla não pode ser vazia'),
                           Pchar(Application.Title),MB_ICONEXCLAMATION)
  else if  cdsCadastroNome.IsNull then
    Application.MessageBox(Pchar('Nome não pode ser vazio'),
                           Pchar(Application.Title),MB_ICONEXCLAMATION)
  else if  cdsCadastroFK_IdAreaProcesso.IsNull then
    Application.MessageBox(Pchar('Nenhuma Area de Processo selecionada'),
                           Pchar(Application.Title),MB_ICONEXCLAMATION)
  else
    Result := true;
end;

end.
