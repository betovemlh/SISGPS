unit TemplateCadastro;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls,  ExtCtrls,  Provider, DBClient, Db,
  ADODB,  Menus,
  Grids, DBGrids, Buttons, ComCtrls,uVariaveis;
type
  TfrmCadastroTemplate = class(TForm)
    pnl2: TPanel;
    dsCadastro: TDataSource;
    cdsCadastro: TClientDataSet;
    pgControl: TPageControl;
    tabConsulta: TTabSheet;
    dbgrd1: TDBGrid;
    pnl1: TPanel;
    btnNovo: TBitBtn;
    btnEditar: TBitBtn;
    btnExcluir: TBitBtn;
    tabCadastro: TTabSheet;
    pnl3: TPanel;
    btn1: TBitBtn;
    btnGravar: TBitBtn;
    btnCancelar: TBitBtn;
    procedure btnSairClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure cdsCadastroReconcileError(DataSet: TClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure btnNovoClick(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure tabConsultaShow(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure cdsCadastroNewRecord(DataSet: TDataSet);
    procedure pgControlChange(Sender: TObject);
    procedure dbgrd1DblClick(Sender: TObject);
  private
    { Private declarations }
    FTabelaXML:String;
    FNomeCabecalhoExcel:String;
    FNomeTabela:String;
    FCampoPrimario:String;
    FLimiteRegistrosListagem:Integer;
    FUsarTransacao:Boolean;

    procedure CarregaListagem(bWhere:Boolean);
    procedure   Novo();
    procedure   Editar();
    procedure Cancelar();
    procedure  Gravar();
    function   getLastId():integer;
  public
    property TabelaXML:String read FTabelaXML write FTabelaXML ;
    property NomeCabecalhoExcel:String read FNomeCabecalhoExcel write FNomeCabecalhoExcel ;
    property CampoPrimario:String read FCampoPrimario write FCampoPrimario;
    { Public declarations }
    function permiteGravar():Boolean;Virtual;
    function permiteExcluir():Boolean;Virtual;
  end;

var
  frmCadastroTemplate: TfrmCadastroTemplate;

implementation

{$R *.DFM}

procedure TfrmCadastroTemplate.CarregaListagem(bWhere:Boolean);
begin
  Try
    cdsCadastro.Close();
    if FileExists(PathBaseDadosXML+TabelaXML) then
      cdsCadastro.LoadFromFile(PathBaseDadosXML+TabelaXML)
    else
      cdsCadastro.CreateDataSet();
    cdsCadastro.Open();
  Except
    on E:Exception do
    begin
      Application.MessageBox(Pchar('Ocorreu o seguinte erro : '+#13#10+E.Message),
                             Pchar(Application.Title),MB_ICONERROR);
    end;

  End;
end;

procedure TfrmCadastroTemplate.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadastroTemplate.btnExcluirClick(Sender: TObject);
begin
  if not cdsCadastro.FieldByName(CampoPrimario).isNull then
    if Application.MessageBox('Deseja remover o registro selecionado?',
      'SYSGER', MB_YESNO) = IDYES then
    begin
      Try
        if permiteExcluir() then
        begin
          cdsCadastro.Delete();
          cdsCadastro.MergeChangeLog();
          cdsCadastro.SaveToFile(PathBaseDadosXML+TabelaXML,dfXML);
          CarregaListagem(True);
        end;
      except
        on E:Exception do
        begin
          Application.MessageBox(PChar('Ocorreu um erro:' + #13#10 + E.Message), 'SYSGER', MB_ICONWARNING);
        end;
      end
    end;
end;

procedure TfrmCadastroTemplate.btnGravarClick(Sender: TObject);
begin
 if permiteGravar then
    Gravar();
end;

procedure TfrmCadastroTemplate.FormCreate(Sender: TObject);
begin
  if ((PathBaseDadosXML=EmptyStr) or  (not(DirectoryExists(PathBaseDadosXML))))  then
  begin
    Application.MessageBox(Pchar('Diret�rio de tabelas XML n�o configurado ou caminho inexistente.'),
                          Pchar(application.Title),MB_ICONEXCLAMATION);
    close();
  end;
  tabCadastro.TabVisible := false;
  CarregaListagem(false);
end;

function TfrmCadastroTemplate.getLastId: integer;
var cdsTemp:TClientDataSet;
begin
  if cdsCadastro.IsEmpty then
    Result :=1
  else begin
    Try
      cdsTemp := TClientDataSet.Create(self);
      cdsTemp.CloneCursor(cdsCadastro,false,false);
      cdsTemp.Last();
      Result := cdsTemp.FieldByName('id').AsInteger
    Finally
      cdsTemp.Free();
    End;
  end;
end;

procedure TfrmCadastroTemplate.btnNovoClick(Sender: TObject);
begin
  Novo();
end;

procedure TfrmCadastroTemplate.btn1Click(Sender: TObject);
begin
  Close();
end;

procedure TfrmCadastroTemplate.btn2Click(Sender: TObject);
begin
  Editar();
end;

procedure TfrmCadastroTemplate.btnCancelarClick(Sender: TObject);
begin
  Cancelar();
end;



procedure TfrmCadastroTemplate.Novo;
begin
  cdsCadastro.Append();
  tabCadastro.TabVisible := true;
  pgControl.ActivePage := tabCadastro;
  pgControl.Repaint();
end;


procedure TfrmCadastroTemplate.btnEditarClick(Sender: TObject);
begin
  Editar();
end;

procedure TfrmCadastroTemplate.Editar;
begin
  if cdsCadastro.FieldByName(CampoPrimario).isNull then
  begin
    Application.MessageBox(PChar('Nenhum registro selecionado para edi��o.'), 'SYSGER', MB_ICONWARNING);
    exit;
  end;
  tabCadastro.TabVisible := true;
  pgControl.ActivePage := tabCadastro;
  pgControl.Repaint();
  cdsCadastro.Edit();
end;

procedure TfrmCadastroTemplate.Cancelar;
begin
  cdsCadastro.Cancel();
  pgControl.ActivePage := tabConsulta;
  tabCadastro.TabVisible := false;
end;

procedure TfrmCadastroTemplate.cxButton2Click(Sender: TObject);
begin
  if permiteGravar then
    Gravar();
end;

procedure TfrmCadastroTemplate.Gravar;
begin
  try
    if (cdsCadastro.state in [dsInsert,dsEdit]) then
      cdsCadastro.Post();
    if cdsCadastro.ChangeCount > 0 then
    begin
      cdsCadastro.MergeChangeLog;
      cdsCadastro.SaveToFile(PathBaseDadosXML+TabelaXML,dfXML);
    end;
    Application.MessageBox(Pchar('Salvo com sucesso.'),
                                 'SYSGER',MB_ICONEXCLAMATION);
    pgControl.ActivePage := tabConsulta;
    tabCadastro.TabVisible := false;
    CarregaListagem(false);
    pgControl.Repaint();
  except
    on E: exception do
    begin
      Application.MessageBox(PChar('Ocorreu um erro:' + #13#10 + E.Message), 'SYSGER', MB_ICONWARNING);

    end;
  end
end;


procedure TfrmCadastroTemplate.tabConsultaShow(Sender: TObject);
begin
//  tabCadastro.TabVisible := false;
end;


function TfrmCadastroTemplate.permiteGravar: Boolean;
begin
  raise exception.create('Fa�a Override  da funcao permiteGravar!');
end;

procedure TfrmCadastroTemplate.pgControlChange(Sender: TObject);
begin
  if pgControl.ActivePage=tabConsulta then
    tabCadastro.TabVisible := false;  
end;

procedure TfrmCadastroTemplate.cxGrid1DBTableView1DblClick(
  Sender: TObject);
begin
  btnEditar.Click();
end;

procedure TfrmCadastroTemplate.dbgrd1DblClick(Sender: TObject);
begin
  btnEditar.Click();
end;

function TfrmCadastroTemplate.permiteExcluir: Boolean;
begin
  raise exception.create('Fa�a Override  da funcao permiteExcluir!');
end;


procedure TfrmCadastroTemplate.cdsCadastroNewRecord(DataSet: TDataSet);
begin
  Dataset.FieldByName(CampoPrimario).AsInteger := getLastId()+1;
end;

procedure TfrmCadastroTemplate.cdsCadastroReconcileError(
  DataSet: TClientDataSet; E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
  raise exception.create(E.Message);
end;



end.
