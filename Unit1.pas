unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls, Vcl.ActnMenus, Vcl.Imaging.jpeg,
  Vcl.Menus, Vcl.OleCtrls, SHDocVw, shellapi;

type
  THome = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    old_Castle: TImage;
    Koloja: TImage;
    farnyj: TImage;
    Label1: TLabel;
    LblKoloja: TLabel;
    Lbl_old_castle: TLabel;
    Lbl_Farnij: TLabel;
    background: TImage;
    sinagoga: TImage;
    lblSinagoga: TLabel;
    new_castle: TImage;
    lbl_new_castle: TLabel;
    img_puppet: TImage;
    lbl_puppet: TLabel;
    procedure N5Click(Sender: TObject);
    procedure KolojaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure LblKolojaMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure LblKolojaMouseLeave(Sender: TObject);
    procedure LblKolojaClick(Sender: TObject);
    procedure Lbl_old_castleMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Lbl_old_castleMouseLeave(Sender: TObject);
    procedure Lbl_FarnijMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Lbl_FarnijMouseLeave(Sender: TObject);
    procedure old_CastleClick(Sender: TObject);
    procedure Lbl_old_castleClick(Sender: TObject);
    procedure farnyjClick(Sender: TObject);
    procedure Lbl_FarnijClick(Sender: TObject);
    procedure lblSinagogaClick(Sender: TObject);
    procedure lblSinagogaMouseLeave(Sender: TObject);
    procedure lblSinagogaMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure sinagogaClick(Sender: TObject);
    procedure FormMouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure FormMouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure new_castleClick(Sender: TObject);
    procedure lbl_new_castleClick(Sender: TObject);
    procedure lbl_new_castleMouseLeave(Sender: TObject);
    procedure lbl_new_castleMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure lbl_puppetClick(Sender: TObject);
    procedure lbl_puppetMouseLeave(Sender: TObject);
    procedure lbl_puppetMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure img_puppetClick(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Home: THome;
  path:string;

implementation

{$R *.dfm}

uses Unit2, Unit3;

procedure THome.farnyjClick(Sender: TObject);
begin
Home.hide;
 html.Show;
 html.WebBrowser1.navigate(path+'\Data\Farnij.html');
 html.mediaplayer1.filename:=path+'\Data\farnij.mp3';
 html.mediaplayer1.open;
end;

procedure THome.FormClose(Sender: TObject; var Action: TCloseAction);
begin
application.Terminate;
end;

procedure THome.FormCreate(Sender: TObject);
begin
path:=extractfiledir(Application.ExeName)
end;

procedure THome.FormMouseWheelDown(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
VertScrollBar.Position:=VertScrollBar.Position+20
end;

procedure THome.FormMouseWheelUp(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
VertScrollBar.Position:=VertScrollBar.Position-20;

end;


procedure THome.img_puppetClick(Sender: TObject);
begin
 Home.hide;
 html.show;
 html.WebBrowser1.Navigate(path+'\Data\puppet.htm');
 html.mediaplayer1.filename:=path+'\Data\puppet.mp3';
 html.mediaplayer1.open;
end;

procedure THome.new_castleClick(Sender: TObject);
begin
 Home.hide;
 html.Show;
 html.WebBrowser1.navigate(path+'\Data\new_castle.htm');
 html.mediaplayer1.filename:=path+'\Data\new_castle.mp3';
 html.mediaplayer1.open;
end;


procedure THome.sinagogaClick(Sender: TObject);
begin
 Home.hide;
 html.Show;
 html.WebBrowser1.navigate(path+'\Data\sinagoga.html');
 html.mediaplayer1.filename:=path+'\Data\sinagoga.mp3';
 html.mediaplayer1.open;
end;

procedure THome.KolojaClick(Sender: TObject);

begin
 Home.hide;
 html.Show;
 html.WebBrowser1.navigate(path+'\Data\Koloja.html');
 html.mediaplayer1.filename:=path+'\Data\Koloja.mp3';
 html.mediaplayer1.open;
 end;

procedure THome.lbl_new_castleClick(Sender: TObject);
begin
Home.hide;
html.Show;
html.WebBrowser1.navigate(path+'\Data\new_castle.htm');
html.mediaplayer1.filename:=path+'\Data\new_castle.mp3';
 html.mediaplayer1.open;
end;

procedure THome.lbl_new_castleMouseLeave(Sender: TObject);
begin
Lbl_new_castle.font.color:=clblack;
Lbl_new_castle.font.style:=[fsitalic,fsbold];
end;

procedure THome.lbl_new_castleMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
Lbl_new_castle.font.color:=clpurple;
Lbl_new_castle.font.style:=[fsunderline,fsitalic,fsbold];
end;

procedure THome.LblKolojaClick(Sender: TObject);
begin
Home.hide;
html.Show;
html.WebBrowser1.navigate(path+'\Data\Koloja.html');
html.mediaplayer1.filename:=path+'\Data\Koloja.mp3';
 html.mediaplayer1.open;
end;

procedure THome.LblKolojaMouseLeave(Sender: TObject);
begin
LblKoloja.font.color:=clblack;
LblKoloja.font.style:=[fsitalic,fsbold];
end;

procedure THome.LblKolojaMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
LblKoloja.font.color:=clpurple;
LblKoloja.font.style:=[fsunderline,fsitalic,fsbold];
end;

procedure THome.Lbl_FarnijClick(Sender: TObject);
begin
Home.hide;
 html.Show;
 html.WebBrowser1.navigate(path+'\Data\Farnij.html');
 html.mediaplayer1.filename:=path+'\Data\farnij.mp3';
 html.mediaplayer1.open;
end;

procedure THome.Lbl_FarnijMouseLeave(Sender: TObject);
begin
Lbl_Farnij.font.color:=clblack;
Lbl_Farnij.font.style:=[fsitalic,fsbold];
end;

procedure THome.Lbl_FarnijMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
Lbl_Farnij.font.color:=clpurple;
Lbl_Farnij.font.style:=[fsunderline,fsitalic,fsbold];
end;

procedure THome.Lbl_old_castleClick(Sender: TObject);
begin
home.hide;
html.Show;
html.WebBrowser1.navigate(path+'\Data\old_castle.html');
html.mediaplayer1.filename:=path+'\Data\old_castle.mp3';
 html.mediaplayer1.open;
end;

procedure THome.Lbl_old_castleMouseLeave(Sender: TObject);
begin
Lbl_old_castle.font.color:=clblack;
Lbl_old_castle.font.style:=[fsitalic,fsbold];
end;

procedure THome.Lbl_old_castleMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
Lbl_old_castle.font.color:=clpurple;
Lbl_old_castle.font.style:=[fsunderline,fsitalic,fsbold];
end;

procedure THome.lbl_puppetClick(Sender: TObject);
begin
Home.hide;
html.show;
html.WebBrowser1.navigate(path+'\Data\puppet.htm');
html.mediaplayer1.filename:=path+'\Data\puppet.mp3';
 html.mediaplayer1.open;
end;

procedure THome.lbl_puppetMouseLeave(Sender: TObject);
begin
Lbl_puppet.font.color:=clblack;
Lbl_puppet.font.style:=[fsitalic,fsbold];
end;

procedure THome.lbl_puppetMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 Lbl_puppet.font.color:=clpurple;
Lbl_puppet.font.style:=[fsunderline,fsitalic,fsbold];
end;

procedure THome.lblSinagogaClick(Sender: TObject);
begin
  Home.hide;
  html.show;
  html.WebBrowser1.navigate(path+'\Data\sinagoga.html');
  html.mediaplayer1.filename:=path+'\Data\sinagoga.mp3';
 html.mediaplayer1.open;
end;

procedure THome.lblSinagogaMouseLeave(Sender: TObject);
begin
LblSinagoga.font.color:=clblack;
LblSinagoga.font.style:=[fsitalic,fsbold]
end;

procedure THome.lblSinagogaMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
LblSinagoga.font.color:=clpurple;
LblSinagoga.font.style:=[fsunderline,fsitalic,fsbold];
end;

procedure THome.N5Click(Sender: TObject);
begin
application.Terminate;
end;

procedure THome.N6Click(Sender: TObject);
begin
ShellExecute(0,PChar('Open'),Pchar(path+'\Data\help.chm'),nil,nil,sw_show);
end;

procedure THome.old_CastleClick(Sender: TObject);
begin
  Home.hide;
  html.show;
  html.WebBrowser1.navigate(path+'\Data\old_castle.html');
  html.mediaplayer1.filename:=path+'\Data\old_castle.mp3';
 html.mediaplayer1.open;
end;

end.
