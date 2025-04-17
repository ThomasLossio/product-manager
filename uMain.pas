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
    Button3: TButton;
    procedure Button3Click(Sender: TObject);
    procedure btnOpenProductsClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

uses uProducts;

procedure TfrmMain.btnOpenProductsClick(Sender: TObject);
begin
  frmProductRegistration := TfrmProductRegistration.Create(Self);
  frmProductRegistration.ShowModal;
  frmProductRegistration.Free;
end;

procedure TfrmMain.Button3Click(Sender: TObject);
begin
  Close;
end;

end.
