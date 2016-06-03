unit CadastroModeloReferencia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TemplateCadastro, DB, Provider, DBClient, ADODB, StdCtrls, Buttons,
  Grids, DBGrids, ComCtrls, ExtCtrls,  DBCtrls,
   Mask;

type
  TfrmCadastroModeloReferencia = class(TfrmCadastroTemplate)
    cdsCadastroId: TIntegerField;
    cdsCadastroNome: TStringField;
    cdsCadastroDataCriacao: TDateTimeField;
    cdsCadastroInformacoesGerais: TBlobField;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    dbedt1: TDBEdit;
    dbedt2: TDBEdit;
    dbedt3: TDBEdit;
    dbmmo1: TDBMemo;
    procedure FormCreate(Sender: TObject);
    procedure cdsCadastroNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    function permiteGravar():Boolean;override;
    function permiteExcluir():Boolean;override;
  public
    { Public declarations }
  end;

var
  frmCadastroModeloReferencia: TfrmCadastroModeloReferencia;

implementation

{$R *.dfm}

procedure TfrmCadastroModeloReferencia.cdsCadastroNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsCadastroDataCriacao.AsDateTime := now();
end;

procedure TfrmCadastroModeloReferencia.FormCreate(Sender: TObject);
begin
  CampoPrimario := 'id';
  TabelaXML := 'ModeloReferencia.xml';
  inherited;
end;

function TfrmCadastroModeloReferencia.permiteExcluir: Boolean;
begin
  Result := true;
end;

function TfrmCadastroModeloReferencia.permiteGravar: Boolean;
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

end.
