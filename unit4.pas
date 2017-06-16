///UPD - 16.06.2017. 18:40
///Логика кота\\\
///Имеются
///Потребности
///Деньги
///Сохранение данных
///Остановка таймеров\\\
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
    Label1: TLabel;
    money: TLabel;
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
    procedure Button3Click(Sender: TObject);
    procedure FormClose(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Image11Click(Sender: TObject);
    procedure Image12Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Image20Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure newgame ();
    procedure gamemoney();
    procedure TimerEdaTimer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure TimerFanyTimer(Sender: TObject);
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
  score:integer;
  aptechka:integer=0;
  ini:TIniFile;
  b:integer;

implementation
uses Unit1,Unit6,Unit7;

{$R *.lfm}
///Начальные параметры при новой игре\\\
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
///Восполенине потребностей
procedure TForm4.FormShow(Sender: TObject);
begin
  image22.Width:=heath;
  dec(heath);
  self.Enabled:=true;
  self.Visible:=true;
end;

procedure TForm4.Image2Click(Sender: TObject);
begin
 if f>=100 then
 begin
  TimerEda.Enabled:=false;
  Showmessage ('Ваш питомец не голоден');
  TimerEda.Enabled:=True;
   end else
 if f<=100 then
 begin
  image6.Width:=image6.Width+f;
  TimerEda.Enabled:=false;
  f:=100;
  Showmessage ('Вы покормили питомца');
  TimerEda.Enabled:=True;
  end;
  end;

procedure TForm4.Image3Click(Sender: TObject);
begin
  if w>=100 then
  begin
  TimerWater.Enabled:=false;
  Showmessage ('Ваш питомец не хочет пить');
  TimerWater.Enabled:=True;
  end;
  if w<=100 then
  begin
  image8.Width:=image8.Width+w;
  TimerWater.Enabled:=false;
  w:=100;
  Showmessage ('Вы напомили питомца');
  TimerWater.Enabled:=True;
  end;
end;

procedure TForm4.Image4Click(Sender: TObject);
begin
  if t>=100 then
  begin
  TimerToilet.Enabled:=false;
  Showmessage ('Ваш питомец не хочет в туалет');
  TimerToilet.Enabled:=True;
  end;
  if t<=100 then
  begin
  image10.Width:=image10.Width+t;
  TimerToilet.Enabled:=false;
  t:=100;
  Showmessage ('Вы сводили питомца в туалет');
  TimerToilet.Enabled:=True;
  end;
end;

procedure TForm4.Image11Click(Sender: TObject);
begin
   if wa>=100 then
  begin
  TimerToilet.Enabled:=false;
  Showmessage ('Ваш питомец не хочет в душ');
  TimerToilet.Enabled:=True;
  end;
  if wa<=100 then
  begin
  image17.Width:=image17.Width+wa;
  TimerToilet.Enabled:=false;
  wa:=100;
  Showmessage ('Вы сводили питомца в душ');
  TimerToilet.Enabled:=True;
  end;
end;

procedure TForm4.Image12Click(Sender: TObject);
begin
  if fan>=100 then
  begin
  TimerToilet.Enabled:=false;
  Showmessage ('Ваш питомец не хочет играться');
  TimerToilet.Enabled:=True;
  end;
  if fan<=100 then
  begin
  image18.Width:=image18.Width+fan;
  TimerToilet.Enabled:=false;
  fan:=100;
  Showmessage ('Вы поиграли с питомцем');
  TimerToilet.Enabled:=True;
  end;
end;

procedure TForm4.Image20Click(Sender: TObject);
begin
   if sleep>=100 then
  begin
  TimerToilet.Enabled:=false;
  Showmessage ('Ваш питомец не хочет спат');
  TimerToilet.Enabled:=True;
  end;
  if sleep<=100 then
  begin
  image20.Width:=image20.Width+sleep;
  TimerToilet.Enabled:=false;
  sleep:=100;
  Showmessage ('Вы уложили питомца спать');
  TimerToilet.Enabled:=True;
  end;
end;
///Потребности персонажа\\\
///Уведомление об нуждах
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
 if (self.image6.Width = f) then
 self.TimerEda.Enabled:= true
end;

procedure TForm4.TimerWaterTimer(Sender: TObject);
begin
 image8.Width:=w;
 dec(w);
 TimerWater.Enabled:=false;
 if image8.Width = 20 then Showmessage ('Хочу пить');
 TimerWater.Enabled:=true;
  if (self.image8.Width = 0) then
 self.TimerWater.Enabled:= true
 else
 self.TimerHeath.Enabled:=false;
  if (self.image8.Width = w) then
  self.TimerWater.Enabled:= true
end;

procedure TForm4.TimerToiletTimer(Sender: TObject);
begin
 image10.Width:=t;
 dec(t);
 TimerToilet.Enabled:=false;
 if image10.Width = 20 then Showmessage ('Хочу в туалет');
 TimerToilet.Enabled:=true;
  if (self.Image10.width = 0) then
  self.TimerToilet.Enabled:= true
  else
  self.TimerHeath.Enabled:= false;
  if (self.image10.Width = t) then
 self.TimerToilet.Enabled:= true
end;

procedure TForm4.TimerWashTimer(Sender: TObject);
begin
 image17.Width:=wa;
 dec(wa);
 TimerWash.Enabled:=false;
 if image17.Width = 20 then Showmessage ('От меня плохо пахнет..');
 TimerWash.Enabled:=true;
  if (self.Image17.Width = 0) then
  self.TimerWash.Enabled:= true
  else
  self.TimerHeath.Enabled:= false;
  if (self.image17.Width = wa) then
 self.TimerWash.Enabled:= true
end;

procedure TForm4.TimerFanyTimer(Sender: TObject);
begin
 image18.Width:=fan;
 dec(fan);
 TimerFany.Enabled:=false;
 if image18.Width = 20 then Showmessage ('Мне очень грустно.. Поиграй со мной');
 TimerFany.Enabled:=true;
  if (self.Image18.Width = 0) then
  self.TimerFany.Enabled:= true
  else
  self.TimerHeath.Enabled:= false;
   if (self.image18.Width = fan) then
 self.TimerFany.Enabled:= true
end;

procedure TForm4.TimerSonTimer(Sender: TObject);
begin
 image19.Width:=sleep;
 dec(sleep);
 TimerSon.Enabled:=false;
 if image19.Width = 20 then Showmessage ('Я хочу спать.. Уложи меня..');
 TimerSon.Enabled:=true;
  if (self.Image19.Width = 0) then
  self.TimerSon.Enabled:= true
  else
  self.TimerHeath.Enabled:= false;
    if (self.image19.Width = sleep) then
 self.TimerSon.Enabled:= true
end;

///Таймер на здоровье персонажа\\\
///В случае, если он будет сильно голоден
///UPD 16.06.2017
///Дописать для других потребностей!!!!!!!!!!!
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
///Сохранение прогресса в игре\\\
procedure TForm4.Button1Click(Sender: TObject);
begin
 ini := TIniFile.Create('save\play_cat\save.ini');
  ini.WriteInteger('Sect', 'Food', f);
  ini.WriteInteger('Sect', 'Water', w);
  ini.WriteInteger('Sect', 'Toilet', t);
  ini.WriteInteger('Sect', 'Wash', wa);
  ini.WriteInteger('Sect', 'Fany', fan);
  ini.WriteInteger('Sect', 'Sleep', sleep);
  ini.WriteInteger('Sect', 'Heath', heath);
  ini.WriteInteger('Sect', 'Score', score);
  {ini.WriteInteger('Sect', 'Slot', rukzak[1]);}
 Unit4.Form4.Close;
 Unit1.MainForm.Visible:=true;
///Остановление таймера на потребности, при выходе в меню\\\
 TimerEda.Enabled:=false;
 TimerWater.Enabled:=false;
 TimerToilet.Enabled:=false;
 TimerWash.Enabled:=false;
 TimerFany.Enabled:=false;
 TimerSon.Enabled:=false;
 TimerHeath.Enabled:=false;
end;

///Игровая валюта\\\
procedure TForm4.gamemoney();
begin
money.Caption:=IntToStr(score);
end;

procedure TForm4.Image1Click(Sender: TObject);
begin
  score+=1;
  money.Caption:=IntToStr(score);
end;

///Система инвентаря\\\- вырезанно 17.04.2017
procedure TForm4.Button3Click(Sender: TObject);
begin
 ini := TIniFile.Create(ExtractFilePath(ParamStr(0))+'save\play_cat\save.ini');
  ini.WriteInteger('Sect', 'Food', f);
  ini.WriteInteger('Sect', 'Water', w);
  ini.WriteInteger('Sect', 'Toilet', t);
  ini.WriteInteger('Sect', 'Wash', wa);
  ini.WriteInteger('Sect', 'Fany', fan);
  ini.WriteInteger('Sect', 'Sleep', sleep);
  ini.WriteInteger('Sect', 'Heath', heath);
  ini.WriteInteger('Sect', 'Score', score);
  {ini.WriteInteger('Sect', 'Slot', rukzak[1]);}
///Отключаем таймер\\\
 TimerEda.Enabled:=false;
 TimerWater.Enabled:=false;
 TimerToilet.Enabled:=false;
 TimerWash.Enabled:=false;
 TimerFany.Enabled:=false;
 TimerSon.Enabled:=false;
 self.Enabled:=false;
 self.Visible := false;
 Unit7.Form7.Visible:=true;
 Unit7.Form7.show;
end;
end.
