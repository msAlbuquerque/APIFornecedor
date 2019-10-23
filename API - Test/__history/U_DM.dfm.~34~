object DataModule3: TDataModule3
  OldCreateOrder = False
  Height = 374
  Width = 550
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=C:\Us' +
      'ers\Otavio\Desktop\API FornecedoresV1.0\API Fornecedores\API - T' +
      'est\DB\ERP.mdb;Mode=Share Deny None;Persist Security Info=False;' +
      'Jet OLEDB:System database="";Jet OLEDB:Registry Path="";Jet OLED' +
      'B:Database Password="";Jet OLEDB:Engine Type=5;Jet OLEDB:Databas' +
      'e Locking Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:G' +
      'lobal Bulk Transactions=1;Jet OLEDB:New Database Password="";Jet' +
      ' OLEDB:Create System Database=False;Jet OLEDB:Encrypt Database=F' +
      'alse;Jet OLEDB:Don'#39't Copy Locale on Compact=False;Jet OLEDB:Comp' +
      'act Without Replica Repair=False;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 80
    Top = 32
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Fornecedores'
    Left = 200
    Top = 88
    object ADOTable1id_Fornecedor: TAutoIncField
      FieldName = 'id_Fornecedor'
      ReadOnly = True
    end
    object ADOTable1nm_Fornecedor: TWideStringField
      FieldName = 'nm_Fornecedor'
      Size = 50
    end
    object ADOTable1cnpj_Fornecedor: TWideStringField
      FieldName = 'cnpj_Fornecedor'
      EditMask = '00.000.000/0000-00;1;_'
      Size = 255
    end
    object ADOTable1tel_Fornecedor: TWideStringField
      FieldName = 'tel_Fornecedor'
      EditMask = '!\(99\)0000-00009;1;_'
      Size = 255
    end
    object ADOTable1email_Fornecedor: TWideStringField
      FieldName = 'email_Fornecedor'
      Size = 255
    end
    object ADOTable1cep_Fornecedor: TWideStringField
      FieldName = 'cep_Fornecedor'
      EditMask = '00000\-000;1;_'
      Size = 255
    end
    object ADOTable1end_Fornecedor: TWideStringField
      FieldName = 'end_Fornecedor'
      Size = 255
    end
    object ADOTable1bairro_Fornecedor: TWideStringField
      FieldName = 'bairro_Fornecedor'
      Size = 255
    end
    object ADOTable1cidade_Fornecedor: TWideStringField
      FieldName = 'cidade_Fornecedor'
      Size = 255
    end
    object ADOTable1estado_Fornecedor: TWideStringField
      FieldName = 'estado_Fornecedor'
      Size = 255
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 288
    Top = 64
  end
end
