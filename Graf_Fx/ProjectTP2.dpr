program ProjectTP2;

uses
  Forms,
  FuncionesTP2 in 'FuncionesTP2.pas' {FormMainFunciones},
  UCalRaiz in 'UCalRaiz.pas',
  FormAbout in 'FormAbout.pas' {FormAboutFunciones};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormMainFunciones, FormMainFunciones);
  Application.CreateForm(TFormAboutFunciones, FormAboutFunciones);
  Application.Run;
end.
