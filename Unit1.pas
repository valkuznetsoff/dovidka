unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  System.Types, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
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
    procedure TreeListKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    MainDataBaseName: string;
    DragNode: TcxTreeListNode;
    LevelNames: TStringList;
    PrevActualDate: TDate;

    function DataBaseExists(DBName: string): boolean;
    procedure ExecuteScriptFromFile(aFileName: string);
    procedure ExecuteSQL(aSQL: string);
    function OpenSQL(aSQL: string): TADOQuery;

    function CheckActualDate: boolean;
    procedure ReCreateMainQuery;

    procedure TreeDragTo(DragGUID, DropGUID, NewGUID: TGUID);

    procedure TreeMoveTo(FromGUID, ToGUID, NewGUID: TGUID); overload;
    procedure TreeMoveTo(FromGUID, NewGUID: TGUID); overload;

    procedure TreeDelete(DeleteGUID: TGUID);

    procedure TreeRestore(RestoreGUID: TGUID; RestoreLevel: integer; RestoreName: string; aNewGUID: TGUID); overload;
    procedure TreeRestore(RestoreGUID, RestoreGUID_Parent: TGUID; RestoreLevel: integer; RestoreName: string; aNewGUID: TGUID); overload;

    procedure TreeListReOpen(aTreeList: TcxDBTreeList); overload;
    procedure TreeListReOpen(aTreeList: TcxDBTreeList; Key: string; Value: Integer); overload;
    procedure TreeListReOpen(aTreeList: TcxDBTreeList; Key: string; Value: TGUID); overload;
    { Private declarations }
  public
    { Public declarations }
  end;

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
// �������� �� ������� ����� � ������� �������� � ��� �������������
// ����� ���� �� 2 ������ �����, ����������� "Win32\Debug"
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
      Items.Free;
    end;
  finally
    IniFile.Free;
  end;
end;

procedure TForm1.TreeListReOpen(aTreeList: TcxDBTreeList);
begin
// ������������ �������� �� ���������
  TreeListReOpen(aTreeList, 'ID', aTreeList.DataController.DataSource.DataSet.FieldByName('ID').AsInteger);
end;

procedure TForm1.TreeListReOpen(aTreeList: TcxDBTreeList; Key: string; Value: Integer);
begin
// ������������ �������� �� ����
  with aTreeList.DataController.DataSource do
  begin
    DataSet.Close; DataSet.Open;
    aTreeList.SetFocus; aTreeList.FullExpand;
    DataSet.Locate(Key, Value, [loPartialKey]);
  end;
end;

procedure TForm1.TreeListReOpen(aTreeList: TcxDBTreeList; Key: string; Value: TGUID);
begin
// ������������ �������� �� ����������� ��������������
  with aTreeList.DataController.DataSource do
  begin
    DataSet.Close; DataSet.Open;
    aTreeList.SetFocus; aTreeList.FullExpand;
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
    if AViewInfo.Node.Values[TreeList.GetColumnByFieldName('Updated').ItemIndex] <> Null then
    begin
      if (Trunc(AViewInfo.Node.Values[TreeList.GetColumnByFieldName('Updated').ItemIndex]) > ActualDate.Date) then
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
    if AViewInfo.Node.Values[TreeList.GetColumnByFieldName('DateExpired').ItemIndex] <> Null then
    begin
      if (AViewInfo.Node.Values[TreeList.GetColumnByFieldName('DateExpired').ItemIndex] > ActualDate.Date) then
      begin
        aCanvas.Font.Color := clRed;
        aDone := False;
        Exit;
      end;
    end;
  end;

// �������������� ������ ��� "���������" �������
  if (AViewInfo.Node.Values[TreeList.GetColumnByFieldName('DateExpired').ItemIndex] <> Null) then
  begin
    if (AViewInfo.Node.Values[TreeList.GetColumnByFieldName('DateExpired').ItemIndex] <= ActualDate.Date) then
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

procedure TForm1.ExecuteSQL(aSQL: string);
var
  TempQuery: TADOQuery;
begin
  TempQuery := TADOQuery.Create(Self);
  TempQuery.Connection := DataModule2.DB;
  try
    TempQuery.Close;
    TempQuery.SQL.Clear;
    TempQuery.SQL.Add(aSQL);
    TempQuery.ExecSQL;
  finally
    TempQuery.Free
  end;
end;

function TForm1.OpenSQL(aSQL: string): TADOQuery;
begin
  Result := TADOQuery.Create(Self);
  Result.Connection := DataModule2.DB;

  Result.Close;
  Result.SQL.Clear;
  Result.SQL.Add(aSQL);
  Result.Open;
end;

procedure TForm1.TreeDragTo(DragGUID, DropGUID, NewGUID: TGUID);
var
  NewChildGUID: TGUID;
begin
// ����������� ��������� "�����������" �������
// ������������� ���� ��������� ��� ������������ �������
  ExecuteSQL(Format('DELETE FROM _OBJECTS WHERE GUID = ''%s''', [GUIDToString(DragGUID)]));

// ��������� ����� ������ � ���������� ���������
  ExecuteSQL(Format('INSERT INTO _OBJECTS (GUID, GUID_PARENT, LEVEL, NAME) '+
                    '  SELECT ''%s'', ''%s'', LEVEL, NAME FROM _OBJECTS WHERE GUID = ''%s''',
                    [GUIDToString(NewGUID), GUIDToString(DropGUID), GUIDToString(DragGUID)]));

// ��������� �������� ������� ������� ���� � ������������ �������
  with OpenSQL(Format('SELECT * FROM _OBJECTS WHERE GUID_PARENT = ''%s'' AND DATEEXPIRED IS NULL', [GUIDToString(DragGUID)])) do
  try
    while not EOF do
    begin
  // �������� �� ���� �������� ��������
      CreateGUID(NewChildGUID);
      TreeDragTo((FieldByName('GUID') as TGUIDField).AsGuid, NewGUID, NewChildGUID);
      Next;
    end;
  finally
    Free;
  end;
end;

procedure TForm1.TreeMoveTo(FromGUID, ToGUID, NewGUID: TGUID);
var
  NewChildGUID: TGUID;
begin
// ����������� ��������� "�����������" �������
// ������������� ���� ��������� ��� ������������ �������
  ExecuteSQL(Format('DELETE FROM _OBJECTS WHERE GUID = ''%s''', [GUIDToString(FromGUID)]));

// ��������� ����� ������ � ���������� ���������
  ExecuteSQL(Format('INSERT INTO _OBJECTS (GUID, GUID_PARENT, LEVEL, NAME) '+
                    '  SELECT ''%s'', ''%s'', LEVEL, NAME FROM _OBJECTS WHERE GUID = ''%s''',
                    [GUIDToString(NewGUID), GUIDToString(ToGUID), GUIDToString(FromGUID)]));

// ��������� �������� ������� ������� ���� � ������������ �������
  with OpenSQL(Format('SELECT * FROM _OBJECTS WHERE GUID_PARENT = ''%s'' AND DATEEXPIRED IS NULL', [GUIDToString(FromGUID)])) do
  try
    while not EOF do
    begin
  // �������� �� ���� �������� ��������
      CreateGUID(NewChildGUID);
      TreeMoveTo((FieldByName('GUID') as TGUIDField).AsGuid, NewGUID, NewChildGUID);
      Next;
    end;
  finally
    Free;
  end;
end;

procedure TForm1.TreeMoveTo(FromGUID, NewGUID: TGUID);
var
  NewChildGUID: TGUID;
begin
// ����������� ��������� "�����������" �������
// ������������� ���� ��������� ��� ������������ �������
  ExecuteSQL(Format('DELETE FROM _OBJECTS WHERE GUID = ''%s''', [GUIDToString(FromGUID)]));

// ��������� ����� ������ � ���������� ���������
  ExecuteSQL(Format('INSERT INTO _OBJECTS (GUID, LEVEL, NAME) '+
                    '  SELECT ''%s'', LEVEL, NAME FROM _OBJECTS WHERE GUID = ''%s''',
                    [GUIDToString(NewGUID), GUIDToString(FromGUID)]));

// ��������� �������� ������� ������� ���� � ������������ �������
  with OpenSQL(Format('SELECT * FROM _OBJECTS WHERE GUID_PARENT = ''%s'' AND DATEEXPIRED IS NULL', [GUIDToString(FromGUID)])) do
  try
    while not EOF do
    begin
  // �������� �� ���� �������� ��������
      CreateGUID(NewChildGUID);
      TreeMoveTo((FieldByName('GUID') as TGUIDField).AsGuid, NewGUID, NewChildGUID);
      Next;
    end;
  finally
    Free;
  end;
end;

procedure TForm1.TreeDelete(DeleteGUID: TGUID);
begin
// ����������� ��������� "��������" �������
// ������������� ���� ��������� ��� "����������" �������
  ExecuteSQL(Format('DELETE FROM _OBJECTS WHERE GUID = ''%s'' AND DATEEXPIRED IS NULL', [GUIDToString(DeleteGUID)]));

// ������� �������� ������� ������� ���� � "����������" �������
  with OpenSQL(Format('SELECT * FROM _OBJECTS WHERE GUID_PARENT = ''%s'' AND DATEEXPIRED IS NULL', [GUIDToString(DeleteGUID)])) do
  try
    while not EOF do
    begin
  // �������� �� ���� �������� ��������
      TreeDelete((FieldByName('GUID') as TGUIDField).AsGuid);
      Next;
    end;
  finally
    Free;
  end;
end;

procedure TForm1.TreeRestore(RestoreGUID: TGUID; RestoreLevel: integer; RestoreName: string; aNewGUID: TGUID);
var
  aNewChildGUID: TGUID;
begin
// ����������� ��������� "��������������" �������
// ������� ���� ��������� ��� "������������������" �������
  ExecuteSQL(Format('INSERT INTO _OBJECTS (GUID, LEVEL, NAME) VALUES (''%s'', ''%s'', ''%s'')',
             [GUIDToString(aNewGUID), IntToStr(RestoreLevel), RestoreName]));

// ��������������� �������� ������� ������� ���� � "����������" �������
  with OpenSQL(Format('SELECT * FROM _OBJECTS WHERE GUID_PARENT = ''%s'' AND DATEEXPIRED IS NOT NULL', [GUIDToString(RestoreGUID)])) do
  try
    while not EOF do
    begin
  // �������� �� ���� �������� ��������
      CreateGUID(aNewChildGUID);
      TreeRestore(aNewGuid,
                  (FieldByName('GUID') as TGUIDField).AsGuid,
                  FieldByName('Level').AsInteger,
                  FieldByName('Name').AsString,
                  aNewChildGUID);
      Next;
    end;
  finally
    Free;
  end;
end;

procedure TForm1.TreeRestore(RestoreGUID, RestoreGUID_Parent: TGUID; RestoreLevel: integer; RestoreName: string; aNewGUID: TGUID);
var
  aNewChildGUID: TGUID;
begin
// ����������� ��������� "��������������" �������
// ������� ���� ��������� ��� ���������� �������
  ExecuteSQL(Format('INSERT INTO _OBJECTS (GUID, GUID_PARENT, LEVEL, NAME) VALUES (''%s'', ''%s'', ''%s'', ''%s'')',
             [GUIDToString(aNewGUID), GUIDToString(RestoreGUID), IntToStr(RestoreLevel), RestoreName]));

// ��������������� �������� ������� ������� ���� � ���������� �������
  with OpenSQL(Format('SELECT * FROM _OBJECTS WHERE GUID_PARENT = ''%s'' AND DATEEXPIRED IS NOT NULL', [GUIDToString(RestoreGUID_Parent)])) do
  try
    while not EOF do
    begin
  // �������� �� ���� �������� ��������
      CreateGUID(aNewChildGUID);
      TreeRestore(aNewGUID,
                  (FieldByName('GUID') as TGUIDField).AsGuid,
                  FieldByName('LEVEL').AsInteger,
                  FieldByName('NAME').AsString,
                  aNewChildGUID);
      Next;
    end;
  finally
    Free;
  end;
end;

procedure TForm1.AboutActionExecute(Sender: TObject);
begin
// ���� "� �������"
  ShowAboutForm;
end;

procedure TForm1.ReCreateMainQuery;
var
  aSQL: string;
begin
// ������������ �������� �������
  aSQL :=
    'select o.id, o.guid, o.guid_parent, o.level, l.name as level_name, o.name, o.datestart, o.dateexpired, o.updated '+
    'from _objects o '+
    'left join _levels l on l.id = o.level '+
    'where '''+FormatDateTime('MM.dd.yyyy', ActualDate.Date)+''' >= DATESTART ';

  if not ShowDeletedAction.Checked then
    aSQL := aSQL +
      '  and ((dateexpired is null) or ('''+FormatDateTime('MM.dd.yyyy', ActualDate.Date)+''' < dateexpired)) ';

  aSQL := aSQL +
    'order by o.level, o.name';

  with DataModule2.Main do
  begin
    Close;
    SQL.Clear;
    SQL.Add(aSQL);
    Open;
  end;
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

  ReCreateMainQuery;
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

  ReCreateMainQuery;
// ���������� ������
  TreeListReOpen(TreeList, 'ID', ID);
end;

function TForm1.CheckActualDate: boolean;
begin
  Result := ActualDate.Date >= Trunc(Now);
  if not Result then
    MessageDlg('���������� ���� ������ �������.'+#13#10+'��������� ���������!', mtError, [mbCancel], 0);
end;

procedure TForm1.AddActionExecute(Sender: TObject);
var
  aGUID: TGUID;
  aLevel: integer;
  aNewName: string;
begin
// ���� "���������� ������� � ������� �������"

// ������ ��������, ���� ���������� ���� ������ �������
  if not CheckActualDate then Exit;

  if not Assigned(TreeList.FocusedNode) then TreeListReOpen(TreeList);

// ������ ��������� � "���������" ��������
  if (TreeList.FocusedNode.Values[TreeList.GetColumnByFieldName('DateExpired').ItemIndex] <> Null) then
  begin
    MessageDlg('������ ��������� � ��������� ��������!', mtError, [mbCancel], 0);
    Exit;
  end;

  CreateGUID(aGUID);
  aLevel := StrToInt(TreeList.FocusedNode.Values[TreeList.GetColumnByFieldName('Level').ItemIndex]);

  aNewName := InputBox(LevelNames.Strings[aLevel-1], '������� ����� ���������: ', '');
  if aNewName > '' then
  begin
    ExecuteSQL(Format('INSERT INTO _OBJECTS (GUID, LEVEL, NAME) VALUES (''%s'', ''%s'', ''%s'')',
               [GUIDToString(aGUID), IntToStr(aLevel), aNewName]));

// ���������� ������
    TreeListReOpen(TreeList, 'GUID', aGUID);
  end;
end;

procedure TForm1.AddChildActionExecute(Sender: TObject);
var
  aGUID: TGUID;
  aLevel: integer;
  aNewName: string;
begin
// ���� "���������� ��������� ������� � ������� ������"

// ������ ��������, ���� ���������� ���� ������ �������
  if not CheckActualDate then Exit;

  if not Assigned(TreeList.FocusedNode) then TreeListReOpen(TreeList);

// ������ ��������� �������� � "���������" ��������
  if (TreeList.FocusedNode.Values[TreeList.GetColumnByFieldName('DateExpired').ItemIndex] <> Null) then
  begin
    MessageDlg('������ ��������� �������� � ��������� ��������!', mtError, [mbCancel], 0);
    Exit;
  end;

  aLevel := StrToInt(TreeList.FocusedNode.Values[TreeList.GetColumnByFieldName('Level').ItemIndex]);

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
    ExecuteSQL(Format('INSERT INTO _OBJECTS (GUID, GUID_PARENT, LEVEL, NAME) VALUES (''%s'', ''%s'', ''%s'', ''%s'')',
               [GUIDToString(aGUID), TreeList.FocusedNode.Values[TreeList.GetColumnByFieldName('GUID').ItemIndex], IntToStr(aLevel+1), aNewName]));

// ���������� ������
    TreeListReOpen(TreeList, 'GUID', aGUID);
  end;
end;

procedure TForm1.DeleteActionExecute(Sender: TObject);
begin
// ���� "�������� ������"

// ������ ��������, ���� ���������� ���� ������ �������
  if not CheckActualDate then Exit;

  if not Assigned(TreeList.FocusedNode) then TreeListReOpen(TreeList);

// �������� �� ������� �������� ������
  if TreeList.FocusedNode.Values[TreeList.GetColumnByFieldName('DateExpired').ItemIndex] <> NULL
    then MessageDlg('������ ������� ��� ��������� ������!', mtInformation, [mbCancel], 0)
// ������ ����������� ��������� "��������" �������
    else
    begin
      if MessageDlg('������� ������?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then Exit;

      TreeDelete(StringToGUID(TreeList.FocusedNode.Values[TreeList.GetColumnByFieldName('GUID').ItemIndex]));
// ���������� ������
      TreeListReOpen(TreeList, 'GUID', StringToGUID(TreeList.FocusedNode.Values[TreeList.GetColumnByFieldName('GUID').ItemIndex]));
    end;
end;

procedure TForm1.RestoreActionExecute(Sender: TObject);
var
  Node_Parent: TcxTreeListNode;
  aNewGUID: TGUID;
begin
// ���� "�������������� ������"

// ������ ��������, ���� ���������� ���� ������ �������
  if not CheckActualDate then Exit;

  if not Assigned(TreeList.FocusedNode) then TreeListReOpen(TreeList);

// �������� �� ������� �������� ������
  if TreeList.FocusedNode.Values[TreeList.GetColumnByFieldName('DateExpired').ItemIndex] = NULL
    then MessageDlg('������ ������������ �� ��������� ������!', mtInformation, [mbCancel], 0)
    else
    begin
// �������� ������������� ������� �� "��������"
      if TreeList.FocusedNode.Values[TreeList.GetColumnByFieldName('GUID_Parent').ItemIndex] <> Null then
      begin
        Node_Parent := TreeList.FindNodeByKeyValue(TreeList.FocusedNode.Values[TreeList.GetColumnByFieldName('GUID_Parent').ItemIndex]);
        if Assigned(Node_Parent) then
        begin
          if Node_Parent.Values[TreeList.GetColumnByFieldName('DateExpired').ItemIndex] <> NULL then
          begin
            MessageDlg('������ ������������ ������ ���� ������������ ������ ������!', mtInformation, [mbCancel], 0);
            Exit
          end;
        end;
      end;

      if MessageDlg('������������ ������?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then Exit;

// ������ ����������� ��������� "��������������" �������
      CreateGUID(aNewGUID);
      if TreeList.FocusedNode.Values[TreeList.GetColumnByFieldName('GUID_Parent').ItemIndex] = Null then
        TreeRestore(StringToGUID(TreeList.FocusedNode.Values[TreeList.GetColumnByFieldName('GUID').ItemIndex]),
                    TreeList.FocusedNode.Values[TreeList.GetColumnByFieldName('Level').ItemIndex],
                    TreeList.FocusedNode.Values[TreeList.GetColumnByFieldName('Name').ItemIndex], aNewGUID)
      else
        TreeRestore(StringToGUID(TreeList.FocusedNode.Values[TreeList.GetColumnByFieldName('GUID_Parent').ItemIndex]),
                    StringToGUID(TreeList.FocusedNode.Values[TreeList.GetColumnByFieldName('GUID').ItemIndex]),
                    TreeList.FocusedNode.Values[TreeList.GetColumnByFieldName('Level').ItemIndex],
                    TreeList.FocusedNode.Values[TreeList.GetColumnByFieldName('Name').ItemIndex], aNewGUID);
// ���������� ������
      TreeListReOpen(TreeList, 'GUID', aNewGUID);
    end;
end;

procedure TForm1.EditActionExecute(Sender: TObject);
var
  aGUID, aNewGUID: TGUID;
  aLevel: integer;
  aName, aNewName: string;
begin
// ���� "��������������"

// ������ ��������, ���� ���������� ���� ������ �������
  if not CheckActualDate then Exit;

  if not Assigned(TreeList.FocusedNode) then TreeListReOpen(TreeList);

// ������ �������� "���������" �������
  if (TreeList.FocusedNode.Values[TreeList.GetColumnByFieldName('DateExpired').ItemIndex] <> Null) then
  begin
    MessageDlg('������ �������� ��������� �������!', mtError, [mbCancel], 0);
    Exit;
  end;

  aGUID := StringToGUID(TreeList.FocusedNode.Values[TreeList.GetColumnByFieldName('GUID').ItemIndex]);
  aLevel := StrToInt(TreeList.FocusedNode.Values[TreeList.GetColumnByFieldName('Level').ItemIndex]);
  aName := TreeList.FocusedNode.Values[TreeList.GetColumnByFieldName('Name').ItemIndex];
  if TreeList.FocusedNode.Values[TreeList.GetColumnByFieldName('DateExpired').ItemIndex] <> NULL then Exit;

  aNewName := InputBox(LevelNames.Strings[aLevel-1], '������� ����� ���������: ', aName);
  if aName <> aNewName then
  begin
    CreateGUID(aNewGUID);
    if TreeList.FocusedNode.Values[TreeList.GetColumnByFieldName('GUID_Parent').ItemIndex] <> Null then
      TreeMoveTo(aGUID, StringToGUID(TreeList.FocusedNode.Values[TreeList.GetColumnByFieldName('GUID_Parent').ItemIndex]), aNewGUID)
    else TreeMoveTo(aGUID, aNewGUID);

    ExecuteSQL(Format('UPDATE _OBJECTS SET NAME = ''%s'' WHERE GUID = ''%s'' AND DATEEXPIRED IS NULL',
               [aNewName, GUIDToString(aNewGUID)]));

    TreeListReOpen(TreeList, 'GUID', aNewGUID);
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
  MainDataBaseName := InputBox('���� ������', '������� ����� ���� ������: ', MainDataBaseName);

  if MessageDlg('������� ���� ������ '+MainDataBaseName+'?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then Exit;

  DataModule2.DB.Connected := False;
  DataModule2.DB.ConnectionString := 'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=master';

  try
    DataModule2.DB.Execute('USE MASTER');
    DataModule2.DB.Execute('CREATE DATABASE ' + MainDataBaseName);
    DataModule2.DB.Execute('USE ' + MainDataBaseName);

  // �������� � ���������� ������ ��������� � ����� Tables.sql
    ExecuteScriptFromFile('Tables.sql');

    DataModule2.DB.Execute('SET ANSI_NULLS ON');
    DataModule2.DB.Execute('SET QUOTED_IDENTIFIER ON');

  // ������� � �������� ��������� �������� (� ����� ������� - ����)
    DataModule2.DB.Execute
    (
      'CREATE TRIGGER [DBO].[UpdateObjects] ON [DBO].[_Objects] INSTEAD OF Update '+
      'AS '+
      'BEGIN '+
      '  SET NOCOUNT ON; '+
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

  MessageDlg('���� ������ ' + MainDataBaseName + ' ������� �������!', mtInformation, [mbOk], 0);
end;

procedure TForm1.ConnectBaseActionExecute(Sender: TObject);
var
  i, Num: integer;
  IniFile: TIniFile;
  Sections: TStrings;
begin
// ���� "����������� � ���� ������"
  MainDataBaseName := InputBox('���� ������', '������� ����� ���� ������: ', MainDataBaseName);

  DataModule2.DB.Connected := False;
  DataModule2.DB.ConnectionString := 'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security Info=False;User ID=sa;Initial Catalog='+MainDataBaseName;

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
  with OpenSQL('SELECT ID, NAME FROM _LEVELS') do
  try
    while not EOF do
    begin
      LevelNames.Add(FieldByName('NAME').Value);
      Next;
    end;
  finally
    Free;
  end;

// �������� �������� �������
  DataModule2.Main.Open;

// ����������� ������ ���� ������
  INIFile := TIniFile.Create(ChangeFileExt(ParamStr(0), '.INI'));
  try
    IniFile.WriteString('Main', 'DataBaseName', MainDataBaseName);
  finally
    IniFile.Free;
  end;

  Caption := Caption + ' - ' + MainDataBaseName;
end;

procedure TForm1.DeleteBaseActionExecute(Sender: TObject);
begin
// ���� "�������� ���� ������"
  MainDataBaseName := InputBox('���� ������', '������� ����� ���� ������: ', MainDataBaseName);

  if MessageDlg('��������!!!'+#13#10+#13#10+'���� ������ '+MainDataBaseName+' �������� ��������!'+#13#10+#13#10+'������� ���� ������?',
                mtConfirmation, [mbYes, mbNo], 0) = mrNo then Exit;

  DataModule2.DB.Connected := False;
  DataModule2.DB.ConnectionString := 'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security Info=False;User ID=sa;Initial Catalog=master;';
  DataModule2.DB.Connected := True;

  try
    DataModule2.DB.Execute('use master');
    DataModule2.DB.Execute('alter database ['+MainDataBaseName+'] set single_user with rollback immediate');
    DataModule2.DB.Execute('drop database '+MainDataBaseName);
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
  MessageDlg('���� ������ ' + MainDataBaseName + ' ������� �������!', mtInformation, [mbOk], 0);
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  IniFile: TIniFile;
begin
// ������������� ������������ ���� ������
  INIFile := TIniFile.Create(ChangeFileExt(ParamStr(0), '.INI'));
  try
    MainDataBaseName := INIFile.ReadString('Main', 'DataBaseName', 'Dovidka');
  finally
    IniFile.Free;
  end;

// ������������ �������
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
  NewGUID: TGUID;
begin
  Node := TreeList.GetNodeAt(X, Y);
// �������� ��������������� ������ �� ����� ��������� � ��������� �������
// ������ ��������������� ������ ��� ���� ���������� ��� "���������"
  CreateGUID(NewGUID);
  TreeDragTo(StringToGUID(DragNode.Values[TreeList.GetColumnByFieldName('GUID').ItemIndex]),
             StringToGUID(Node.Values[TreeList.GetColumnByFieldName('GUID').ItemIndex]), NewGUID);
// ���������� ������
  TreeListReOpen(TreeList, 'GUID', NewGUID);
end;

procedure TForm1.TreeListDragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
var
  Node: TcxTreeListNode;
begin
  Accept := False;
  Node := TreeList.GetNodeAt(X, Y);
  if not Assigned(Node) then Exit;

// ������������� ����� ������ ����� ���������� ���� >= �������, ������ �� ������� ����
// ��� ������� ���� "�����������" ������ ������������ �� "��������������"
// "���������" � �� "���������" ������� ������������ ������
  if not CheckActualDate then Exit;

  Accept := (ActualDate.Date >= Trunc(Now)) and
            (Node.Values[TreeList.GetColumnByFieldName('Level').ItemIndex] < DragNode.Values[TreeList.GetColumnByFieldName('Level').ItemIndex]) and
            ((DragNode.Values[TreeList.GetColumnByFieldName('Level').ItemIndex] = 2) or ((DragNode.Values[TreeList.GetColumnByFieldName('Level').ItemIndex] > 2) and (Node.Values[TreeList.GetColumnByFieldName('Level').ItemIndex] > 1))) and
            (Node.Values[TreeList.GetColumnByFieldName('DateExpired').ItemIndex] = Null);
end;

procedure TForm1.TreeListMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  // ������ ����� ������ ���� - ��������������
  if Button = mbLeft then
  begin
    DragNode := TreeList.GetNodeAt(X, Y);
    if not Assigned(DragNode) then Exit;

  // ������������� ����� ������ ����� ���������� ���� >= �������
  // ��������� ������� ������������ ������
    if (DragNode.Values[TreeList.GetColumnByFieldName('DateExpired').ItemIndex] = Null) and (ActualDate.Date >= Trunc(Now)) then
      TreeList.BeginDrag(False, 10);
  end;
  // ������ ������ ������ ���� - ����������� ����
  if Button = mbRight then TreePopup.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TForm1.TreeListKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if not Assigned(TreeList.FocusedNode) then TreeListReOpen(TreeList);
end;

end.
