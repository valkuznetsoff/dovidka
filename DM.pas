unit DM;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TDataModule2 = class(TDataModule)
    DB: TADOConnection;
    Main: TADOQuery;
    Mainid: TAutoIncField;
    Mainguid: TGuidField;
    Mainguid_parent: TGuidField;
    Mainlevel_name: TStringField;
    Mainname: TStringField;
    Maindatestart: TWideStringField;
    Maindateexpired: TWideStringField;
    MainSrc: TDataSource;
    Mainlevel: TIntegerField;
    Mainupdated: TDateTimeField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule2: TDataModule2;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
