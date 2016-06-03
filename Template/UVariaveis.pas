unit UVariaveis;

interface
 var  PathBaseDadosXML:String;
 procedure LoadVariables();
implementation

uses IniFiles,Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TemplateCadastroArquivoIni, StdCtrls, Buttons, ExtCtrls;

procedure LoadVariables();
var config: TIniFile;
begin
  Try
    {Cria o ini em tempo de execucao}
    config    := TIniFile.Create(ExtractFilePath(Application.ExeName)+'\config.ini');
    PathBaseDadosXML := config.readstring('configuracoes', 'edtPathBaseDadosXML', '');
  Finally
    config.Free;
  End;
end;
end.