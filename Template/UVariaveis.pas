unit UVariaveis;

interface
uses IniFiles,Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TemplateCadastroArquivoIni, StdCtrls, Buttons, ExtCtrls,DBClient, Db;


 function getLastId(cds:TClientDataSet;CampoPrimario:String): integer;
 procedure LoadVariables();


const
  XMLAreaProcesso: String = 'AreaProcesso.xml';
  XMLFormaRepresentacao: String = 'FormaRepresentacao.xml';
  XMLMetaGenerica: String = 'MetaGenerica.xml';
  XMLModeloReferencia:String='ModeloReferencia.xml';
  XMLNivelCapacidade:String='NivelCapacidade.xml';
  XMLNivelCapacidadeXMetasGenericas:String= 'NivelCapacidadeXMetasGenericas.xml';
  XMLMetasEspecificas:String='MetasEspecificas.xml';
  XMLPraticasEspecificas:String='PraticasEspecificas.xml';
  XMLCategoria:String='Categoria.xml';
  XMLNivelMaturidade:String='NivelMaturidade.xml';
  XMLNivelMaturidadeXAreaProcesso:String='NivelMaturidadeXAreaProcesso.xml';
 var  PathBaseDadosXML:String;



implementation



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

function getLastId(cds:TClientDataSet;CampoPrimario:String): integer;
var cdsTemp:TClientDataSet;
begin
  if cds.IsEmpty then
    Result :=1
  else begin
    Try
      cdsTemp := TClientDataSet.Create(nil);
      cdsTemp.CloneCursor(cds,false,false);
      cdsTemp.Last();
      Result := cdsTemp.FieldByName(CampoPrimario).AsInteger
    Finally
      cdsTemp.Free();
    End;
  end;
end;
end.
