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
  UVariaveis in 'Template\UVariaveis.pas',
  CadastroMetaGenerica in 'Source\CadastroMetaGenerica.pas' {frmCadastroMetaGenerica},
  CadastroMetasEspecificas in 'Source\CadastroMetasEspecificas.pas' {frmCadastroMetasEspecificas},
  CadastroNivelCapacidade in 'Source\CadastroNivelCapacidade.pas' {frmCadastroNivelCapacidade},
  CadastroNivelMaturidade in 'Source\CadastroNivelMaturidade.pas' {frmCadastroNivelMaturidade},
  CadastroCategoria in 'Source\CadastroCategoria.pas' {frmCadastroCategoria},
  CadastroPraticasEspecificas in 'Source\CadastroPraticasEspecificas.pas' {frmCadastroPraticasEspecificas};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Sistema de Gerenciamento de Modelos de Projeto de Software';
  Application.CreateForm(TfrmTelaPrincipal, frmTelaPrincipal);
  Application.Run;
end.
