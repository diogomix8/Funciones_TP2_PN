unit FormAbout;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFormAboutFunciones = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    ButtonAceptarAbout: TButton;
    procedure ButtonAceptarAboutClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAboutFunciones: TFormAboutFunciones;

implementation

{$R *.dfm}

procedure TFormAboutFunciones.ButtonAceptarAboutClick(Sender: TObject);
begin
  FormAboutFunciones.Close;
end;

end.
