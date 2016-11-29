unit Unit4;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  Buttons, ComCtrls, StdCtrls;

type

  { TForm4 }

  TForm4 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    ProgressBar1: TProgressBar;
    ProgressBar2: TProgressBar;
    ProgressBar3: TProgressBar;
    TimerDandN: TTimer;
    TimerSon: TTimer;
    TimerEda: TTimer;
    TimerMed: TTimer;
    TimerPlay: TTimer;
    TimerNoNow: TTimer;
    start: TImage;
    Timer1: TTimer;
    Timer2: TTimer;
    TimerComonSon: TTimer;
    TimerSplyu: TTimer;
    TimerDown: TTimer;
    now: TLabel;
    //procedure TimerDandNTimer(Sender: TObject);
    procedure TimerSonTimer(Sender: TObject);
    procedure TimerEdaTimer(Sender: TObject);
    procedure TimerMedTimer(Sender: TObject);
    procedure TimerPlayTimer(Sender: TObject);
    //procedure Image5Click(Sender: TObject);
    //procedure TimerBirdCaputTimer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form4: TForm4;
  i:integer=0;
  b:integer=0;
  vleft:integer=0;
  right:integer=0;
  game_score:integer=0;
  cat, cat_i,zaraza,med : integer;
  score:integer=0;
  aptechka:integer=0;
  // Старт и пауза
i_Timer1:integer;
i_Timer2:integer;
i_TimerBird:integer;
i_TimerBirdCaput:integer;
i_TimerComonSon:integer;
i_TimerDandN :integer;
i_TimerDown:integer;
i_TimerEda:integer;
i_TimerMed:integer;
i_TimerNoNow:integer;
i_TimerPlay:integer;
i_TimerSon :integer;

implementation
uses Unit1;
{$R *.lfm}

procedure new_game();
begin
form4.start.Visible:=true;
form4.ProgressBar1.Position:=40;
//form4.Gauge6.Progress:=100;
//form4.Gauge7.Progress:=40;
//form4.Gauge8.Progress:=100;
form4.Timer1.Enabled:=false;
form4.Timer2.Enabled:=false;
form4.TimerComonSon.Enabled:=false;
form4.TimerDandN.Enabled:=true;
form4.TimerDown.Enabled:=false;
form4.TimerEda.Enabled:=true;
form4.TimerMed.Enabled:=false;
form4.TimerNoNow.Enabled:=false;
form4.TimerPlay.Enabled:=true;
//form4.TimerScore.Enabled:=true;
form4.TimerSon.Enabled:=false;
form4.TimerSplyu.Enabled:=false;
//form4.LabelScore.Caption:='0';
form4.start.Enabled:=true;
aptechka:=0;
form4.now.Caption:='Новая игра началась';
form4.TimerNoNow.Enabled:=true;
score:=0;
end;

procedure Start_Game();
begin
if  i_Timer1=1 then begin
form4.Timer1.Enabled:=true;
i_Timer1:=0;
end;

if i_Timer2=1 then begin
form4.Timer2.Enabled:=true;
i_Timer2:=0;
end;

if i_TimerComonSon=1 then begin
form4.TimerComonSon.Enabled:=true;
i_TimerComonSon:=0;
end;

 if i_TimerDandN=1 then begin
form4.TimerDandN.Enabled:=true;
i_TimerDandN:=0;
 end;

 if i_TimerDown=1 then begin
form4.TimerDown.Enabled:=true;
i_TimerDown:=0;
end;

if i_TimerEda=1 then begin
form4.TimerEda.Enabled:=true;
i_TimerEda:=0;
end;

if i_TimerMed=1 then begin
form4.TimerMed.Enabled:=true;
i_TimerMed:=0;
end;

if  i_TimerNoNow=1 then begin
form4.TimerNoNow.Enabled:=true;
i_TimerNoNow:=0;
end;

if i_TimerPlay=1 then begin
form4.TimerPlay.Enabled:=true;
i_TimerPlay:=0;
end;

if i_TimerSon=1 then begin
form4.TimerSon.Enabled:=true;
i_TimerSon:=0;
end;

end;

procedure TForm4.TimerSonTimer(Sender: TObject);
begin
 //ProgressBar.Position := ProgressBar2.Position -7;
end;

procedure TForm4.TimerEdaTimer(Sender: TObject);
begin
 ProgressBar1.Position := ProgressBar1.Position +1;
end;

procedure TForm4.TimerMedTimer(Sender: TObject);
begin
end;

procedure TForm4.TimerPlayTimer(Sender: TObject);
begin
end;


procedure TForm4.Button1Click(Sender: TObject);
begin
 self.Enabled:=false;
 self.Visible := false;
 Unit1.MainForm.show;
end;

end.
