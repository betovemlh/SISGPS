unit TemplateCadastroArquivoIni;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls,IniFiles;

type
  TTemplateCadastroIni = class(TForm)
    pnl1: TPanel;
    pnl2: TPanel;
    btn1: TBitBtn;
    btnGravar: TBitBtn;
    btn2: TBitBtn;
    procedure btnGravarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  FCaminhoArquivoIni:String;
  procedure LoadIni();
  procedure SaveIni();
  procedure Limpar();
  public
    { Public declarations }
    property CaminhoArquivoIni:String read FCaminhoArquivoIni write FCaminhoArquivoIni;
    function permiteGravar():Boolean;Virtual;
  end;

var
  TemplateCadastroIni: TTemplateCadastroIni;

implementation

{$R *.dfm}

{ TForm1 }

procedure TTemplateCadastroIni.btn1Click(Sender: TObject);
begin
  Close();
end;

procedure TTemplateCadastroIni.btn2Click(Sender: TObject);
begin
  Limpar();
end;

procedure TTemplateCadastroIni.btnGravarClick(Sender: TObject);
begin
  if permiteGravar() then
    SaveIni();
end;

procedure TTemplateCadastroIni.FormCreate(Sender: TObject);
begin
  LoadIni();
end;

procedure TTemplateCadastroIni.Limpar;
var i:integer;
begin
  for i:= 0 to (self.ComponentCount -1) do
  begin
     if self.Components[i] is TEdit then
       TEdit(self.Components[i]).Clear;
  end;
end;

procedure TTemplateCadastroIni.LoadIni;
var config: TIniFile;
i:integer;
begin
  Try
    {Cria o ini em tempo de execucao}
    config    := TIniFile.Create(CaminhoArquivoIni);
    {Le do cabecalho default , com a linha de nome usuario e carrega na variavel sUsuario}
    for i:= 0 to (self.ComponentCount -1) do
    begin
       if self.Components[i] is TEdit then
      TEdit(self.Components[i]).text := config.readstring('configuracoes', self.Components[i].Name, '');
    end;
  Finally
    config.Free;
  End;
end;

function TTemplateCadastroIni.permiteGravar: Boolean;
begin
  raise exception.create('Fa�a Override  da funcao permiteGravar!');
end;

procedure TTemplateCadastroIni.SaveIni;
var config: TIniFile;
i:integer;
begin
  Try
    Try
      {Cria o ini em tempo de execucao}
      config    := TIniFile.Create(CaminhoArquivoIni);
      {Le do cabecalho default , com a linha de nome usuario e carrega na variavel sUsuario}
      for i:= 0 to (self.ComponentCount -1) do
      begin
       if self.Components[i] is TEdit then
         config.WriteString('configuracoes',TEdit(self.Components[i]).name, TEdit(self.Components[i]).text);
      end;
    Finally
      config.Free;
    End;
    Application.MessageBox(Pchar('Salvo com sucesso.Para que as altera��es tenha efeito, reinicie o sistema.'),
                          Pchar(application.Title),MB_OK);
  except
    on E:Exception do
    begin
      Application.MessageBox(Pchar('Ocorreu um erro ao tentar salvar : '+#13#10+E.Message),
                             Pchar(application.Title),MB_ICONERROR);
    end;
  End;
end;

end.