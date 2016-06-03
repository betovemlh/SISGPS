program SISGPS;

uses
  Forms,
  TemplateCadastro in 'Template\TemplateCadastro.pas' {frmCadastroTemplate},
  CadastroModeloReferencia in 'Source\CadastroModeloReferencia.pas' {frmCadastroModeloReferencia},
  MidasLib,
  TelaPrincipal in 'Source\TelaPrincipal.pas' {frmTelaPrincipal},
  CadastroAreaProcesso in 'Source\CadastroAreaProcesso.pas' {frmCadastroAreaProcesso},
  CadastroFormaRepresentacao in 'Source\CadastroFormaRepresentacao.pas' {frmCadastroFormaRepresentacao},
  TemplateCadastroArquivoIni in 'Template\TemplateCadastroArquivoIni.pas' {TemplateCadastroIni},
  ConfiguracoesSistema in 'Source\ConfiguracoesSistema.pas' {frmConfiguracoesSistema},
  UVariaveis in 'Template\UVariaveis.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Sistema de Gerenciamento de Modelos de Projeto de Software';
  Application.CreateForm(TfrmTelaPrincipal, frmTelaPrincipal);
  Application.Run;
end.
