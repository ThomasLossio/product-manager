unit uProducts;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Mask, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TfrmProductRegistration = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    lblProductName: TLabel;
    lblCategory: TLabel;
    lblPrice: TLabel;
    lblQuantity: TLabel;
    btnSave: TButton;
    btnClear: TButton;
    btnDelete: TButton;
    dbName: TDBEdit;
    dbPrice: TDBEdit;
    dbQuantity: TDBEdit;
    dbCategory: TDBLookupComboBox;
    dbProducts: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProductRegistration: TfrmProductRegistration;

implementation

{$R *.dfm}

end.
