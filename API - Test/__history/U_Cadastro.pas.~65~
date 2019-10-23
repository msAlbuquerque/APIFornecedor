unit U_Cadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask, Data.Win.ADODB,
  Vcl.Buttons, Vcl.Imaging.jpeg, Vcl.Imaging.pngimage;

type
  TForm1 = class(TForm)
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    Form1: TImage;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Image1: TImage;
    Label11: TLabel;
    DBComboBox1: TDBComboBox;
    sbCadastrar_Fornecedor: TSpeedButton;
    sbDeletar_Fornecedor: TSpeedButton;
    sbAtualizar_Fornecedor: TSpeedButton;
    sbNovo: TSpeedButton;
    GroupBox4: TGroupBox;
    Label1: TLabel;
    sbPesquisaID: TSpeedButton;
    Label12: TLabel;
    Edit1: TEdit;
    Label13: TLabel;
    DBEdit1: TDBEdit;
    Edit2: TEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure sbCadastrar_FornecedorClick(Sender: TObject);
    procedure sbDeletar_FornecedorClick(Sender: TObject);
    procedure sbAtualizar_FornecedorClick(Sender: TObject);
    procedure sbNovoClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure sbPesquisaIDClick(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses U_DM, U_Consulta;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  U_Consulta.Form2.ShowModal;
end;

procedure TForm1.Edit1Change(Sender: TObject);
begin
  U_DM.DataModule3.ADOTable1.IndexFieldNames:='nm_Fornecedor';
  U_DM.DataModule3.ADOTable1.Locate('nm_Fornecedor', Edit1.Text, [loPartialKey]);
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
  U_DM.DataModule3.ADOTable1.Insert;
end;

procedure TForm1.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose := MessageDlg('Deseja realmente fechar a aplicação?', mtConfirmation, [mbYes,mbNo], 0) = mrYes;
end;


procedure TForm1.sbCadastrar_FornecedorClick(Sender: TObject);
begin
  If Application.MessageBox('Confirma a inserção no sitema?','>> Verificação de inserção <<',MB_YESNO +
                           MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES Then
  begin
    U_DM.DataModule3.ADOTable1.Post;
    U_DM.DataModule3.ADOTable1.Insert;
    ShowMessage('Dados salvos com sucesso!');
  end
  else
  begin
    U_DM.DataModule3.ADOTable1.Cancel;
    U_DM.DataModule3.ADOTable1.Insert;
    ShowMessage('Dados não salvos!');
  end;
end;

procedure TForm1.sbDeletar_FornecedorClick(Sender: TObject);
begin
If Application.MessageBox('Confirma exclusão de dados?','>> Cuidado <<',MB_YESNO +
                           MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES Then
  begin
    U_DM.DataModule3.ADOTable1.Delete;
    U_DM.DataModule3.ADOTable1.Insert;
    ShowMessage('Dados excluídos com sucesso!');
  end
  else
    begin
    U_DM.DataModule3.ADOTable1.Cancel;
    U_DM.DataModule3.ADOTable1.Insert;
    ShowMessage('Dados não forsm excluído!');
   end
end;

procedure TForm1.sbAtualizar_FornecedorClick(Sender: TObject);
begin
  If Application.MessageBox('Confirma alteração de dados?','>> Alerta <<',MB_YESNO +
                           MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES Then
  begin
      U_DM.DataModule3.ADOTable1.Edit;
      U_DM.DataModule3.ADOTable1.UpdateRecord;
      U_DM.DataModule3.ADOTable1.Refresh;
      ShowMessage('Dados alterados com sucesso!');
   end
   else
   begin
     U_DM.DataModule3.ADOTable1.Cancel;
     U_DM.DataModule3.ADOTable1.Insert;
     ShowMessage('Dados não foi alterados!');
   end
end;

procedure TForm1.sbNovoClick(Sender: TObject);
begin
  U_DM.DataModule3.ADOTable1.Insert;
  DBEdit2.SetFocus;
end;

procedure TForm1.sbPesquisaIDClick(Sender: TObject);
begin
   if Edit2.Text <> '' then
  begin
    U_DM.DataModule3.ADOTable1.IndexFieldNames:= 'id_Fornecedor';
    if not
      U_DM.DataModule3.ADOTable1.Locate('id_Fornecedor', Edit2.Text, [])
    then
      begin
        ShowMessage('Codigo nao encontrado');
        Edit2.clear;
        Edit2.SetFocus;
      end;
  end;
end;

end.
