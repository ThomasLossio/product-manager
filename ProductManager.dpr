program ProductManager;

uses
  Vcl.Forms,
  uProducts in 'uProducts.pas' {frmProductRegistration},
  uMain in 'uMain.pas' {frmMain},
  uCategories in 'uCategories.pas' {frmCategories},
  uDMMain in 'uDMMain.pas' {DMMain: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TfrmProductRegistration, frmProductRegistration);
  Application.CreateForm(TfrmCategories, frmCategories);
  Application.CreateForm(TDMMain, DMMain);
  Application.Run;
end.
