unit CadastroNivelCapacidade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TemplateCadastro, DB, DBClient, StdCtrls, Buttons, Grids, DBGrids,
  ComCtrls, ExtCtrls,UVariaveis, DBCtrls, Mask;

type
  TfrmCadastroNivelCapacidade = class(TfrmCadastroTemplate)
    cdsCadastroId: TIntegerField;
    cdsCadastroDataCriacao: TDateTimeField;
    cdsCadastroNome: TStringField;
    dbedtId: TDBEdit;
    lbl1: TLabel;
    dbedtDataCriacao1: TDBEdit;
    lbl5: TLabel;
    dbedtNome: TDBEdit;
    lbl2: TLabel;
    shp1: TShape;
    lbl3: TLabel;
    lbl4: TLabel;
    btnAddMeta: TBitBtn;
    btn3: TBitBtn;
    cdsMetasGenericasXNiveisCapacidadeSelecionadas: TClientDataSet;
    cdsMetasGenericasXNiveisCapacidadeSelecionadasId: TIntegerField;
    cdsMetasGenericasXNiveisCapacidadeSelecionadasFK_IDNivelCapacidade: TIntegerField;
    cdsMetasGenericasDisponiveis: TClientDataSet;
    dsMetasGenericasDisponiveis: TDataSource;
    dsMetasGenericasXNiveisCapacidadeSelecionadas: TDataSource;
    cdsMetasGenericasDisponiveisId: TIntegerField;
    cdsMetasGenericasDisponiveisNome: TStringField;
    cdsMetasGenericasDisponiveissigla: TStringField;
    cdsMetasGenericasDisponiveisDescricao: TMemoField;
    cdsMetasGenericasDisponiveisDataCriacao: TDateTimeField;
    dbgrd2: TDBGrid;
    cdsMetasGenericasXNiveisCapacidadeSelecionadasFK_IDMetaGenerica: TIntegerField;
    cdsMetasGenericasCadastradas: TClientDataSet;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    MemoField1: TMemoField;
    DateTimeField1: TDateTimeField;
    cdsMetasGenericasXNiveisCapacidadeSelecionadasNomeMetaGenerica: TStringField;
    dbgrd3: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure cdsCadastroNewRecord(DataSet: TDataSet);
    procedure cdsMetasGenericasXNiveisCapacidadeSelecionadasNewRecord(
      DataSet: TDataSet);
    procedure btn3Click(Sender: TObject);
    procedure tabCadastroShow(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnAddMetaClick(Sender: TObject);
  private
    { Private declarations }
    function permiteGravar():Boolean;override;
    function permiteExcluir():Boolean;override;
    procedure LoadMetasGenericasDisponiveis();
    procedure LoadMetasGenericasSelecionadas();
    procedure LoadMetasCadastradas();
    procedure   GravarLigacaoMetasGenericasXNiveisCapacidade();
  public
    { Public declarations }
  end;

var
  frmCadastroNivelCapacidade: TfrmCadastroNivelCapacidade;
implementation

{$R *.dfm}

procedure TfrmCadastroNivelCapacidade.btn3Click(Sender: TObject);
begin
  inherited;
  if (cdsMetasGenericasXNiveisCapacidadeSelecionadas.IsEmpty) or
    cdsMetasGenericasXNiveisCapacidadeSelecionadasId.IsNull then
  begin
    Application.MessageBox(Pchar('Nenhuma Meta Genérica selecionada existe para ser removida!'),
                           Pchar(Application.Title),MB_ICONEXCLAMATION);
  end
  else
  begin
    cdsMetasGenericasXNiveisCapacidadeSelecionadas.Delete();
    LoadMetasGenericasDisponiveis();
  end;
end;

procedure TfrmCadastroNivelCapacidade.btnAddMetaClick(Sender: TObject);
begin
  inherited;
  if (cdsMetasGenericasDisponiveis.IsEmpty) or
    cdsMetasGenericasDisponiveisId.IsNull then
  begin
    Application.MessageBox(Pchar('Nenhuma Meta Genérica Disponível foi selecionada!'),
                           Pchar(Application.Title),MB_ICONEXCLAMATION);
  end
  else
  begin
    cdsMetasGenericasXNiveisCapacidadeSelecionadas.Append();
    cdsMetasGenericasXNiveisCapacidadeSelecionadasFK_IDNivelCapacidade.AsInteger := cdsCadastroId.AsInteger;
    cdsMetasGenericasXNiveisCapacidadeSelecionadasFK_IDMetaGenerica.AsInteger    := cdsMetasGenericasDisponiveisId.AsInteger;
    cdsMetasGenericasXNiveisCapacidadeSelecionadas.Post();
    cdsMetasGenericasDisponiveis.Delete();
  end;
end;

procedure TfrmCadastroNivelCapacidade.btnGravarClick(Sender: TObject);
begin
  GravarLigacaoMetasGenericasXNiveisCapacidade();
  inherited;
end;

procedure TfrmCadastroNivelCapacidade.CdsCadastroNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsCadastroDataCriacao.AsDateTime := now();
end;

procedure TfrmCadastroNivelCapacidade.cdsMetasGenericasXNiveisCapacidadeSelecionadasNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  Dataset.FieldByName(CampoPrimario).AsInteger := getLastId(cdsMetasGenericasXNiveisCapacidadeSelecionadas,CampoPrimario)+1;
end;

procedure TfrmCadastroNivelCapacidade.FormCreate(Sender: TObject);
begin
  CampoPrimario := 'id';
  TabelaXML := XMLNivelCapacidade;
  inherited;
  LoadMetasCadastradas();
  LoadMetasGenericasSelecionadas();
  LoadMetasGenericasDisponiveis();
end;

procedure TfrmCadastroNivelCapacidade.GravarLigacaoMetasGenericasXNiveisCapacidade;
begin
  try
    if (cdsMetasGenericasXNiveisCapacidadeSelecionadas.state in [dsInsert,dsEdit]) then
      cdsMetasGenericasXNiveisCapacidadeSelecionadas.Post();
    if cdsMetasGenericasXNiveisCapacidadeSelecionadas.ChangeCount > 0 then
    begin
      cdsMetasGenericasXNiveisCapacidadeSelecionadas.MergeChangeLog;
      cdsMetasGenericasXNiveisCapacidadeSelecionadas.SaveToFile(PathBaseDadosXML+XMLNivelCapacidadeXMetasGenericas,dfXML);
    end;
  except
    on E: exception do
    begin
      Application.MessageBox(PChar('Ocorreu um erro:' + #13#10 + E.Message), 'SYSGER', MB_ICONWARNING);

    end;
  end

end;

function TfrmCadastroNivelCapacidade.permiteExcluir(): Boolean;
begin
  Result := true;
end;

function TfrmCadastroNivelCapacidade.permiteGravar():Boolean;
begin
  Result := false;
  if cdsCadastroNome.IsNull then
    Application.MessageBox(Pchar('Nome não pode ser vazio'),
                           Pchar(Application.Title),MB_ICONEXCLAMATION)
  else
    Result := true;
end;

procedure TfrmCadastroNivelCapacidade.tabCadastroShow(Sender: TObject);
begin
  inherited;
  LoadMetasGenericasSelecionadas();
  LoadMetasGenericasDisponiveis();
end;

procedure TfrmCadastroNivelCapacidade.LoadMetasGenericasDisponiveis();
begin
  Try
    cdsMetasGenericasDisponiveis.Close();
    if FileExists(PathBaseDadosXML+XMLMetaGenerica) then
      cdsMetasGenericasDisponiveis.LoadFromFile(PathBaseDadosXML+XMLMetaGenerica)
    else
      cdsMetasGenericasDisponiveis.CreateDataSet();
    cdsMetasGenericasDisponiveis.Open();
    cdsMetasGenericasDisponiveis.First();
    while not cdsMetasGenericasDisponiveis.eof do
    begin
      if (cdsMetasGenericasXNiveisCapacidadeSelecionadas.Locate('FK_IDMetaGenerica',cdsMetasGenericasDisponiveisId.AsString,[])) then
        cdsMetasGenericasDisponiveis.Delete()
      else
        cdsMetasGenericasDisponiveis.Next;
    end;
  Except
    on E:Exception do
    begin
      Application.MessageBox(Pchar('Ocorreu o seguinte erro ao carregar as Areas de Processo : '+#13#10+E.Message),
                             Pchar(Application.Title),MB_ICONERROR);
    end;

  End;
end;


procedure TfrmCadastroNivelCapacidade.LoadMetasGenericasSelecionadas();
begin
  Try
    cdsMetasGenericasXNiveisCapacidadeSelecionadas.Filtered := false;
    cdsMetasGenericasXNiveisCapacidadeSelecionadas.Close();
    if FileExists(PathBaseDadosXML+XMLNivelCapacidadeXMetasGenericas) then
      cdsMetasGenericasXNiveisCapacidadeSelecionadas.LoadFromFile(PathBaseDadosXML+XMLNivelCapacidadeXMetasGenericas)
    else
      cdsMetasGenericasXNiveisCapacidadeSelecionadas.CreateDataSet();
    cdsMetasGenericasXNiveisCapacidadeSelecionadas.Open();
    if cdsCadastroId.AsString<>EmptyStr then
    begin
      cdsMetasGenericasXNiveisCapacidadeSelecionadas.Filtered := false;
      cdsMetasGenericasXNiveisCapacidadeSelecionadas.Filter := 'FK_IDNIVELCAPACIDADE='+cdsCadastroId.AsString;
      cdsMetasGenericasXNiveisCapacidadeSelecionadas.Filtered := True;
    end;
  Except
    on E:Exception do
    begin
      Application.MessageBox(Pchar('Ocorreu o seguinte erro ao carregar as Metas Genericas Selecionadas : '+#13#10+E.Message),
                             Pchar(Application.Title),MB_ICONERROR);
    end;

  End;
end;
procedure TfrmCadastroNivelCapacidade.LoadMetasCadastradas();
begin
  Try
    cdsMetasGenericasCadastradas.Close();
    if FileExists(PathBaseDadosXML+XMLMetaGenerica) then
      cdsMetasGenericasCadastradas.LoadFromFile(PathBaseDadosXML+XMLMetaGenerica)
    else
      cdsMetasGenericasCadastradas.CreateDataSet();
    cdsMetasGenericasCadastradas.Open();
  Except
    on E:Exception do
    begin
      Application.MessageBox(Pchar('Ocorreu o seguinte erro ao carregar as Metas Genericas Cadastradas : '+#13#10+E.Message),
                             Pchar(Application.Title),MB_ICONERROR);
    end;

  End;
end;

end.
