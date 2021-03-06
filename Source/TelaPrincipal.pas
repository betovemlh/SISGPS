unit TelaPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, Buttons, dxGDIPlusClasses;

type
  TfrmTelaPrincipal = class(TForm)
    pnl1: TPanel;
    pnl2: TPanel;
    lbl1: TLabel;
    statusBar: TStatusBar;
    tmr1: TTimer;
    btn1: TBitBtn;
    btn2: TBitBtn;
    btn3: TBitBtn;
    btn4: TBitBtn;
    btn5: TBitBtn;
    btn6: TBitBtn;
    btn7: TBitBtn;
    btn8: TBitBtn;
    btn9: TBitBtn;
    btn10: TBitBtn;
    btn11: TBitBtn;
    shp1: TShape;
    shp2: TShape;
    shp3: TShape;
    shp5: TShape;
    shp4: TShape;
    shp6: TShape;
    shp7: TShape;
    btn12: TBitBtn;
    shp8: TShape;
    procedure tmr1Timer(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure btn8Click(Sender: TObject);
    procedure btn10Click(Sender: TObject);
    procedure btn9Click(Sender: TObject);
    procedure btn11Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTelaPrincipal: TfrmTelaPrincipal;

implementation

uses CadastroModeloReferencia, CadastroAreaProcesso, CadastroFormaRepresentacao,
  ConfiguracoesSistema,UVariaveis, CadastroMetaGenerica,
  CadastroMetasEspecificas, CadastroNivelCapacidade, CadastroCategoria,
  CadastroNivelMaturidade, CadastroPraticasEspecificas;

{$R *.dfm}

procedure TfrmTelaPrincipal.btn10Click(Sender: TObject);
begin
  Try
    Application.CreateForm(TfrmCadastroCategoria,frmCadastroCategoria);
    frmCadastroCategoria.ShowModal();
  Finally
    frmCadastroCategoria.Free;
  End;
end;

procedure TfrmTelaPrincipal.btn11Click(Sender: TObject);
begin
  Try
    Application.CreateForm(TfrmCadastroPraticasEspecificas,frmCadastroPraticasEspecificas);
    frmCadastroPraticasEspecificas.ShowModal();
  Finally
    frmCadastroPraticasEspecificas.Free;
  End;
end;

procedure TfrmTelaPrincipal.btn1Click(Sender: TObject);
begin
  Application.Terminate();
end;

procedure TfrmTelaPrincipal.btn2Click(Sender: TObject);
begin
  Try
    Application.CreateForm(TfrmCadastroModeloReferencia,frmCadastroModeloReferencia);
    frmCadastroModeloReferencia.ShowModal();
  Finally
    frmCadastroModeloReferencia.Free;
  End;
end;

procedure TfrmTelaPrincipal.btn3Click(Sender: TObject);
begin
  Try
    Application.CreateForm(TfrmCadastroAreaProcesso,frmCadastroAreaProcesso);
    frmCadastroAreaProcesso.ShowModal();
  Finally
    frmCadastroAreaProcesso.Free;
  End;
end;

procedure TfrmTelaPrincipal.btn4Click(Sender: TObject);
begin
  Try
    Application.CreateForm(TfrmCadastroFormaRepresentacao,frmCadastroFormaRepresentacao);
    frmCadastroFormaRepresentacao.ShowModal();
  Finally
    frmCadastroFormaRepresentacao.Free;
  End;
end;

procedure TfrmTelaPrincipal.btn5Click(Sender: TObject);
begin
  Try
    Application.CreateForm(TfrmConfiguracoesSistema,frmCOnfiguracoesSistema);
    frmCOnfiguracoesSistema.ShowModal();
  Finally
    frmCOnfiguracoesSistema.Free;
  End;
end;

procedure TfrmTelaPrincipal.btn6Click(Sender: TObject);
begin
  Try
    Application.CreateForm(TfrmCadastroMetaGenerica,frmCadastroMetaGenerica);
    frmCadastroMetaGenerica.ShowModal();
  Finally
    frmCadastroMetaGenerica.Free;
  End;
end;

procedure TfrmTelaPrincipal.btn7Click(Sender: TObject);
begin
  Try
    Application.CreateForm(TfrmCadastroMetasEspecificas,frmCadastroMetasEspecificas);
    frmCadastroMetasEspecificas.ShowModal();
  Finally
    frmCadastroMetasEspecificas.Free;
  End;
end;

procedure TfrmTelaPrincipal.btn8Click(Sender: TObject);
begin
  Try
    Application.CreateForm(TfrmCadastroNivelCapacidade,frmCadastroNivelCapacidade);
    frmCadastroNivelCapacidade.ShowModal();
  Finally
    frmCadastroNivelCapacidade.Free;
  End;
end;

procedure TfrmTelaPrincipal.btn9Click(Sender: TObject);
begin
  Try
    Application.CreateForm(TFrmCadastroNivelMaturidade,FrmCadastroNivelMaturidade);
    FrmCadastroNivelMaturidade.ShowModal();
  Finally
    FrmCadastroNivelMaturidade.Free;
  End;
end;

procedure TfrmTelaPrincipal.FormCreate(Sender: TObject);
begin
  LoadVariables();
end;

procedure TfrmTelaPrincipal.tmr1Timer(Sender: TObject);
begin
  statusBar.Panels.Items[0].Text := 'Data : '+FormatDateTime('dd/mm/yyyy',now());
  statusBar.Panels.Items[1].Text := 'Hora : '+FormatDateTime('hh:mm:ss',now());
end;

end.
