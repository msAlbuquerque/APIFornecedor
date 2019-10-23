program Project1;

uses
  Vcl.Forms,
  U_Cadastro in 'U_Cadastro.pas' {Form1},
  U_DM in 'U_DM.pas' {DataModule3: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Click Providers';
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDataModule3, DataModule3);
  Application.Run;

end.
