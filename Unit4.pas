unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.jpeg;

type
  Tzastavka = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Timer1: TTimer;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  zastavka: Tzastavka;

implementation

{$R *.dfm}

uses Unit1;

procedure Tzastavka.Timer1Timer(Sender: TObject);
begin
zastavka.hide;
home.show;
timer1.Enabled:=false;
end;

end.
