unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmMain = class(TForm)
    Panel1: TPanel;
    btnOpenProducts: TButton;
    btnOpenCategories: TButton;
    btnExit: TButton;
    procedure btnExitClick(Sender: TObject);
    procedure btnOpenProductsClick(Sender: TObject);
    procedure btnOpenCategoriesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

uses uProducts, uCategories;

procedure TfrmMain.btnOpenCategoriesClick(Sender: TObject);
begin
  frmCategories := TfrmCategories.Create(Self);
  frmCategories.ShowModal;
  frmCategories.Free;
end;

procedure TfrmMain.btnOpenProductsClick(Sender: TObject);
begin
  frmProductRegistration := TfrmProductRegistration.Create(Self);
  frmProductRegistration.ShowModal;
  frmProductRegistration.Free;
end;

procedure TfrmMain.btnExitClick(Sender: TObject);
begin
  Close;
end;

end.
