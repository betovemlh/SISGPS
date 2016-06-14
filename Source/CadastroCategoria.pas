unit CadastroCategoria;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TemplateCadastro, DB, DBClient, StdCtrls, Buttons, Grids, DBGrids,
  ComCtrls, ExtCtrls, Mask, DBCtrls,UVariaveis;

type
  TfrmCadastroCategoria = class(TfrmCadastroTemplate)
    cdsCadastroId: TIntegerField;
    cdsCadastroDataCriacao: TDateTimeField;
    cdsCadastroNome: TStringField;
    dbedtNome: TDBEdit;
    lbl2: TLabel;
    dbedtId: TDBEdit;
    lbl1: TLabel;
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
  frmCadastroCategoria: TfrmCadastroCategoria;

implementation

{$R *.dfm}

procedure TfrmCadastroCategoria.cdsCadastroNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsCadastroDataCriacao.AsDateTime := now();
end;

procedure TfrmCadastroCategoria.FormCreate(Sender: TObject);
begin
  CampoPrimario := 'id';
  TabelaXML := XMLCategoria;
  inherited;
end;

function TfrmCadastroCategoria.permiteExcluir: Boolean;
begin
  Result := true;
end;

function TfrmCadastroCategoria.permiteGravar: Boolean;
begin
   Result := false;
  if cdsCadastroNome.IsNull then
    Application.MessageBox(Pchar('Nome não pode ser vazio'),
                           Pchar(Application.Title),MB_ICONEXCLAMATION)
  else
    Result := true;
end;

end.
