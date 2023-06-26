program reg;

uses
  Forms,
  UMain in 'UMain.pas' {Form1},
  UPwd in 'UPwd.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
