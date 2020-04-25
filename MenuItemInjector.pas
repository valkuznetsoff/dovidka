unit MenuItemInjector;

interface

uses
  RTTI, SysUtils, VCL.Menus, Dialogs;

type
  IMenuItem = interface ['{5705F860-4FEC-4D35-B24F-0BB7DAA66F51}']
    procedure DoCreateMenuItem(var ParentMenuItem: TMenuItem);
  end;

  TMenuItemInjector = class
  public
    class function GetMenuItemIntf(aClassName: string): IMenuItem;
  end;

  TConsumer = class
  private
    FMenuItem: IMenuItem;
  public
    constructor Create(aMenuItem: IMenuItem);
    procedure DoCreateMenuItem(var ParentMenuItem: TMenuItem);
  end;
// ---
  TImportMenuItemWord = class(TInterfacedObject, IMenuItem)
  public
    procedure DoCreateMenuItem(var ParentMenuItem: TMenuItem);
    procedure DoExecuteImportWord(Sender: TObject);
  end;

  TImportMenuItemExcel = class(TInterfacedObject, IMenuItem)
  public
    procedure DoCreateMenuItem(var ParentMenuItem: TMenuItem);
    procedure DoExecuteImportExcel(Sender: TObject);
  end;

  TImportMenuItemPDF = class(TInterfacedObject, IMenuItem)
  public
    procedure DoCreateMenuItem(var ParentMenuItem: TMenuItem);
    procedure DoExecuteImportPDF(Sender: TObject);
  end;

  TImportMenuItemOther = class(TInterfacedObject, IMenuItem)
  public
    procedure DoCreateMenuItem(var ParentMenuItem: TMenuItem);
    procedure DoExecuteImportOther(Sender: TObject);
  end;
// ---
  TExportMenuItemFile = class(TInterfacedObject, IMenuItem)
  public
    procedure DoCreateMenuItem(var ParentMenuItem: TMenuItem);
    procedure DoExecuteExportMenuItem(Sender: TObject);
  end;

  TExportMenuItemScreen = class(TInterfacedObject, IMenuItem)
  public
    procedure DoCreateMenuItem(var ParentMenuItem: TMenuItem);
    procedure DoExecuteExportMenuItem(Sender: TObject);
  end;

implementation

{ TImportMenuItemWord }
procedure TImportMenuItemWord.DoCreateMenuItem(var ParentMenuItem: TMenuItem);
var
  MenuItem: TMenuItem;
begin
  MenuItem := TMenuItem.Create(ParentMenuItem);
  MenuItem.Caption := '»мспорт из документа Word';
  MenuItem.OnClick := DoExecuteImportWord;
  ParentMenuItem.Add(MenuItem);
end;

procedure TImportMenuItemWord.DoExecuteImportWord(Sender: TObject);
begin
  ShowMessage('»мспорт из документа Word');
end;

{ TImportMenuItemExcel }
procedure TImportMenuItemExcel.DoCreateMenuItem(var ParentMenuItem: TMenuItem);
var
  MenuItem: TMenuItem;
begin
  MenuItem := TMenuItem.Create(ParentMenuItem);
  MenuItem.Caption := '»мспорт из документа Excel';
  MenuItem.OnClick := DoExecuteImportExcel;
  ParentMenuItem.Add(MenuItem);
end;

procedure TImportMenuItemExcel.DoExecuteImportExcel(Sender: TObject);
begin
  ShowMessage('»мспорт из документа Excel');
end;

{ TImportMenuItemPDF }
procedure TImportMenuItemPDF.DoCreateMenuItem(var ParentMenuItem: TMenuItem);
var
  MenuItem: TMenuItem;
begin
  MenuItem := TMenuItem.Create(ParentMenuItem);
  MenuItem.Caption := '»мспорт из документа PDF';
  MenuItem.OnClick := DoExecuteImportPDF;
  ParentMenuItem.Add(MenuItem);
end;

procedure TImportMenuItemPDF.DoExecuteImportPDF(Sender: TObject);
begin
  ShowMessage('»мспорт из документа PDF');
end;

{ TImportMenuItemOther }
procedure TImportMenuItemOther.DoCreateMenuItem(var ParentMenuItem: TMenuItem);
var
  MenuItem: TMenuItem;
begin
  MenuItem := TMenuItem.Create(ParentMenuItem);
  MenuItem.Caption := '»мспорт из другого документа';
  MenuItem.OnClick := DoExecuteImportOther;
  ParentMenuItem.Add(MenuItem);
end;

procedure TImportMenuItemOther.DoExecuteImportOther(Sender: TObject);
begin
  ShowMessage('»мспорт из другого документа');
end;

{ TExportMenuItemFile }
procedure TExportMenuItemFile.DoCreateMenuItem(var ParentMenuItem: TMenuItem);
var
  MenuItem: TMenuItem;
begin
  MenuItem := TMenuItem.Create(ParentMenuItem);
  MenuItem.Caption := 'Ёкспорт в файл';
  MenuItem.OnClick := DoExecuteExportMenuItem;
  ParentMenuItem.Add(MenuItem);
end;

procedure TExportMenuItemFile.DoExecuteExportMenuItem(Sender: TObject);
begin
  ShowMessage('Ёкспорт в файл');
end;

{ TExportMenuItemScreen }
procedure TExportMenuItemScreen.DoCreateMenuItem(var ParentMenuItem: TMenuItem);
var
  MenuItem: TMenuItem;
begin
  MenuItem := TMenuItem.Create(ParentMenuItem);
  MenuItem.Caption := 'Ёкспорт на экран';
  MenuItem.OnClick := DoExecuteExportMenuItem;
  ParentMenuItem.Add(MenuItem);
end;

procedure TExportMenuItemScreen.DoExecuteExportMenuItem(Sender: TObject);
begin
  ShowMessage('Ёкспорт на экран');
end;

{ TMenuItemInjector }
class function TMenuItemInjector.GetMenuItemIntf(aClassName: string): IMenuItem;
var
  RttiContext: TRttiContext;
  RttiType: TRttiInstanceType;
begin
  RttiType := RttiContext.FindType(aClassName) as TRttiInstanceType;
  if RttiType <> nil then
    Result:= RttiType.GetMethod('Create').Invoke(RttiType.MetaclassType, []).AsInterface as IMenuItem;
end;

{ TConsumer }
constructor TConsumer.Create(aMenuItem: IMenuItem);
begin
  FMenuItem:= aMenuItem;
end;

procedure TConsumer.DoCreateMenuItem(var ParentMenuItem: TMenuItem);
begin
  if FMenuItem <> nil then
    FMenuItem.DoCreateMenuItem(ParentMenuItem);
end;

initialization

  (* This code in the initialization section is just a trick.   *)
  (* We need to force the complier in order to embed the        *)
  (* classes TExportMenuItemFile and TExportMenuItemScreen into the executable. *)
  (* If we donТt do this, then no runtime type information      *)
  (* for these classes will be available.                       *)

  with TImportMenuItemWord.Create do Free;
  with TImportMenuItemExcel.Create do Free;
  with TImportMenuItemPDF.Create do Free;
  with TImportMenuItemOther.Create do Free;

  with TExportMenuItemFile.Create do Free;
  with TExportMenuItemScreen.Create do Free;

end.
