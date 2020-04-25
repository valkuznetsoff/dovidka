unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxCustomData, cxStyles, cxTL, cxMaskEdit,
  cxTLdxBarBuiltInMenu, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, Data.DB, Data.Win.ADODB, cxInplaceContainer, cxDBTL,
  cxTLData, Vcl.ExtCtrls, DM, Vcl.StdCtrls, Vcl.Buttons, cxCalendar,
  dxSkinsdxBarPainter, Vcl.Menus, dxBar, dxBarExtItems, cxClasses,
  System.Actions, Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan,
  System.ImageList, Vcl.ImgList, Unit4, cxCheckBox, IniFiles, MenuItemInjector;

type
  TForm1 = class(TForm)
    TreeList: TcxDBTreeList;
    Treeid: TcxDBTreeListColumn;
    Treeguid: TcxDBTreeListColumn;
    Treeguid_parent: TcxDBTreeListColumn;
    Treelevel_name: TcxDBTreeListColumn;
    Treename: TcxDBTreeListColumn;
    Treedatestart: TcxDBTreeListColumn;
    Treedateexpired: TcxDBTreeListColumn;
    Treelevel: TcxDBTreeListColumn;
    Treeupdated: TcxDBTreeListColumn;
    ImageList: TcxImageList;
    StyleRepository: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    cxStyle8: TcxStyle;
    cxStyle9: TcxStyle;
    cxStyle10: TcxStyle;
    cxStyle11: TcxStyle;
    cxStyle12: TcxStyle;
    cxStyle13: TcxStyle;
    stlGroupNode: TcxStyle;
    stlFixedBand: TcxStyle;
    TreeListStyleSheetDevExpress: TcxTreeListStyleSheet;
    ActionMan: TActionManager;
    CreateBaseAction: TAction;
    ConnectBaseAction: TAction;
    DeleteBaseAction: TAction;
    AboutAction: TAction;
    EditAction: TAction;
    ReOpenAction: TAction;
    AddAction: TAction;
    AddChildAction: TAction;
    DeleteAction: TAction;
    RestoreAction: TAction;
    ShowDeletedAction: TAction;
    ActualDateAction: TAction;
    BarMan: TdxBarManager;
    BarManBar1: TdxBar;
    ReCreateBtn: TdxBarButton;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    ActualDate: TdxBarDateCombo;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    TreePopup: TPopupMenu;
    AboutAction2: TMenuItem;
    ReOpenPopupItem: TMenuItem;
    AddPopupItem: TMenuItem;
    AddChildPopupItem: TMenuItem;
    DeletePopupItem: TMenuItem;
    RestorePopupItem: TMenuItem;
    EditPopupItem: TMenuItem;
    ShowDeletedPopupItem: TMenuItem;
    MainMenu: TMainMenu;
    MainMenu1: TMenuItem;
    CreateBaseItem: TMenuItem;
    ConnectBaseItem: TMenuItem;
    DeleteBaseItem: TMenuItem;
    AboutMenuItem: TMenuItem;
    EditMenuItem: TMenuItem;
    ReOpenMenuItem: TMenuItem;
    AddMenuItem: TMenuItem;
    AddChildMenuItem: TMenuItem;
    DeleteMenuItem: TMenuItem;
    RestoreMenuItem: TMenuItem;
    ShowDeletedMenuItem: TMenuItem;
    procedure TreeListDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure TreeListDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure TreeListMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure AboutActionExecute(Sender: TObject);
    procedure ReOpenActionExecute(Sender: TObject);
    procedure ShowDeletedActionExecute(Sender: TObject);
    procedure ActualDateActionUpdate(Sender: TObject);
    procedure AddActionExecute(Sender: TObject);
    procedure AddChildActionExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure EditActionExecute(Sender: TObject);
    procedure DeleteActionExecute(Sender: TObject);
    procedure RestoreActionExecute(Sender: TObject);
    procedure TreeListCustomDrawDataCell(Sender: TcxCustomTreeList;
      ACanvas: TcxCanvas; AViewInfo: TcxTreeListEditCellViewInfo;
      var ADone: Boolean);
    procedure DeleteBaseActionExecute(Sender: TObject);
    procedure CreateBaseActionExecute(Sender: TObject);
    procedure ConnectBaseActionExecute(Sender: TObject);
  private
    DragNode: TcxTreeListNode;
    PrevActualDate: TDate;
    LevelNames: TStringList;

    procedure CheckDataBase;
    function DataBaseExists(DBName: string): boolean;
    procedure ExecuteScriptFromFile(aFileName: string);

    function CreateMainQuery: string;

    procedure TreeDragTo(DragGUID, DropGUID: TGUID);

    procedure TreeMoveTo(FromGUID, ToGUID, NewGUID: TGUID); overload;
    procedure TreeMoveTo(FromGUID, NewGUID: TGUID); overload;

    procedure TreeDelete(DeleteGUID: TGUID);

    procedure TreeRestore(RestoreGUID: TGUID; RestoreLevel: integer; RestoreName: string); overload;
    procedure TreeRestore(RestoreGUID, RestoreGUID_Parent: TGUID; RestoreLevel: integer; RestoreName: string); overload;

    procedure TreeListReOpen(aTreeList: TcxDBTreeList); overload;
    procedure TreeListReOpen(aTreeList: TcxDBTreeList; Key: string; Value: Integer); overload;
    procedure TreeListReOpen(aTreeList: TcxDBTreeList; Key: string; Value: TGUID); overload;
    { Private declarations }
  public
    { Public declarations }
  end;

const
  trGUID = 1;
  trGUID_Parent = 2;
  trLevel = 3;
  trName = 5;
  trDateStart = 6;
  trDateExpired = 7;
  trUpdated = 8;

var
  Form1: TForm1;

implementation

{$R *.dfm}
function IIF(Condition: boolean; TrueValue, FalseValue: Variant): Variant;
begin
// ������� �������� ������� � ��������� ��������
  if Condition then Result := TrueValue else Result := FalseValue
end;

function ConnectToIniFile(aIniFileName: string): TIniFile;
begin
// �������� �� ������� ����� � ������� �������� � ��� ������������� ����� ����
// (�� ��������� �� 2 ������ �����, ����������� "Win32\Debug")
  if not FileExists(aIniFileName) then aIniFileName := '..\..\'+aIniFileName;
  Result := TIniFile.Create(aIniFileName);
end;

function CreateMenuItem(Section: string): TMenuItem;
var
  MenuItem: IMenuItem;
  SomeConsumerObj: TConsumer;
  IniFile: TIniFile;
  Items: TStrings;
  S, Title: string;
  MenuItemIntf: string;
  i: integer;
begin
// ������������ �������� ������� dependency injection,
// ����������� � ����� Menus.Ini
  IniFile := ConnectToIniFile('Menus.Ini');
  try
    Items := TStringList.Create;
    try
      Title := IniFile.ReadString(Section, 'Title', 'Menu');
      Result := TMenuItem.Create(nil);
      Result.Caption := Title;

      IniFile.ReadSectionValues(Section, Items);
      for i:=0 to Pred(Items.Count) do
      begin
        MenuItem := TMenuItemInjector.GetMenuItemIntf(Copy(Items[i], Pos('=', Items[i])+1, 255));
        SomeConsumerObj := TConsumer.Create(MenuItem);

        try
          SomeConsumerObj.DoCreateMenuItem(Result);
        finally
          SomeConsumerObj.Free;
        end;
      end;
    finally
      IniFile.Free;
    end;
  finally
    Items.Free;
  end;
end;

procedure TForm1.TreeListReOpen(aTreeList: TcxDBTreeList);
begin
// ������������ �������� �� ���������
  TreeListReOpen(aTreeList, 'ID', aTreeList.DataController.DataSet.FieldByName('ID').AsInteger);
end;

procedure TForm1.TreeListReOpen(aTreeList: TcxDBTreeList; Key: string; Value: Integer);
begin
// ������������ �������� �� ����
  with aTreeList.DataController do
  begin
    DataSet.Close; DataSet.Open;
    aTreeList.FullExpand; aTreeList.SetFocus;
    DataSet.Locate(Key, Value, [loPartialKey]);
  end;
end;

procedure TForm1.TreeListReOpen(aTreeList: TcxDBTreeList; Key: string; Value: TGUID);
begin
// ������������ �������� �� ����������� ��������������
  with aTreeList.DataController do
  begin
    DataSet.Close; DataSet.Open;
    aTreeList.FullExpand; aTreeList.SetFocus;
    DataSet.Locate(Key, GUIDToString(Value), [loPartialKey]);
  end;
end;

procedure TForm1.TreeListCustomDrawDataCell(Sender: TcxCustomTreeList;
  ACanvas: TcxCanvas; AViewInfo: TcxTreeListEditCellViewInfo;
  var ADone: Boolean);
begin
// ��������� ��������, ������� ��������
  if AViewInfo.Node.HasChildren then
    aCanvas.Font.Style := [fsBold];

// �������������� �������� ������� "��������" � ����������� �� "���������� ����"
  if SameText(AViewInfo.Column.Name, 'TreeUpdated') then
  begin
    if AViewInfo.Node.Values[trUpdated] <> Null then
    begin
      if (Trunc(AViewInfo.Node.Values[trUpdated]) > ActualDate.Date) then
      begin
        aCanvas.Font.Color := clRed;
        aDone := False;
        Exit;
      end;
    end;
  end;

// �������������� �������� ������� "���� ���." � ����������� �� "���������� ����"
  if SameText(AViewInfo.Column.Name, 'TreeDateExpired') then
  begin
    if AViewInfo.Node.Values[trDateExpired] <> Null then
    begin
      if (AViewInfo.Node.Values[trDateExpired] > ActualDate.Date) then
      begin
        aCanvas.Font.Color := clRed;
        aDone := False;
        Exit;
      end;
    end;
  end;

// �������������� ������ ��� "���������" �������
  if (AViewInfo.Node.Values[trDateExpired] <> Null) then
  begin
    if (AViewInfo.Node.Values[trDateExpired] <= ActualDate.Date) then
    begin
      if TreeList.FocusedNode = AViewInfo.Node then
      begin
        if TreeList.FocusedColumn = aViewInfo.Column
          then aCanvas.Font.Color := clGray
          else aCanvas.Font.Color := clSilver
      end else aCanvas.Font.Color := clGray;
      aDone := False;
      Exit;
    end;
  end;
end;

procedure TForm1.TreeDragTo(DragGUID, DropGUID: TGUID);
var
  NewGUID: TGUID;
  TempQuery, TempDataSet: TADOQuery;
begin
// ����������� ��������� "�����������" �������
  TempQuery := TADOQuery.Create(Self);
  TempQuery.Connection := DataModule2.DB;
  TempDataSet := TADOQuery.Create(Self);
  TempDataSet.Connection := DataModule2.DB;
  try
// ������������� ���� ��������� ��� ������������ �������
    TempQuery.Close;
    TempQuery.SQL.Clear;
    TempQuery.SQL.Add(Format('DELETE FROM _OBJECTS WHERE GUID = ''%s''', [GUIDToString(DragGUID)]));
    TempQuery.ExecSQL;

// ��������� ����� ������ � ���������� ���������
    TempQuery.Close;
    TempQuery.SQL.Clear;
    CreateGUID(NewGUID);
    TempQuery.SQL.Add(Format('INSERT INTO _OBJECTS (GUID, GUID_PARENT, LEVEL, NAME) '+
                             'SELECT ''%s'', ''%s'', LEVEL, NAME FROM _OBJECTS WHERE GUID = ''%s''',
                             [GUIDToString(NewGUID), GUIDToString(DropGUID), GUIDToString(DragGUID)]));
    TempQuery.ExecSQL;

// ��������� �������� ������� ������� ���� � ������������ �������
    TempDataSet.Close;
    TempDataSet.SQL.Clear;
    TempDataSet.SQL.Add(Format('SELECT * FROM _OBJECTS WHERE GUID_PARENT = ''%s'' AND DATEEXPIRED IS NULL', [GUIDToString(DragGUID)]));
    TempDataSet.Open;
    while not TempDataSet.EOF do
    begin
// �������� �� ���� �������� ��������
      TreeDragTo((TempDataSet.FieldByName('GUID') as TGUIDField).AsGuid, NewGUID);
      TempDataSet.Next;
    end;
  finally
    TempQuery.Free;
    TempDataSet.Free;
  end;

// ���������� ������
  TreeListReOpen(TreeList, 'GUID', NewGUID);
end;

procedure TForm1.TreeMoveTo(FromGUID, ToGUID, NewGUID: TGUID);
var
  NewChildGUID: TGUID;
  TempQuery, TempDataSet: TADOQuery;
begin
// ����������� ��������� "�����������" �������
  TempQuery := TADOQuery.Create(Self);
  TempQuery.Connection := DataModule2.DB;
  TempDataSet := TADOQuery.Create(Self);
  TempDataSet.Connection := DataModule2.DB;
  try
// ������������� ���� ��������� ��� ������������ �������
    TempQuery.Close;
    TempQuery.SQL.Clear;
    TempQuery.SQL.Add(Format('DELETE FROM _OBJECTS WHERE GUID = ''%s''', [GUIDToString(FromGUID)]));
    TempQuery.ExecSQL;

// ��������� ����� ������ � ���������� ���������
    TempQuery.Close;
    TempQuery.SQL.Clear;
    TempQuery.SQL.Add(Format('INSERT INTO _OBJECTS (GUID, GUID_PARENT, LEVEL, NAME) '+
                             'SELECT ''%s'', ''%s'', LEVEL, NAME FROM _OBJECTS WHERE GUID = ''%s''',
                             [GUIDToString(NewGUID), GUIDToString(ToGUID), GUIDToString(FromGUID)]));
    TempQuery.ExecSQL;

// ��������� �������� ������� ������� ���� � ������������ �������
    TempDataSet.Close;
    TempDataSet.SQL.Clear;
    TempDataSet.SQL.Add(Format('SELECT * FROM _OBJECTS WHERE GUID_PARENT = ''%s'' AND DATEEXPIRED IS NULL', [GUIDToString(FromGUID)]));
    TempDataSet.Open;
    while not TempDataSet.EOF do
    begin
// �������� �� ���� �������� ��������
      CreateGUID(NewChildGUID);
      TreeMoveTo((TempDataSet.FieldByName('GUID') as TGUIDField).AsGuid, NewGUID, NewChildGUID);
      TempDataSet.Next;
    end;
  finally
    TempQuery.Free;
    TempDataSet.Free;
  end;

// ���������� ������
  TreeListReOpen(TreeList, 'GUID', NewGUID);
end;

procedure TForm1.TreeMoveTo(FromGUID, NewGUID: TGUID);
var
  NewChildGUID: TGUID;
  TempQuery, TempDataSet: TADOQuery;
begin
// ����������� ��������� "�����������" �������
  TempQuery := TADOQuery.Create(Self);
  TempQuery.Connection := DataModule2.DB;
  TempDataSet := TADOQuery.Create(Self);
  TempDataSet.Connection := DataModule2.DB;
  try
// ������������� ���� ��������� ��� ������������ �������
    TempQuery.Close;
    TempQuery.SQL.Clear;
    TempQuery.SQL.Add(Format('DELETE FROM _OBJECTS WHERE GUID = ''%s''', [GUIDToString(FromGUID)]));
    TempQuery.ExecSQL;

// ��������� ����� ������ � ���������� ���������
    TempQuery.Close;
    TempQuery.SQL.Clear;
    TempQuery.SQL.Add(Format('INSERT INTO _OBJECTS (GUID, LEVEL, NAME) '+
                             'SELECT ''%s'', LEVEL, NAME FROM _OBJECTS WHERE GUID = ''%s''',
                             [GUIDToString(NewGUID), GUIDToString(FromGUID)]));
    TempQuery.ExecSQL;

// ��������� �������� ������� ������� ���� � ������������ �������
    TempDataSet.Close;
    TempDataSet.SQL.Clear;
    TempDataSet.SQL.Add(Format('SELECT * FROM _OBJECTS WHERE GUID_PARENT = ''%s'' AND DATEEXPIRED IS NULL', [GUIDToString(FromGUID)]));
    TempDataSet.Open;
    while not TempDataSet.EOF do
    begin
// �������� �� ���� �������� ��������
      CreateGUID(NewChildGUID);
      TreeMoveTo((TempDataSet.FieldByName('GUID') as TGUIDField).AsGuid, NewGUID, NewChildGUID);
      TempDataSet.Next;
    end;
  finally
    TempQuery.Free;
    TempDataSet.Free;
  end;

// ���������� ������
  TreeListReOpen(TreeList, 'GUID', NewGUID);
end;

procedure TForm1.TreeDelete(DeleteGUID: TGUID);
var
  TempQuery, TempDataSet: TADOQuery;
begin
// ����������� ��������� "��������" �������
  TempQuery := TADOQuery.Create(Self);
  TempQuery.Connection := DataModule2.DB;
  TempDataSet := TADOQuery.Create(Self);
  TempDataSet.Connection := DataModule2.DB;
  try
// ������������� ���� ��������� ��� "����������" �������
    TempQuery.Close;
    TempQuery.SQL.Clear;
    TempQuery.SQL.Add(Format('DELETE FROM _OBJECTS WHERE GUID = ''%s'' AND DATEEXPIRED IS NULL', [GUIDToString(DeleteGUID)]));
    TempQuery.ExecSQL;

// ������� �������� ������� ������� ���� � "����������" �������
    TempDataSet.Close;
    TempDataSet.SQL.Clear;
    TempDataSet.SQL.Add(Format('SELECT * FROM _OBJECTS WHERE GUID_PARENT = ''%s'' AND DATEEXPIRED IS NULL', [GUIDToString(DeleteGUID)]));
    TempDataSet.Open;
    while not TempDataSet.EOF do
    begin
// �������� �� ���� �������� ��������
      TreeDelete((TempDataSet.FieldByName('GUID') as TGUIDField).AsGuid);
      TempDataSet.Next;
    end;

  finally
    TempQuery.Free;
    TempDataSet.Free;
  end;

// ���������� ������
  TreeListReOpen(TreeList, 'GUID', DeleteGUID);
end;

procedure TForm1.TreeRestore(RestoreGUID: TGUID; RestoreLevel: integer; RestoreName: string);
var
  aNewGUID: TGUID;
  TempQuery, TempDataSet: TADOQuery;
begin
// ����������� ��������� "��������������" �������
  TempQuery := TADOQuery.Create(Self);
  TempQuery.Connection := DataModule2.DB;
  TempDataSet := TADOQuery.Create(Self);
  TempDataSet.Connection := DataModule2.DB;
  try
// ������� ���� ��������� ��� "������������������" �������
    TempQuery.Close;
    TempQuery.SQL.Clear;
    CreateGUID(aNewGUID);
    TempQuery.SQL.Add(Format('INSERT INTO _OBJECTS (GUID, LEVEL, NAME) VALUES (''%s'', ''%s'', ''%s'')',
      [GUIDToString(aNewGUID), IntToStr(RestoreLevel), RestoreName]));
    TempQuery.ExecSQL;

// ��������������� �������� ������� ������� ���� � "����������" �������
    TempDataSet.Close;
    TempDataSet.SQL.Clear;
    TempDataSet.SQL.Add(Format('SELECT * FROM _OBJECTS WHERE GUID_PARENT = ''%s'' AND DATEEXPIRED IS NOT NULL', [GUIDToString(RestoreGUID)]));
    TempDataSet.Open;
    while not TempDataSet.EOF do
    begin
// �������� �� ���� �������� ��������
      TreeRestore(aNewGuid,
                  (TempDataSet.FieldByName('GUID') as TGUIDField).AsGuid,
                  TempDataSet.FieldByName('Level').AsInteger,
                  TempDataSet.FieldByName('Name').AsString);
      TempDataSet.Next;
    end;
  finally
    TempQuery.Free;
    TempDataSet.Free;
  end;

// ���������� ������
  TreeListReOpen(TreeList, 'GUID', aNewGUID);
end;

procedure TForm1.TreeRestore(RestoreGUID, RestoreGUID_Parent: TGUID; RestoreLevel: integer; RestoreName: string);
var
  aNewGUID: TGUID;
  TempQuery, TempDataSet: TADOQuery;
begin
// ����������� ��������� "��������������" �������
  TempQuery := TADOQuery.Create(Self);
  TempQuery.Connection := DataModule2.DB;
  TempDataSet := TADOQuery.Create(Self);
  TempDataSet.Connection := DataModule2.DB;
  try
// ������� ���� ��������� ��� ���������� �������
    TempQuery.Close;
    TempQuery.SQL.Clear;
    CreateGUID(aNewGUID);
    TempQuery.SQL.Add(Format('INSERT INTO _OBJECTS (GUID, GUID_PARENT, LEVEL, NAME) VALUES (''%s'', ''%s'', ''%s'', ''%s'')',
      [GUIDToString(aNewGUID), GUIDToString(RestoreGUID), IntToStr(RestoreLevel), RestoreName]));
    TempQuery.ExecSQL;

// ��������������� �������� ������� ������� ���� � ���������� �������
    TempDataSet.Close;
    TempDataSet.SQL.Clear;
    TempDataSet.SQL.Add(Format('SELECT * FROM _OBJECTS WHERE GUID_PARENT = ''%s'' AND DATEEXPIRED IS NOT NULL', [GUIDToString(RestoreGUID_Parent)]));
    TempDataSet.Open;
    while not TempDataSet.EOF do
    begin
// �������� �� ���� �������� ��������
      TreeRestore(aNewGuid,
                  (TempDataSet.FieldByName('GUID') as TGUIDField).AsGuid,
                  TempDataSet.FieldByName('LEVEL').AsInteger,
                  TempDataSet.FieldByName('NAME').AsString);
      TempDataSet.Next;
    end;
  finally
    TempQuery.Free;
    TempDataSet.Free;
  end;

// ���������� ������
  TreeListReOpen(TreeList, 'GUID', aNewGUID);
end;

procedure TForm1.AboutActionExecute(Sender: TObject);
begin
// ���� "� �������"
  ShowAboutForm;
end;

function TForm1.CreateMainQuery: string;
begin
// ������������ �������� �������
  Result :=
    'select o.id, o.guid, o.guid_parent, '+
    '  o.level, l.name as level_name, o.name, o.datestart, '+
    '  o.dateexpired, '+
//    '  case when o.dateexpired > '''+FormatDateTime('MM.dd.yyyy', ActualDate.Date)+''' then null else o.dateexpired end as dateexpired, '+
    '  o.updated '+
    'from _objects o '+
    'left join _levels l on l.id = o.level '+
// � ������ ������ "��������� �������" ���������� ��� ���������
    'where '''+FormatDateTime('MM.dd.yyyy', ActualDate.Date)+''' >= DATESTART ';
//    '  and ((dateexpired is null) or ('''+FormatDateTime('MM.dd.yyyy', ActualDate.Date)+''' <= dateexpired)) '+
//    IIF(not ShowDeletedAction.Checked, 'and dateexpired is null ', ' ')+

  if not ShowDeletedAction.Checked then
    Result := Result +
      '  and ((dateexpired is null) or ('''+FormatDateTime('MM.dd.yyyy', ActualDate.Date)+''' <= dateexpired)) ';
//      IIF(not ShowDeletedAction.Checked, 'and dateexpired is null ', ' ')

  Result := Result +
    'order by o.level, o.name';
end;

procedure TForm1.ShowDeletedActionExecute(Sender: TObject);
var
  ID: integer;
begin
// ������������ ��������� "���������" �������
  ID := 0;
  ShowDeletedAction.Checked := not ShowDeletedAction.Checked;

  if Assigned(TreeList.DataController.DataSet) then
    ID := TreeList.DataController.DataSet.FieldByName('ID').Value;

  DataModule2.Main.Close;
  DataModule2.Main.SQL.Clear;
  DataModule2.Main.SQL.Add(CreateMainQuery);
  DataModule2.Main.Open;

// ���������� ������
  TreeListReOpen(TreeList, 'ID', ID);

// ����� ������ � ������� � �����
  if ShowDeletedAction.Checked then
  begin
    ShowDeletedAction.ImageIndex := 6;
    ShowDeletedAction.Caption := '�������� ���������';
    ShowDeletedAction.Hint := '�������� ��������� ������';
  end else
  begin
    ShowDeletedAction.ImageIndex := 7;
    ShowDeletedAction.Caption := '���������� ���������';
    ShowDeletedAction.Hint := '���������� ��������� ������';
  end;
end;

procedure TForm1.ActualDateActionUpdate(Sender: TObject);
var
  ID: integer;
begin
// ���� "����� ���������� ����"
  if ActualDate.Date = PrevActualDate then Exit;
  PrevActualDate := ActualDate.Date;

  ID := 0;
  if Assigned(TreeList.DataController.DataSet) then
    ID := IIF(VarIsNull(TreeList.DataController.DataSet.FieldByName('ID').Value), 0, TreeList.DataController.DataSet.FieldByName('ID').Value);

  DataModule2.Main.Close;
  DataModule2.Main.SQL.Clear;
  DataModule2.Main.SQL.Add(CreateMainQuery);
  DataModule2.Main.Open;

// ���������� ������
  TreeListReOpen(TreeList, 'ID', ID);
end;

procedure TForm1.AddActionExecute(Sender: TObject);
var
  aGUID: TGUID;
  aLevel: integer;
  aNewName: string;
  TempQuery: TADOQuery;
begin
// ���� "���������� ������� � ������� �������"

// ������ ��������, ���� ���������� ���� ������ �������
  if (ActualDate.Date < Trunc(Now)) then
  begin
    MessageDlg('���������� ���� ������ �������.'+#13#10+'��������� ���������!', mtError, [mbCancel], 0);
    Exit;
  end;

// ������ ��������� � "���������" ��������
  if (TreeList.FocusedNode.Values[trDateExpired] <> Null) then
  begin
    MessageDlg('������ ��������� � ��������� ��������!', mtError, [mbCancel], 0);
    Exit;
  end;

  CreateGUID(aGUID);
  aLevel := StrToInt(TreeList.FocusedNode.Values[trLevel]);

  aNewName := InputBox(LevelNames.Strings[aLevel-1], '������� ����� ���������: ', '');
  if aNewName > '' then
  begin
    TempQuery := TADOQuery.Create(Self);
    try
      TempQuery.Close;
      TempQuery.SQL.Clear;
      TempQuery.Connection := DataModule2.DB;
      TempQuery.SQL.Add(Format('INSERT INTO _OBJECTS (GUID, LEVEL, NAME) VALUES (''%s'', ''%s'', ''%s'')',
        [GUIDToString(aGUID), IntToStr(aLevel), aNewName]));
      TempQuery.ExecSQL;
    finally
      TempQuery.Free;
    end;

// ���������� ������
    TreeListReOpen(TreeList, 'GUID', aGUID);
  end;
end;

procedure TForm1.AddChildActionExecute(Sender: TObject);
var
  aGUID: TGUID;
  aLevel: integer;
  aNewName: string;
  TempQuery: TADOQuery;
begin
// ���� "���������� ��������� ������� � ������� ������"

// ������ ��������, ���� ���������� ���� ������ �������
  if (ActualDate.Date < Trunc(Now)) then
  begin
    MessageDlg('���������� ���� ������ �������.'+#13#10+'��������� ���������!', mtError, [mbCancel], 0);
    Exit;
  end;

// ������ ��������� �������� � "���������" ��������
  if (TreeList.FocusedNode.Values[trDateExpired] <> Null) then
  begin
    MessageDlg('������ ��������� �������� � ��������� ��������!', mtError, [mbCancel], 0);
    Exit;
  end;

  aLevel := StrToInt(TreeList.FocusedNode.Values[trLevel]);

// ������ ��������� �������� � ������ "���������"
  if (aLevel = 6) then
  begin
    MessageDlg('������ ��������� �������� � ������ "���������"!', mtError, [mbCancel], 0);
    Exit;
  end;

  CreateGUID(aGUID);
  aNewName := InputBox(LevelNames.Strings[aLevel], '������� ����� ���������: ', '');
  if aNewName > '' then
  begin
    TempQuery := TADOQuery.Create(Self);
    try
      TempQuery.Close;
      TempQuery.SQL.Clear;
      TempQuery.Connection := DataModule2.DB;
      TempQuery.SQL.Add(Format('INSERT INTO _OBJECTS (GUID, GUID_PARENT, LEVEL, NAME) VALUES (''%s'', ''%s'', ''%s'', ''%s'')',
        [GUIDToString(aGUID), TreeList.FocusedNode.Values[trGUID], IntToStr(aLevel+1), aNewName]));
      TempQuery.ExecSQL;
    finally
      TempQuery.Free;
    end;

// ���������� ������
    TreeListReOpen(TreeList, 'GUID', aGUID);
  end;
end;

procedure TForm1.DeleteActionExecute(Sender: TObject);
begin
// ���� "�������� ������"

// ������ ��������, ���� ���������� ���� ������ �������
  if (ActualDate.Date < Trunc(Now)) then
  begin
    MessageDlg('���������� ���� ������ �������.'+#13#10+'��������� ���������!', mtError, [mbCancel], 0);
    Exit;
  end;

  if MessageDlg('������� ������?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then Exit;

// �������� �� ������� �������� ������
  if TreeList.FocusedNode.Values[trDateExpired] <> NULL
    then MessageDlg('������ ������� ��� ��������� ������!', mtInformation, [mbCancel], 0)
// ������ ����������� ��������� "��������" �������
    else TreeDelete(StringToGUID(TreeList.FocusedNode.Values[trGUID]));
end;

procedure TForm1.RestoreActionExecute(Sender: TObject);
begin
// ���� "�������������� ������"

// ������ ��������, ���� ���������� ���� ������ �������
  if (ActualDate.Date < Trunc(Now)) then
  begin
    MessageDlg('���������� ���� ������ �������.'+#13#10+'��������� ���������!', mtError, [mbCancel], 0);
    Exit;
  end;

  if MessageDlg('������������ ������?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then Exit;

// �������� �� ������� �������� ������
  if TreeList.FocusedNode.Values[trDateExpired] = NULL
    then MessageDlg('������ ������������ �� ��������� ������!', mtInformation, [mbCancel], 0)
// ������ ����������� ��������� "��������������" �������
    else
    begin
      if TreeList.FocusedNode.Values[trGUID_Parent] = Null then
        TreeRestore(StringToGUID(TreeList.FocusedNode.Values[trGUID]),
                    TreeList.FocusedNode.Values[trLevel],
                    TreeList.FocusedNode.Values[trName])
      else
        TreeRestore(StringToGUID(TreeList.FocusedNode.Values[trGUID]),
                    StringToGUID(TreeList.FocusedNode.Values[trGUID_Parent]),
                    TreeList.FocusedNode.Values[trLevel],
                    TreeList.FocusedNode.Values[trName]);
    end;
end;

procedure TForm1.EditActionExecute(Sender: TObject);
var
  aGUID, aNewGUID: TGUID;
  aLevel: integer;
  aName, aNewName: string;
  TempQuery: TADOQuery;
begin
// ���� "��������������"

  TreeList.BeginUpdate;
  try
  // ������ ��������, ���� ���������� ���� ������ �������
    if (ActualDate.Date < Trunc(Now)) then
    begin
      MessageDlg('���������� ���� ������ �������.'+#13#10+'��������� ���������!', mtError, [mbCancel], 0);
      Exit;
    end;

  // ������ �������� "���������" �������
    if (TreeList.FocusedNode.Values[trDateExpired] <> Null) then
    begin
      MessageDlg('������ �������� ��������� �������!', mtError, [mbCancel], 0);
      Exit;
    end;

    aGUID := StringToGUID(TreeList.FocusedNode.Values[trGUID]);
    aLevel := StrToInt(TreeList.FocusedNode.Values[trLevel]);
    aName := TreeList.FocusedNode.Values[trName];
    if TreeList.FocusedNode.Values[trDateExpired] <> NULL then Exit;

    aNewName := InputBox(LevelNames.Strings[aLevel-1], '������� ����� ���������: ', aName);
    if aName <> aNewName then
    begin
      CreateGUID(aNewGUID);
      if TreeList.FocusedNode.Values[trGUID_Parent] <> Null then
        TreeMoveTo(aGUID, StringToGUID(TreeList.FocusedNode.Values[trGUID_Parent]), aNewGUID)
      else TreeMoveTo(aGUID, aNewGUID);

      TempQuery := TADOQuery.Create(Self);
      try
        TempQuery.Close;
        TempQuery.SQL.Clear;
        TempQuery.Connection := DataModule2.DB;
        TempQuery.SQL.Add(Format('UPDATE _OBJECTS SET NAME = ''%s'' WHERE GUID = ''%s'' AND DATEEXPIRED IS NULL',
          [aNewName, GUIDToString(aNewGUID)]));
        TempQuery.ExecSQL;
      finally
        TempQuery.Free;
      end;

      TreeListReOpen(TreeList, 'GUID', aGUID);
    end;
  finally
    TreeList.EndUpdate;
  end;
end;

function TForm1.DataBaseExists(DBName: string): boolean;
var
  TempQuery: TADOQuery;
begin
// �������� ������� ���� ������
  TempQuery := TADOQuery.Create(Self);
  try
    TempQuery.Close;
    TempQuery.SQL.Clear;
    TempQuery.SQL.Add(Format('select name from sys.databases where upper(name) = ''%s''', [UpperCase(DBName)]));
    TempQuery.ConnectionString := 'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=master';
    TempQuery.Open;
    Result := not TempQuery.EOF;
    TempQuery.Close;
  finally
    TempQuery.Free;
  end;
end;

procedure TForm1.CheckDataBase;
begin
// ��������� ��������� ���������� ����
  if DataBaseExists('dovidka') then
  begin
    CreateBaseItem.Visible := False;
    ConnectBaseItem.Visible := True;
    DeleteBaseItem.Visible := True;
  end else
  begin
    CreateBaseItem.Visible := True;
    ConnectBaseItem.Visible := False;
    DeleteBaseItem.Visible := False;
  end;
end;

procedure TForm1.ExecuteScriptFromFile(aFileName: string);
var
  aScriptList: TStrings;
  aScript, aScriptName: string;
begin
// ������� � ��������� ������ �� �����
  if not FileExists(aFileName) then aFileName := '..\..\'+aFileName;

  aScriptList := TStringlist.Create;
  try
    aScriptList.LoadFromFile(aFileNAme);
  finally
    aScript := aScriptList.Text;
    aScriptList.Free;
  end;

  DataModule2.DB.Execute(aScript);
end;

procedure TForm1.CreateBaseActionExecute(Sender: TObject);
begin
// ���� "�������� ���� ������
  DataModule2.DB.Connected := False;
  DataModule2.DB.ConnectionString := 'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=master';

  try
    DataModule2.DB.Execute('USE MASTER');
    DataModule2.DB.Execute('CREATE DATABASE DOVIDKA');

  // �������� � ���������� ������ ��������� � ����� Tables.sql
    ExecuteScriptFromFile('Tables.sql');

    DataModule2.DB.Execute('SET ANSI_NULLS ON');
    DataModule2.DB.Execute('SET QUOTED_IDENTIFIER ON');

  // ������� � �������� ��������� �������� (� ����� ������� - ����)
{
    DataModule2.DB.Execute
    (
      'CREATE TRIGGER [DBO].[InsertObjects] ON [DBO].[_Objects] After Insert '+
      'AS '+
      'BEGIN '+
      '  SET NOCOUNT ON; '+
      '  UPDATE DBO._OBJECTS SET UPDATED = CURRENT_TIMESTAMP '+
      '    WHERE GUID IN (SELECT GUID FROM INSERTED); '+
      'END '
    );
}
    DataModule2.DB.Execute
    (
      'CREATE TRIGGER [DBO].[UpdateObjects] ON [DBO].[_Objects] INSTEAD OF Update '+
      'AS '+
//      'DECLARE @myid uniqueidentifier = NEWID(); '+
      'BEGIN '+
      '  SET NOCOUNT ON; '+
{
      '  UPDATE DBO._OBJECTS SET DATEEXPIRED = GETDATE(), UPDATED = CURRENT_TIMESTAMP '+
      '    WHERE GUID IN (SELECT GUID FROM INSERTED WHERE DATEEXPIRED IS NULL); '+
      '  INSERT INTO DBO._OBJECTS (GUID, GUID_PARENT, LEVEL, NAME, DATESTART, DATEEXPIRED) '+
      '   	SELECT @myid, GUID_PARENT, LEVEL, NAME, GETDATE(), NULL FROM INSERTED WHERE DATEEXPIRED IS NULL; '+
      '  UPDATE DBO._OBJECTS SET GUID_PARENT = @myid, UPDATED = CURRENT_TIMESTAMP '+
      '	   WHERE GUID_PARENT IN (SELECT GUID FROM INSERTED WHERE DATEEXPIRED IS NULL); '+
      '  UPDATE DBO._OBJECTS SET NAME = UPDATED = CURRENT_TIMESTAMP '+
      '    WHERE GUID IN (SELECT GUID FROM INSERTED WHERE DATEEXPIRED IS NULL); '+
}
      '  DECLARE @ID INT; '+
      '  DECLARE @NAME VARCHAR(255); '+
    	'  DECLARE _INSERTED CURSOR FOR '+
      '    SELECT ID, NAME FROM INSERTED; '+
      '  OPEN _INSERTED; '+
      '  FETCH NEXT FROM _INSERTED INTO @ID, @NAME; '+
      '  WHILE (@@FETCH_STATUS <> -1) '+
      '  BEGIN ' +
      '    UPDATE [DBO].[_Objects] '+
      '      SET NAME = @NAME, UPDATED = CURRENT_TIMESTAMP '+
      '    WHERE ID = @ID '+
      '    FETCH NEXT FROM _INSERTED INTO @ID, @NAME; '+
      '  END '+
      '	 CLOSE _INSERTED; '+
      '  DEALLOCATE _INSERTED; '+
      'END '
    );

    DataModule2.DB.Execute
    (
      'CREATE TRIGGER [dbo].[DeleteObjects] ON [dbo].[_objects] INSTEAD OF Delete '+
      'AS '+
      'BEGIN '+
      '  SET NOCOUNT ON; '+
      '  DECLARE @ID INT; '+
      '  DECLARE @DATEEXPIRED DATE; '+
    	'  DECLARE _DELETED CURSOR FOR '+
      '    SELECT ID, DATEEXPIRED FROM DELETED; '+
      '  OPEN _DELETED; '+
      '  FETCH NEXT FROM _DELETED INTO @ID, @DATEEXPIRED; '+
      '  WHILE (@@FETCH_STATUS <> -1) '+
      '  BEGIN ' +
      '    UPDATE [DBO].[_Objects] '+
      '      SET DATEEXPIRED = CASE WHEN @DATEEXPIRED IS NULL THEN GETDATE() ELSE NULL END, UPDATED = CURRENT_TIMESTAMP '+
      '    WHERE ID = @ID '+
      '    FETCH NEXT FROM _DELETED INTO @ID, @DATEEXPIRED; '+
      '  END '+
      '	 CLOSE _DELETED; '+
      '  DEALLOCATE _DELETED; '+
      'END '
    );

    DataModule2.DB.Execute
    (
      'Create Function [DBO].[Z](@data date) '+
      'Returns Date '+
      'as '+
      'begin '+
      '  declare @Ret date '+
      '  set @Ret = @Data '+
      '  if @Ret is NULL '+
      '    Set @Ret = ''01/01/2200 '''+
      '  Return(@Ret) '+
      'end '
    );
  except
    on E: EAdoError do
    begin
      // ADO specific error handling
      MessageDlg('ADO Error: '+E.Message, mtError, [mbCancel], 0);
      Exit;
    end;
    on E: EDatabaseError do
    begin
      // Generic database error handling
      MessageDlg('Database Error: '+E.Message, mtError, [mbCancel], 0);
      Exit;
    end;
    on E: Exception do
    begin
      // Other exceptions (non-DB related)
      MessageDlg('Exception: '+E.Message, mtError, [mbCancel], 0);
      Exit;
    end;
  end;

  MessageDlg('���� ������ "dovidka" ������� �������!', mtInformation, [mbOk], 0);

// �������� ���� ������ � ����� �������
  CheckDataBase;
end;

procedure TForm1.ConnectBaseActionExecute(Sender: TObject);
var
  i, Num: integer;
  IniFile: TIniFile;
  Sections: TStrings;
  TempDataSet: TADOQuery;
begin
// ���� "����������� � ���� ������"
  DataModule2.DB.Connected := False;
  DataModule2.DB.ConnectionString := 'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security Info=False;User ID=sa;Initial Catalog=dovidka;';

  try
    DataModule2.DB.Connected := True;
  except
    on E: EAdoError do
    begin
      // ADO specific error handling
      MessageDlg('ADO Error: '+E.Message, mtError, [mbCancel], 0);
      Exit;
    end;
    on E: EDatabaseError do
    begin
      // Generic database error handling
      MessageDlg('Database Error: '+E.Message, mtError, [mbCancel], 0);
      Exit;
    end;
    on E: Exception do
    begin
      // Other exceptions (non-DB related)
      MessageDlg('Exception: '+E.Message, mtError, [mbCancel], 0);
      Exit;
    end;
  end;

// ����� �������
  TreeList.Visible := True;
  BarManBar1.Visible := True;

  CreateBaseItem.Visible := False;
  ConnectBaseItem.Visible := False;
  DeleteBaseItem.Visible := False;

  AboutMenuItem.Visible := True;
  EditMenuItem.Visible := True;
  ReOpenMenuItem.Visible := True;
  AddMenuItem.Visible := True;
  AddChildMenuItem.Visible := True;
  DeleteMenuItem.Visible := True;
  RestoreMenuItem.Visible := True;
  ShowDeletedMenuItem.Visible := True;

// RunTime ���� ��� dependency injection
  Sections := TStringList.Create;
  try
    IniFile := ConnectToIniFile('Menus.Ini');
    try
      IniFile.ReadSections(Sections);
    finally
      IniFile.Free;
    end;

    for I := 0 to Pred(Sections.Count) do
    begin
      MainMenu.Items.Add(CreateMenuItem(Sections[i]));
      TreePopup.Items.Add(CreateMenuItem(Sections[i]));
    end;
  finally
    Sections.Free;
  end;

// ���������� ������ ������������ �������
  TempDataSet := TADOQuery.Create(Self);
  TempDataSet.Connection := DataModule2.DB;
  try
    TempDataSet.Close;
    TempDataSet.SQL.Clear;
    TempDataSet.SQL.Add('SELECT ID, NAME FROM _LEVELS');
    TempDataSet.Open;
    while not TempDataSet.EOF do
    begin
      LevelNames.Add(TempDataSet.FieldByName('NAME').Value);
      TempDataSet.Next;
    end;
  finally
    TempDataSet.Free;
  end;

// �������� �������� �������
  DataModule2.Main.Open;
end;

procedure TForm1.DeleteBaseActionExecute(Sender: TObject);
begin
// ���� "�������� ���� ������"
  DataModule2.DB.Connected := False;
  DataModule2.DB.ConnectionString := 'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security Info=False;User ID=sa;Initial Catalog=master;';
  DataModule2.DB.Connected := True;

  try
    DataModule2.DB.Execute('use master');
    DataModule2.DB.Execute('alter database [dovidka] set single_user with rollback immediate');
    DataModule2.DB.Execute('drop database dovidka');
  except
    on E: EAdoError do
    begin
      // ADO specific error handling
      MessageDlg('ADO Error: '+E.Message, mtError, [mbCancel], 0);
      Exit;
    end;
    on E: EDatabaseError do
    begin
      // Generic database error handling
      MessageDlg('Database Error: '+E.Message, mtError, [mbCancel], 0);
      Exit;
    end;
    on E: Exception do
    begin
      // Other exceptions (non-DB related)
      MessageDlg('Exception: '+E.Message, mtError, [mbCancel], 0);
      Exit;
    end;
  end;
  DataModule2.DB.Connected := False;
  MessageDlg('���� ������ "dovidka" ������� �������!', mtInformation, [mbOk], 0);

// �������� ���� ������ � ����� �������
  CheckDataBase;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
// ����������� �������
  LevelNames := TStringList.Create;

// ����� �������
  TreeList.Visible := False;
  BarManBar1.Visible := False;

  AboutMenuItem.Visible := False;
  EditMenuItem.Visible := False;
  ReOpenMenuItem.Visible := False;
  AddMenuItem.Visible := False;
  AddChildMenuItem.Visible := False;
  DeleteMenuItem.Visible := False;
  RestoreMenuItem.Visible := False;
  ShowDeletedMenuItem.Visible := False;

// �������� ���� ������ � ����� �������
  CheckDataBase;
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
// ������������ ������ �� ������ ������������ �������
  LevelNames.Free;
end;

procedure TForm1.ReOpenActionExecute(Sender: TObject);
begin
// ����������� ��� ������ � ���������� ������ �� ������� �������
  TreeListReOpen(TreeList);
end;

procedure TForm1.TreeListDragDrop(Sender, Source: TObject; X, Y: Integer);
var
  Node: TcxTreeListNode;
begin
  Node := TreeList.GetNodeAt(X, Y);
// �������� ��������������� ������ �� ����� ��������� � ��������� �������
// ������ ��������������� ������ ��� ���� ���������� ��� "���������"
  TreeDragTo(StringToGUID(DragNode.Values[trGUID]), StringToGUID(Node.Values[trGUID]));
end;

procedure TForm1.TreeListDragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
var
  Node: TcxTreeListNode;
begin
  Node := TreeList.GetNodeAt(X, Y);
// ������������� ����� ������ ����� ���������� ���� >= �������, ������ �� ������� ����
// ��� ������� ���� "�����������" ������ ������������ �� "��������������"
// "���������" � �� "���������" ������� ������������ ������
  Accept := (ActualDate.Date >= Trunc(Now)) and
            (Node.Values[trLevel] < DragNode.Values[trLevel]) and
            ((DragNode.Values[trLevel] = 2) or ((DragNode.Values[trLevel] > 2) and (Node.Values[trLevel] > 1))) and
//            (IIF(VarIsNull(Node.Values[trDateExpired]), '', '01.01.2900') = '');
            (Node.Values[trDateExpired] = Null);

end;

procedure TForm1.TreeListMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  // ������ ����� ������ ���� - ��������������
  if Button = mbLeft then
  begin
    DragNode := TreeList.GetNodeAt(X, Y);
  // ������������� ����� ������ ����� ���������� ���� >= �������
  // ��������� ������� ������������ ������
//    if IIF(VarIsNull(DragNode.Values[trDateExpired]), '', '01.01.2900') = ''
    if (DragNode.Values[trDateExpired] = Null) and (ActualDate.Date >= Trunc(Now))
      then TreeList.BeginDrag(False, 10);
  end;
  // ������ ������ ������ ���� - ����������� ����
  if Button = mbRight then TreePopup.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

end.
