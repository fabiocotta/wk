unit untPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.CategoryButtons, Vcl.Buttons, Vcl.WinXCtrls,
  System.ImageList, Vcl.ImgList, Vcl.ComCtrls;

type
  TfrmPrincipal = class(TForm)
    pTela: TPanel;
    pNavbar: TPanel;
    Image2: TImage;
    pUsuario: TPanel;
    lblLoginUsuario: TLabel;
    lblEmailUsuario: TLabel;
    pContainer: TPanel;
    sMenu: TSplitView;
    pLogo: TPanel;
    imgLogo: TImage;
    CategoryMenuButtons: TCategoryButtons;
    ImageList: TImageList;
    sbarFooter: TStatusBar;
    Timer: TTimer;
    SpeedButton1: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure CategoryMenuButtonsCategories0Items1Click(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
    procedure CategoryMenuButtonsCategories0Items0Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.CategoryMenuButtonsCategories0Items0Click(
  Sender: TObject);
begin
  //TNavigation.Open(TFrmPedido, FrmPedido, pContainer);
end;

procedure TfrmPrincipal.CategoryMenuButtonsCategories0Items1Click(
  Sender: TObject);
begin
   Application.Terminate;
end;

procedure TfrmPrincipal.SpeedButton1Click(Sender: TObject);
begin
   sMenu.Opened := NOT sMenu.Opened;
end;

procedure TfrmPrincipal.TimerTimer(Sender: TObject);
begin
  sbarFooter.Panels.Items[0].Text := FormatDateTime ('dddd", "dd" de "mmmm" de "yyyy',now);
  sbarFooter.Panels.Items[1].Text := TimeToStr(Time);
end;

end.
