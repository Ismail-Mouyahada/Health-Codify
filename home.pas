unit home;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, simpleipc, eventlog, Forms, Controls, Graphics, Dialogs,
  LazHelpHTML, ExtCtrls, StdCtrls, Spin, acs_indicator, UTF8Process, SpinEx,
  HtmlView, FramBrwz, BCSVGButton, BCButton, DTAnalogClock, BGRAKnob,
  DTAnalogGauge, dtthemedclock, BCRadialProgressBar, dtthemedgauge,
  BGRAVirtualScreen, BCButtonFocus, BCMaterialDesignButton, uCmdBox, uPoweredby,
  uplaysound, MMSystem;

type

  { TForm1 }

  TForm1 = class(TForm)
    barOfProgress: TBCRadialProgressBar;
    barOfProgress1: TBCRadialProgressBar;
    BCMaterialDesignButton1: TBCMaterialDesignButton;
    BCMaterialDesignButton2: TBCMaterialDesignButton;
    BCMaterialDesignButton3: TBCMaterialDesignButton;
    Edit1: TEdit;
    Image1: TImage;
    Image2: TImage;
    Label1: TLabel;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    Timer1: TTimer;
    procedure barOfProgressClick(Sender: TObject);
    procedure BCButton1Click(Sender: TObject);
    procedure BCButton2Click(Sender: TObject);
    procedure BCMaterialDesignButton1Click(Sender: TObject);
    procedure BCMaterialDesignButton2Click(Sender: TObject);
    procedure BCMaterialDesignButton3Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure StaticText1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  Counter:Integer= 0;
  ProgressBarVal:integer = 0;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.Image1Click(Sender: TObject);
begin

end;

procedure TForm1.StaticText1Click(Sender: TObject);
begin

end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  StaticText1.Visible:=False;
  Inc(counter);
  barOfProgress.MaxValue := StrToInt(Edit1.Text) * 60;;
  barOfProgress.Value:= counter;
  if(Counter >= barOfProgress.MaxValue) then
    begin
      PlaySound('welcome.mp3' ,0,SND_SYNC);
      StaticText2.Visible:=True;
    end;
end;

procedure TForm1.BCButton1Click(Sender: TObject);
begin
  Timer1.Enabled:=True;
end;

procedure TForm1.barOfProgressClick(Sender: TObject);
begin

end;

procedure TForm1.BCButton2Click(Sender: TObject);
begin
  Timer1.Enabled:=False;
end;

procedure TForm1.BCMaterialDesignButton1Click(Sender: TObject);
begin
  Timer1.Enabled:=True;
end;

procedure TForm1.BCMaterialDesignButton2Click(Sender: TObject);
begin
  StaticText2.Visible:=False;
  Timer1.Enabled:=False;
  barOfProgress.Value:=0;

end;

procedure TForm1.BCMaterialDesignButton3Click(Sender: TObject);
begin
  Timer1.Enabled:=False;
end;

procedure TForm1.Edit1Change(Sender: TObject);
begin

end;

end.

