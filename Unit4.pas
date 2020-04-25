unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  dxSkinXmas2008Blue, cxTextEdit, cxMemo, cxRichEdit;

type
  TForm4 = class(TForm)
    Description: TcxRichEdit;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

procedure ShowAboutForm;

implementation

{$R *.dfm}

var
  FForm: TForm4;

procedure ShowAboutForm;
var
  Items: TStrings;
begin
  if FForm = nil then
    FForm := TForm4.Create(Application);
  Items:=TStringList.Create;
  Items.LoadFromFile('d:\Dovidka\About.txt');
  FForm.Description.Lines.Text := Items.Text;
  FForm.Show;
end;

procedure TForm4.FormCreate(Sender: TObject);
  procedure AssignBounds;
  var
    ADesktopArea: TRect;
    AOffset: Integer;
  begin
    Left := Application.MainForm.BoundsRect.Right;
    Top := Application.MainForm.BoundsRect.Top;
    Height := Application.MainForm.Height;
    ADesktopArea := GetDesktopWorkArea(Point(Left, Top));
    if BoundsRect.Right > ADesktopArea.Right then
    begin
      AOffset := BoundsRect.Right - ADesktopArea.Right;
      Left := Left - AOffset;
      if Application.MainForm.Left > AOffset then
        Application.MainForm.Left := Application.MainForm.Left - AOffset
      else
        Application.MainForm.Left := 0;
    end;
  end;

begin
  AssignBounds;
end;

end.
