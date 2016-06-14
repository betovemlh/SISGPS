unit CadastroNivelMaturidade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TemplateCadastro, DB, DBClient, StdCtrls, Buttons, Grids, DBGrids,
  ComCtrls, ExtCtrls, Mask, DBCtrls,UVariaveis;

type
  TfrmCadastroNivelMaturidade = class(TfrmCadastroTemplate)
    cdsCadastroId: TIntegerField;
    cdsCadastroNome: TStringField;
    cdsCadastroDataCriacao: TDateTimeField;
    dbedtSigla: TDBEdit;
    lbl6: TLabel;
    dbedtDataCriacao1: TDBEdit;
    lbl5: TLabel;
    dbedtId: TDBEdit;
    lbl1: TLabel;
    dblkcbbFK_IDModeloReferencia: TDBLookupComboBox;
    lbl7: TLabel;
    dsFormaRepresentacao: TDataSource;
    cdsFormaRepresentacao: TClientDataSet;
    cdsFormaRepresentacaoId: TIntegerField;
    cdsFormaRepresentacaoNome: TStringField;
    cdsFormaRepresentacaoDataCriacao: TDateTimeField;
    dbmmo1: TDBMemo;
    lbl2: TLabel;
    cdsCadastroDescricao: TMemoField;
    cdsCadastroFK_IdFormaRepresentacao: TIntegerField;
    dbgrd2: TDBGrid;
    dbgrd3: TDBGrid;
    btnAddMeta: TBitBtn;
    btn3: TBitBtn;
    lbl4: TLabel;
    lbl3: TLabel;
    cdsAreasProcessoDisponiveis: TClientDataSet;
    dsAreasProcessoDisponiveis: TDataSource;
    cdsNivelMaturidadeXAreasProcessoSelecionada: TClientDataSet;
    dsNivelMaturidadeXAreasProcessoSelecionada: TDataSource;
    cdsNivelMaturidadeXAreasProcessoSelecionadaId: TIntegerField;
    cdsNivelMaturidadeXAreasProcessoSelecionadaFK_IDNivelMaturidade: TIntegerField;
    cdsNivelMaturidadeXAreasProcessoSelecionadaFK_IDAreaProcesso: TIntegerField;
    cdsAreaProcessoCadastrada: TClientDataSet;
    cdsNivelMaturidadeXAreasProcessoSelecionadaDescricaoAreaProcesso: TStringField;
    cdsAreasProcessoDisponiveisId: TIntegerField;
    cdsAreasProcessoDisponiveisNome: TStringField;
    cdsAreasProcessoDisponiveisDataCriacao: TDateTimeField;
    cdsAreasProcessoDisponiveisObjetivo: TMemoField;
    cdsAreasProcessoDisponiveisFK_IDModeloReferencia: TIntegerField;
    cdsAreasProcessoDisponiveisFK_IDCategoria: TIntegerField;
    procedure cdsCadastroNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure btnAddMetaClick(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure cdsNivelMaturidadeXAreasProcessoSelecionadaNewRecord(
      DataSet: TDataSet);
    procedure tabCadastroShow(Sender: TObject);
  private
    { Private declarations }
    procedure LoadFormaRepresentacao();
    procedure     LoadAreaProcessoDisponiveis();
    function permiteGravar():Boolean;override;
    function permiteExcluir():Boolean;override;
    procedure GravarLigacaoNivelMaturidadeAreasProcesso();
    procedure ExcluiLigacaoAreasProcessoNivelMaturidade(IdNivelMaturidade:Integer);
    procedure LoadAreaProcessoSelecionadas(IdNivelMaturidade:integer);
    procedure LoadAreaProcessoCadastrada();
  public
    { Public declarations }
  end;

var
  frmCadastroNivelMaturidade: TfrmCadastroNivelMaturidade;

implementation

{$R *.dfm}

procedure TfrmCadastroNivelMaturidade.btn3Click(Sender: TObject);
begin
  inherited;
  if (cdsNivelMaturidadeXAreasProcessoSelecionada.IsEmpty) or
    cdsNivelMaturidadeXAreasProcessoSelecionadaId.IsNull then
  begin
    Application.MessageBox(Pchar('Nenhuma Area de Processo disponível selecionada existe para ser removida!'),
                           Pchar(Application.Title),MB_ICONEXCLAMATION);
  end
  else
  begin
    cdsNivelMaturidadeXAreasProcessoSelecionada.Delete();
    LoadAreaProcessoDisponiveis();
  end;
end;

procedure TfrmCadastroNivelMaturidade.btnAddMetaClick(Sender: TObject);
begin
  inherited;
  if (cdsAreasProcessoDisponiveis.IsEmpty) or
    cdsAreasProcessoDisponiveisId.IsNull then
  begin
    Application.MessageBox(Pchar('Nenhuma Area de processo Disponível foi selecionada!'),
                           Pchar(Application.Title),MB_ICONEXCLAMATION);
  end
  else
  begin
    cdsNivelMaturidadeXAreasProcessoSelecionada.Append();
    cdsNivelMaturidadeXAreasProcessoSelecionadaFK_IDNivelMaturidade.AsInteger := cdsCadastroId.AsInteger;
    cdsNivelMaturidadeXAreasProcessoSelecionadaFK_IDAreaProcesso.AsInteger    := cdsAreasProcessoDisponiveisId.AsInteger;
    cdsNivelMaturidadeXAreasProcessoSelecionada.Post();
    cdsAreasProcessoDisponiveis.Delete();
  end;
end;

procedure TfrmCadastroNivelMaturidade.btnExcluirClick(Sender: TObject);
var CodigoRemovido:Integer;
begin
  Try
    CodigoRemovido := cdsCadastroId.AsInteger;
    inherited;
    ExcluiLigacaoAreasProcessoNivelMaturidade(CodigoRemovido);
  Except
     inherited  CarregaListagem(false);
  end;
end;

procedure TfrmCadastroNivelMaturidade.btnGravarClick(Sender: TObject);
begin
  inherited;
  GravarLigacaoNivelMaturidadeAreasProcesso();
end;

procedure TfrmCadastroNivelMaturidade.cdsCadastroNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsCadastroDataCriacao.AsDateTime := now();
end;

procedure TfrmCadastroNivelMaturidade.cdsNivelMaturidadeXAreasProcessoSelecionadaNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  Dataset.FieldByName(CampoPrimario).AsInteger := getLastId(cdsNivelMaturidadeXAreasProcessoSelecionada,CampoPrimario)+1;
end;

procedure TfrmCadastroNivelMaturidade.ExcluiLigacaoAreasProcessoNivelMaturidade(
  IdNivelMaturidade: Integer);
begin
  LoadAreaProcessoSelecionadas(IdNivelMaturidade);
  cdsNivelMaturidadeXAreasProcessoSelecionada.First();
  while not cdsNivelMaturidadeXAreasProcessoSelecionada.eof do
  begin
    cdsNivelMaturidadeXAreasProcessoSelecionada.Delete();
  end;
  GravarLigacaoNivelMaturidadeAreasProcesso();
end;

procedure TfrmCadastroNivelMaturidade.FormCreate(Sender: TObject);
begin
  CampoPrimario := 'id';
  TabelaXML := XMLNivelMaturidade ;
  inherited;
  LoadAreaProcessoCadastrada();
  LoadAreaProcessoSelecionadas(0);
  LoadAreaProcessoDisponiveis();
  LoadFormaRepresentacao();
end;

procedure TfrmCadastroNivelMaturidade.GravarLigacaoNivelMaturidadeAreasProcesso;
begin
 try
    if (cdsNivelMaturidadeXAreasProcessoSelecionada.state in [dsInsert,dsEdit]) then
      cdsNivelMaturidadeXAreasProcessoSelecionada.Post();
    if cdsNivelMaturidadeXAreasProcessoSelecionada.ChangeCount > 0 then
    begin
      cdsNivelMaturidadeXAreasProcessoSelecionada.MergeChangeLog;
      cdsNivelMaturidadeXAreasProcessoSelecionada.SaveToFile(PathBaseDadosXML+XMLNivelMaturidadeXAreaProcesso,dfXML);
    end;
  except
    on E: exception do
    begin
      Application.MessageBox(PChar('Ocorreu um erro:' + #13#10 + E.Message), 'SYSGER', MB_ICONWARNING);

    end;
  end
end;

procedure TfrmCadastroNivelMaturidade.LoadAreaProcessoSelecionadas(
  IdNivelMaturidade: integer);
begin
  Try
    cdsNivelMaturidadeXAreasProcessoSelecionada.Filtered := false;
    cdsNivelMaturidadeXAreasProcessoSelecionada.Close();
    if FileExists(PathBaseDadosXML+XMLNivelMaturidadeXAreaProcesso) then
      cdsNivelMaturidadeXAreasProcessoSelecionada.LoadFromFile(PathBaseDadosXML+XMLNivelMaturidadeXAreaProcesso)
    else
      cdsNivelMaturidadeXAreasProcessoSelecionada.CreateDataSet();
    cdsNivelMaturidadeXAreasProcessoSelecionada.Open();
    if IdNivelMaturidade<>0 then
    begin
      cdsNivelMaturidadeXAreasProcessoSelecionada.Filtered := false;
      cdsNivelMaturidadeXAreasProcessoSelecionada.Filter := 'FK_IDNIVELMATURIDADE='+IntToStr(IdNivelMaturidade);
      cdsNivelMaturidadeXAreasProcessoSelecionada.Filtered := True;
    end;
  Except
    on E:Exception do
    begin
      Application.MessageBox(Pchar('Ocorreu o seguinte erro ao carregar as Areas de Processo Selecionadas : '+#13#10+E.Message),
                             Pchar(Application.Title),MB_ICONERROR);
    end;

  End;
end;

procedure TfrmCadastroNivelMaturidade.LoadAreaProcessoDisponiveis;
begin
  Try
    cdsAreasProcessoDisponiveis.Close();
    if FileExists(PathBaseDadosXML+XMLAreaProcesso) then
      cdsAreasProcessoDisponiveis.LoadFromFile(PathBaseDadosXML+XMLAreaProcesso)
    else
      cdsAreasProcessoDisponiveis.CreateDataSet();
    cdsAreasProcessoDisponiveis.Open();
    cdsAreasProcessoDisponiveis.First();
    while not cdsAreasProcessoDisponiveis.eof do
    begin
      if (cdsNivelMaturidadeXAreasProcessoSelecionada.Locate('FK_IDAreaProcesso',cdsAreasProcessoDisponiveisId.AsString,[])) then
        cdsAreasProcessoDisponiveis.Delete()
      else
        cdsAreasProcessoDisponiveis.Next;
    end;
  Except
    on E:Exception do
    begin
      Application.MessageBox(Pchar('Ocorreu o seguinte erro ao carregar as Areas de Processo disponíveis : '+#13#10+E.Message),
                             Pchar(Application.Title),MB_ICONERROR);
    end;

  End;
end;

procedure TfrmCadastroNivelMaturidade.LoadFormaRepresentacao();
begin
  Try
    cdsFormaRepresentacao.Close();
    if FileExists(PathBaseDadosXML+XMLFormaRepresentacao) then
      cdsFormaRepresentacao.LoadFromFile(PathBaseDadosXML+XMLFormaRepresentacao)
    else
      cdsFormaRepresentacao.CreateDataSet();
    cdsFormaRepresentacao.Open();
  Except
    on E:Exception do
    begin
      Application.MessageBox(Pchar('Ocorreu o seguinte erro ao carregar as formas de representação: '+#13#10+E.Message),
                             Pchar(Application.Title),MB_ICONERROR);
    end;

  End;
end;

function TfrmCadastroNivelMaturidade.permiteExcluir: Boolean;
begin
  Result := true;
end;

function TfrmCadastroNivelMaturidade.permiteGravar: Boolean;
begin
  Result := false;
  if cdsCadastroNome.IsNull then
    Application.MessageBox(Pchar('Nome não pode ser vazio'),
                           Pchar(Application.Title),MB_ICONEXCLAMATION)
  else if  cdsCadastroFK_IdFormaRepresentacao.IsNull then
    Application.MessageBox(Pchar('Nenhuma Forma de Representação selecionada'),
                           Pchar(Application.Title),MB_ICONEXCLAMATION)
  else
    Result := true;
end;

procedure TfrmCadastroNivelMaturidade.tabCadastroShow(Sender: TObject);
begin
  inherited;
  LoadAreaProcessoSelecionadas(cdsCadastroId.AsInteger);
  LoadAreaProcessoDisponiveis();
end;

procedure TfrmCadastroNivelMaturidade.LoadAreaProcessoCadastrada();
begin
  Try
    cdsAreaProcessoCadastrada.Close();
    if FileExists(PathBaseDadosXML+XMLAreaProcesso) then
      cdsAreaProcessoCadastrada.LoadFromFile(PathBaseDadosXML+XMLAreaProcesso)
    else
      cdsAreaProcessoCadastrada.CreateDataSet();
    cdsAreaProcessoCadastrada.Open();
  Except
    on E:Exception do
    begin
      Application.MessageBox(Pchar('Ocorreu o seguinte erro ao carregar as Metas Genericas Cadastradas : '+#13#10+E.Message),
                             Pchar(Application.Title),MB_ICONERROR);
    end;

  End;
end;

end.
