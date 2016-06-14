unit CadastroPraticasEspecificas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TemplateCadastro, DB, DBClient, StdCtrls, Buttons, Grids, DBGrids,
  ComCtrls, ExtCtrls, DBCtrls, Mask,UVariaveis;

type
  TfrmCadastroPraticasEspecificas = class(TfrmCadastroTemplate)
    cdsCadastroId: TIntegerField;
    cdsCadastroDataCriacao: TDateTimeField;
    cdsCadastroSigla: TStringField;
    cdsCadastroNome: TStringField;
    cdsCadastroDescricao: TMemoField;
    dbedtNome1: TDBEdit;
    lbl3: TLabel;
    lbl2: TLabel;
    dbedtNome: TDBEdit;
    dbedtDataCriacao1: TDBEdit;
    lbl5: TLabel;
    dbedtId: TDBEdit;
    lbl1: TLabel;
    dbmmoInformacoesGerais: TDBMemo;
    lbl4: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure cdsCadastroNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroPraticasEspecificas: TfrmCadastroPraticasEspecificas;

implementation

{$R *.dfm}

procedure TfrmCadastroPraticasEspecificas.cdsCadastroNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsCadastroDataCriacao.AsDateTime := now();
end;

procedure TfrmCadastroPraticasEspecificas.FormCreate(Sender: TObject);
begin
  CampoPrimario := 'id';
  TabelaXML := XmlPraticasEspecificas;
  inherited;
end;

end.
