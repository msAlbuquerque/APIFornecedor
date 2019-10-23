unit U_Consulta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.Imaging.pngimage, Vcl.StdCtrls, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Buttons, Data.Win.ADODB;

type
  TForm2 = class(TForm)
    Image1: TImage;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Image2: TImage;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Edit1: TEdit;
    sbPesquisaEstado: TSpeedButton;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    Label2: TLabel;
    Edit2: TEdit;
    Label4: TLabel;
    sbPesquisaID: TSpeedButton;
    ComboBox1: TComboBox;
    sbRefresh: TSpeedButton;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure sbPesquisaIDClick(Sender: TObject);
    procedure sbRefreshClick(Sender: TObject);
    procedure sbPesquisaEstadoClick(Sender: TObject);
    procedure Edit1Change(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses U_DM;

procedure TForm2.Edit1Change(Sender: TObject);
begin
  ADOQuery1.close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('select * from fornecedores where nm_Fornecedor like ''%'+ Edit1.Text +'%''') ;
  ADOQuery1.Open;
end;

procedure TForm2.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
 CanClose := MessageDlg('Deseja realmente fechar a aplicação?', mtConfirmation, [mbYes,mbNo], 0) = mrYes;
end;


procedure TForm2.FormCreate(Sender: TObject);
begin
 ADOQuery1.Close;
 ADOQuery1.Open;
 DBGrid1.Update;
end;

procedure TForm2.sbPesquisaEstadoClick(Sender: TObject);
begin
  ADOQuery1.close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('select * from fornecedores where estado_Fornecedor = '''+ ComboBox1.Text +'''') ;
  ADOQuery1.Open;
end;

procedure TForm2.sbPesquisaIDClick(Sender: TObject);
begin
  ADOQuery1.close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('select * from fornecedores where id_Fornecedor = '''+ edit2.Text +'''') ;
  ADOQuery1.Open;
end;

procedure TForm2.sbRefreshClick(Sender: TObject);
begin
  ADOQuery1.close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('select * from fornecedores ');
  ADOQuery1.Open;
  edit1.Clear;
  Edit2.Clear;
  ComboBox1.Clear;
end;

end.
