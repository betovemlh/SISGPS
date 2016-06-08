unit CadastroMetaGenerica;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TemplateCadastro, DB, DBClient, StdCtrls, Buttons, Grids, DBGrids,
  ComCtrls, ExtCtrls, DBCtrls, Mask,UVariaveis;

type
  TfrmCadastroMetaGenerica = class(TfrmCadastroTemplate)
    cdsCadastroId: TIntegerField;
    cdsCadastroNome: TStringField;
    cdsCadastrosigla: TStringField;
    cdsCadastroDescricao: TMemoField;
    cdsCadastroDataCriacao: TDateTimeField;
    dbedtDataCriacao1: TDBEdit;
    dbedtId: TDBEdit;
    lbl1: TLabel;
    lbl5: TLabel;
    dbmmoInformacoesGerais: TDBMemo;
    lbl4: TLabel;
    dbedtNome: TDBEdit;
    lbl2: TLabel;
    lbl3: TLabel;
    dbedtNome1: TDBEdit;
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
  frmCadastroMetaGenerica: TfrmCadastroMetaGenerica;

implementation

{$R *.dfm}

procedure TfrmCadastroMetaGenerica.cdsCadastroNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsCadastroDataCriacao.AsDateTime := now();
end;

procedure TfrmCadastroMetaGenerica.FormCreate(Sender: TObject);
begin
  CampoPrimario := 'id';
  TabelaXML := XMLMetaGenerica;
  inherited;
end;

function TfrmCadastroMetaGenerica.permiteExcluir: Boolean;
begin
  Result := true;
end;

function TfrmCadastroMetaGenerica.permiteGravar: Boolean;
begin
  Result := false;
  if cdsCadastroNome.IsNull then
    Application.MessageBox(Pchar('Nome não pode ser vazio'),
                           Pchar(Application.Title),MB_ICONEXCLAMATION)
  else if  cdsCadastrosigla.IsNull then
    Application.MessageBox(Pchar('Sigla não pode ser vazia'),
                           Pchar(Application.Title),MB_ICONEXCLAMATION)
  else
    Result := true;
end;

end.
