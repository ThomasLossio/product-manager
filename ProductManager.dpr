program ProductManager;

uses
  Vcl.Forms,
  uProducts in 'uProducts.pas' {frmProductRegistration},
  uMain in 'uMain.pas' {frmMain};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TfrmProductRegistration, frmProductRegistration);
  Application.Run;
end.
