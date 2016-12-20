unit Unit4;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  Buttons, StdCtrls, IniFiles;

type

  { TForm4 }

  TForm4 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Image1: TImage;
    Image10: TImage;
    Image11: TImage;
    Image12: TImage;
    Image13: TImage;
    Image14: TImage;
    Image15: TImage;
    Image16: TImage;
    Image17: TImage;
    Image18: TImage;
    Image19: TImage;
    Image2: TImage;
    Image20: TImage;
    Image21: TImage;
    Image22: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    TimerHeath: TTimer;
    TimerSon: TTimer;
    TimerFany: TTimer;
    TimerWash: TTimer;
    TimerToilet: TTimer;
    TimerWater: TTimer;
    TimerEda: TTimer;
    start: TImage;
    Timer2: TTimer;
    TimerComonSon: TTimer;
    TimerSplyu: TTimer;
    TimerDown: TTimer;
    now: TLabel;
    procedure FormClose(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure newgame ();
    procedure TimerEdaTimer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure TimerFanyTimer(Sender: TObject);
    //procedure TimerHeathStartTimer(Sender: TObject);
    procedure TimerHeathTimer(Sender: TObject);
    procedure TimerSonTimer(Sender: TObject);
    procedure TimerToiletTimer(Sender: TObject);
    procedure TimerWashTimer(Sender: TObject);
    procedure TimerWaterTimer(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form4: TForm4;
  i:integer=0;
  f:integer;
  w:integer;
  t:integer;
  wa:integer;
  fan:integer;
  sleep:integer;
  heath:integer;
  vleft:integer=0;
  right:integer=0;
  game_score:integer=0;
  cat, cat_i,zaraza,med : integer;
  score:integer=0;
  aptechka:integer=0;
  ini:TIniFile;
  b:integer;

implementation
uses Unit1;

{$R *.lfm}

procedure TForm4.newgame();
begin
 aptechka:=0;
 score:=0;
 heath:=100;
 f:=100;
 w:=100;
 t:=100;
 wa:=100;
 fan:=100;
 sleep:=100;
end;

///Потребности персонажа\\\
procedure TForm4.FormShow(Sender: TObject);
begin
  image22.Width:=heath;
  dec(heath);
  //f:=100;
  //w:=100;
  //t:=100;
  //wa:=100;
  //fan:=100;
  //sleep:=100;
end;

procedure TForm4.Image2Click(Sender: TObject);
begin
  image6.Width:=image6.Width+50;
  TimerEda.Enabled:=false;
  Showmessage ('Вы покормили питомца');
  TimerEda.Enabled:=True;
  end;

procedure TForm4.Image3Click(Sender: TObject);
begin
  image8.Width:=image8.Width+50;
  TimerWater.Enabled:=false;
  Showmessage ('Вы напоили питомца');
  TimerWater.Enabled:=True;
end;

procedure TForm4.Image4Click(Sender: TObject);
begin
  image10.Width:=image10.Width+100;
  TimerToilet.Enabled:=false;
  Showmessage ('Вы сводили питомца в туалет');
  TimerToilet.Enabled:=True;
end;

procedure TForm4.TimerEdaTimer(Sender: TObject);
begin
 image6.Width :=f;
 dec(f);
 TimerEda.Enabled:=false;
 if image6.Width = 20 then Showmessage ('Голоден');
 TimerEda.Enabled:=true;
 if (self.Image6.Width = 0) then
 self.TimerHeath.Enabled := true
 else
 self.TimerHeath.Enabled := false;
end;

procedure TForm4.TimerWaterTimer(Sender: TObject);
begin
 image8.Width:=w;
 dec(w);
 if image8.Width = 20 then Showmessage ('Хочу пить');
end;

procedure TForm4.TimerToiletTimer(Sender: TObject);
begin
 image10.Width:=t;
 dec(t);
 if image10.Width = 20 then Showmessage ('Хочу в туалет');
end;

procedure TForm4.TimerWashTimer(Sender: TObject);
begin
 image17.Width:=wa;
 dec(wa);
 if image17.Width = 20 then Showmessage ('От меня плохо пахнет..');
end;

procedure TForm4.TimerFanyTimer(Sender: TObject);
begin
 image18.Width:=fan;
 dec(fan);
 if image18.Width = 20 then Showmessage ('Мне очень грустно.. Поиграй со мной')
end;

procedure TForm4.TimerSonTimer(Sender: TObject);
begin
 image19.Width:=sleep;
 dec(sleep);
 if image19.Width = 20 then Showmessage ('Я хочу спать.. Уложи меня..')
end;

procedure TForm4.TimerHeathTimer(Sender: TObject);
begin
 if image6.Width = 0 then
 begin
   TimerHeath.Enabled:=true;
   image22.Width:=image22.Width-1;
   if image22.Width = 0 then
   begin
     TimerHeath.Enabled:=false;
     TimerWater.Enabled:=false;
     TimerToilet.Enabled:=false;
     TimerWash.Enabled:=false;
     TimerFany.Enabled:=false;
     TimerSon.Enabled:=false;
     TimerEda.Enabled:=false;
     Showmessage ('Ваш персонаж умер');
     Unit4.Form4.close;
     Unit1.MainForm.Visible:=true;
   end;
 end;
 end;

procedure TForm4.FormClose(Sender: TObject);
begin
 Unit1.MainForm.show;
end;

procedure TForm4.Button1Click(Sender: TObject);
begin
 ini := TIniFile.Create(ExtractFilePath(ParamStr(0))+'save.ini');
  ini.WriteInteger('Sect', 'Food', f);
  ini.WriteInteger('Sect', 'Water', w);
  ini.WriteInteger('Sect', 'Toilet', t);
  ini.WriteInteger('Sect', 'Wash', wa);
  ini.WriteInteger('Sect', 'Fany', fan);
  ini.WriteInteger('Sect', 'Sleep', sleep);
  ini.WriteInteger('Sect', 'Heath', heath);
 Unit4.Form4.Close;
 Unit1.MainForm.Visible:=true;
///Остановление таймера на потребности, при выходе в меню
 TimerEda.Enabled:=false;
 TimerWater.Enabled:=false;
 TimerToilet.Enabled:=false;
 TimerWash.Enabled:=false;
 TimerFany.Enabled:=false;
 TimerSon.Enabled:=false;
 TimerHeath.Enabled:=false;
end;
end.
