unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls;

type
  THome = class(TForm)
    background: TImage;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure Label3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Home: THome;

implementation

{$R *.dfm}

uses Unit1;

procedure THome.Label3Click(Sender: TObject);
begin
home.show;
end;

end.
