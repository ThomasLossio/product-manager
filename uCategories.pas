unit uCategories;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, System.UITypes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
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
    btnAdd: TButton;
    dsCategories: TDataSource;
    procedure btnAddClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure dsCategoriesDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCategories: TfrmCategories;

implementation

{$R *.dfm}

uses uDMMain;

procedure TfrmCategories.btnAddClick(Sender: TObject);
begin
  DMMain.qryCategories.Insert;
  dbName.SetFocus;
end;

procedure TfrmCategories.btnClearClick(Sender: TObject);
begin
  if DMMain.qryCategories.State in dsEditModes then
  begin
    DMMain.qryCategories.Cancel;
    MessageDlg('Registro foi cancelado com sucesso.', mtInformation, [mbOk], 0);
  end;
end;

procedure TfrmCategories.btnDeleteClick(Sender: TObject);
begin
  if not DMMain.qryCategories.IsEmpty then
  begin
    DMMain.qryCategories.Delete;
    MessageDlg('Registro excluído com sucesso.', mtInformation, [mbOk], 0);
  end;
end;

procedure TfrmCategories.btnSaveClick(Sender: TObject);
begin
  if dbName.Text = '' then
  begin
    MessageDlg('Nome da categoria é obrigatório, preencha antes de salvar!', mtWarning, [mbOk], 0);
    Exit;
  end;

  if DMMain.qryCategories.State in dsEditModes then
  begin
    DMMain.qryCategories.Post;
    MessageDlg('Categoria salva com sucesso.', mtInformation, [mbOk], 0);
  end;
end;

procedure TfrmCategories.dsCategoriesDataChange(Sender: TObject; Field: TField);
begin
  btnSave.Enabled := DMMain.qryCategories.State in dsEditModes;
  btnClear.Enabled := DMMain.qryCategories.State in dsEditModes;
  btnDelete.Enabled := not DMMain.qryCategories.IsEmpty
                    and not (DMMain.qryCategories.State in dsEditModes);
end;

end.
