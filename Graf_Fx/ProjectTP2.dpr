program ProjectTP2;

uses
  Forms,
  FuncionesTP2 in 'FuncionesTP2.pas' {FormMainFunciones};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormMainFunciones, FormMainFunciones);
  Application.Run;
end.
