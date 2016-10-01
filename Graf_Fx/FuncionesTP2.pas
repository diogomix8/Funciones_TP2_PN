unit FuncionesTP2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Menus, GrafFuncion, uFuncion, DiffExpress;

type
  TFormMainFunciones = class(TForm)
    MainMenu: TMainMenu;
    MenuArchivo: TMenuItem;
    MenuAyuda: TMenuItem;
    MenuItemBiseccion: TMenuItem;
    PanelMetBiseccion: TPanel;
    LabelFuncion: TLabel;
    EditFuncion: TEdit;
    Graficador1: TGraficador;
    ButtonGraficar: TButton;
    ButtonZoomIn: TButton;
    LabelTitle: TLabel;
    ButtonCancelarBiseccion: TButton;
    LabelActGraficador: TLabel;
    LabeMaxX: TLabel;
    LabelMaxY: TLabel;
    LabelMinX: TLabel;
    LabelMinY: TLabel;
    EditMaxX: TEdit;
    EditMaxY: TEdit;
    EditMinX: TEdit;
    EditMinY: TEdit;
    ButtonActualizarGraficador: TButton;
    ButtonZoomOut: TButton;
    LabelTitleRaiz: TLabel;
    LabelIntervalo: TLabel;
    LabelError: TLabel;
    EditIntervalo: TEdit;
    EditError: TEdit;
    PanelDatosRaiz: TPanel;
    Button1: TButton;
    ButtonLimpiar: TButton;
    PanelMuestraResult: TPanel;
    LabelMuestraResult: TLabel;
    LabelShowIntervalo: TLabel;
    LabelShowRaiz: TLabel;
    MenuItemSalir: TMenuItem;
    LabelDerivada: TLabel;
    LabelShowDerivada: TLabel;
    procedure MenuItemBiseccionClick(Sender: TObject);
    procedure ButtonGraficarClick(Sender: TObject);
    procedure ButtonZoomInClick(Sender: TObject);
    procedure ButtonActualizarGraficadorClick(Sender: TObject);
    procedure ButtonCancelarBiseccionClick(Sender: TObject);
    procedure ButtonZoomOutClick(Sender: TObject);
    procedure MenuItemSalirClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMainFunciones: TFormMainFunciones;

implementation

{$R *.dfm}

{ Hacemos Visibles los paneles para que podamos trabajar con el Método de Bisección. }
procedure TFormMainFunciones.MenuItemBiseccionClick(Sender: TObject);
begin
     PanelMetBiseccion.Visible:=true;
     PanelDatosRaiz.Visible:=true;
     PanelMuestraResult.Visible:=true;

end;

{======================= BOTON "GRAFICAR" =======================}
procedure TFormMainFunciones.ButtonGraficarClick(Sender: TObject);
var
   sFuncion:string;
begin
     sFuncion:=EditFuncion.Text;
     Graficador1.formula:=sFuncion;
end;
{======================= BOTON "GRAFICAR" =======================}

{ ====================== BOTON "ZOOM (+)" ===========================}
procedure TFormMainFunciones.ButtonZoomInClick(Sender: TObject);
begin
     Graficador1.zoomOut;
end;
{ ====================== BOTON "ZOOM (+)" ===========================}

{ ====================== BOTON "ZOOM (-)" ===========================}
procedure TFormMainFunciones.ButtonZoomOutClick(Sender: TObject);
begin
     Graficador1.zoomIn;
end;
{ ====================== BOTON "ZOOM (-)" ===========================}

procedure TFormMainFunciones.ButtonActualizarGraficadorClick(Sender: TObject);
var
   sMaxX, sMaxy, sMinX, sMinY: string;
   dMaxX, dMaxy, dMinX, dMinY: double;
   e:integer;
begin
     { Tomamos los datos de los Edit y actulizamos los atributos del Graficador }
     { Valores maximos de los ejes x e y }
     sMaxX:=EditMaxX.Text;Val(sMaxX,dMaxX,e);
     sMaxy:=EditMaxY.Text;Val(sMaxy,dMaxy,e);
     { Valores minimos de los ejes x e y }
     sMinX:=EditMinX.Text;Val(sMinX,dMinX,e);
     sMinY:=EditMinY.Text;Val(sMinY,dMinY,e);
     { Ahora seteamos los valores dados}
     Graficador1.maxX:=dMaxX;
     Graficador1.maxY:=dMaxy;
     Graficador1.minX:=dMinX;
     Graficador1.minY:=dMinY;
end;

procedure TFormMainFunciones.ButtonCancelarBiseccionClick(Sender: TObject);
begin
     { Al cancelar solo cerramos el panel haciendolo no visible }
     PanelMetBiseccion.Visible:=false;
     PanelDatosRaiz.Visible:=false;
     PanelMuestraResult.Visible:=false;
end;

{ Al salir de programa principal, destruimos todos los objetos del graficador y cerramos. }
procedure TFormMainFunciones.MenuItemSalirClick(Sender: TObject);
begin
     Graficador1.Destroy;
     FormMainFunciones.Close;
end;

procedure TFormMainFunciones.Button1Click(Sender: TObject);
begin
     { Mostramos el contenido Derivada }
     LabelShowDerivada.Caption:=Graficador1.Derivada;
end;

end.
