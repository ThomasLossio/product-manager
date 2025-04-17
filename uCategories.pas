unit uCategories;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls, Vcl.DBCtrls;

type
  TfrmCategories = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    lblProductName: TLabel;
    btnSave: TButton;
    btnClear: TButton;
    btnDelete: TButton;
    dbName: TDBEdit;
    dbCategories: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCategories: TfrmCategories;

implementation

{$R *.dfm}

end.
