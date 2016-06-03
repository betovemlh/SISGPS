unit TelaPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, Buttons;

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
    procedure tmr1Timer(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTelaPrincipal: TfrmTelaPrincipal;

implementation

uses CadastroModeloReferencia, CadastroAreaProcesso, CadastroFormaRepresentacao,
  ConfiguracoesSistema,UVariaveis;

{$R *.dfm}

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