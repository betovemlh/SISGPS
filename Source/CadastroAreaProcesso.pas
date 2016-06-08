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

end.
