program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Home},
  Unit2 in 'Unit2.pas' {html},
  Unit4 in 'Unit4.pas' {zastavka};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tzastavka, zastavka);
  Application.CreateForm(THome, Home);
  Application.CreateForm(Thtml, html);
  Application.Run;
end.
