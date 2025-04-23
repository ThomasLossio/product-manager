unit uDMMain;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.IB,
  FireDAC.Phys.IBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TDMMain = class(TDataModule)
    connMain: TFDConnection;
    qryProducts: TFDQuery;
    qryCategories: TFDQuery;
    qryProductsID: TIntegerField;
    qryProductsNAME: TStringField;
    qryProductsCATEGORY_ID: TIntegerField;
    qryProductsPRICE: TFMTBCDField;
    qryProductsQUANTITY: TIntegerField;
    qryCategoriesID: TIntegerField;
    qryCategoriesNAME: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMMain: TDMMain;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
