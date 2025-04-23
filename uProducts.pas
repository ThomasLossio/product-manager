unit uProducts;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, System.UITypes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls,
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
    dsProducts: TDataSource;
    dsLookupCategories: TDataSource;
    btnAdd: TButton;
    procedure dsProductsDataChange(Sender: TObject; Field: TField);
    procedure btnAddClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProductRegistration: TfrmProductRegistration;

implementation

{$R *.dfm}

uses uDMMain;

procedure TfrmProductRegistration.btnAddClick(Sender: TObject);
begin
  DMMain.qryProducts.Insert;
  dbName.SetFocus;
end;

procedure TfrmProductRegistration.btnClearClick(Sender: TObject);
begin
  if DMMain.qryProducts.State in dsEditModes then
  begin
    DMMain.qryProducts.Cancel;
    MessageDlg('Registro foi cancelado com sucesso.', mtInformation, [mbOk], 0);
  end;
end;

procedure TfrmProductRegistration.btnDeleteClick(Sender: TObject);
begin
  if not DMMain.qryProducts.IsEmpty then
  begin
    DMMain.qryProducts.Delete;
    MessageDlg('Registro excluído com sucesso.', mtInformation, [mbOk], 0);
  end;
end;

procedure TfrmProductRegistration.btnSaveClick(Sender: TObject);
var
  ErrorList: TStringList;
begin
  ErrorList := TStringList.Create;
  try
    if dbName.Text = '' then
      ErrorList.Add('- Nome do produto é obrigatório');

    if DMMain.qryProductsCATEGORY_ID.IsNull then
      ErrorList.Add('- Categoria do produto é obrigatório');

    if ErrorList.Count > 0 then
    begin
      MessageDlg('Os seguintes erros foram encontrados ao tentar salvar: ' +
        sLineBreak + sLineBreak + ErrorList.Text, mtError, [mbOk], 0);
      Exit;
    end;

    if DMMain.qryProducts.State in dsEditModes then
    begin
      DMMain.qryProducts.Post;
      MessageDlg('Produto salvo com sucesso.', mtInformation, [mbOk], 0);
    end;
  finally
    ErrorList.Free;
  end;

end;

procedure TfrmProductRegistration.dsProductsDataChange(Sender: TObject;
  Field: TField);
begin
  btnSave.Enabled := DMMain.qryProducts.State in dsEditModes;
  btnClear.Enabled := DMMain.qryProducts.State in dsEditModes;
  btnDelete.Enabled := not DMMain.qryProducts.IsEmpty
                    and not (DMMain.qryProducts.State in dsEditModes);
end;

end.
