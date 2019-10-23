unit U_DM;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TDataModule3 = class(TDataModule)
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    ADOTable1id_Fornecedor: TAutoIncField;
    ADOTable1nm_Fornecedor: TWideStringField;
    ADOTable1cnpj_Fornecedor: TWideStringField;
    ADOTable1tel_Fornecedor: TWideStringField;
    ADOTable1email_Fornecedor: TWideStringField;
    ADOTable1cep_Fornecedor: TWideStringField;
    ADOTable1end_Fornecedor: TWideStringField;
    ADOTable1bairro_Fornecedor: TWideStringField;
    ADOTable1cidade_Fornecedor: TWideStringField;
    ADOTable1estado_Fornecedor: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule3: TDataModule3;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

end.
