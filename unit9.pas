unit Unit9;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls,IniFiles;

type

  { TForm8 }

  TForm8 = class(TForm)
    Button1: TButton;
    Image1: TImage;
    Image2: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Image1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form8: TForm8;
  ini:TIniFile;

implementation
uses Unit4,Unit8,Unit1;

{$R *.lfm}

{ TForm8 }

///Выбор за котикка. Загрузка игры за кота\\\
procedure TForm8.Image1Click(Sender: TObject);
var
  ini: Tinifile;
begin
   Unit1.MainForm.Visible:=false;
   Unit4.Form4.Visible:=true;
   Unit4.Form4.show;
 ini:=TiniFile.Create('save\play_cat\save.ini');
 f:=Ini.ReadInteger('Sect','Food',f);
   Unit4.Form4.image6.Width:=f;

   Unit4.Form4.image8.Width:=Ini.ReadInteger('Sect','Water',w);
   w:=Unit4.Form4.image8.Width;
   Unit4.Form4.image10.Width:=Ini.ReadInteger('Sect','Toilet',t);
   t:=Unit4.Form4.image10.Width;
   Unit4.Form4.image17.Width:=Ini.ReadInteger('Sect','Wash',wa);
   wa:= Unit4.Form4.image17.Width;
   Unit4.Form4.image18.Width:=Ini.ReadInteger('Sect','Fanny',fan);
   fan:= Unit4.Form4.image18.Width;
   Unit4.Form4.image19.Width:=Ini.ReadInteger('Sect','Sleep', sleep);
   sleep:=Unit4.Form4.image19.Width;
   Unit4.Form4.image22.Width:=Ini.ReadInteger('Sect','Heath', heath);
   heath:=Unit4.Form4.image22.Width;
   Unit4.Form4.image17.Width:=Ini.ReadInteger('Sect','Score', score);
   score:=Unit4.Form4.image10.Width;
   Unit4.Form4.TimerEda.Enabled:=true;
   Unit4.Form4.TimerWater.Enabled:=true;
   Unit4.Form4.TimerToilet.Enabled:=true;
   Unit4.Form4.TimerWash.Enabled:=true;
   Unit4.Form4.TimerFany.Enabled:=true;
   Unit4.Form4.TimerSon.Enabled:=true;
   Unit4.Form4.TimerHeath.Enabled:=true;
end;

///Кнопка "назад" для возвращения в меню"
procedure TForm8.Button1Click(Sender: TObject);
begin
   Unit9.Form8.Close;
end;

procedure TForm8.FormCreate(Sender: TObject);
begin

end;

end.

