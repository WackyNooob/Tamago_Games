unit Unit8;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,IniFiles;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;
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
uses Unit1;
{$R *.lfm}

{ TForm1 }

///Кнопка выхода в меню\\\
procedure TForm1.Button1Click(Sender: TObject);
begin
 ini := TIniFile.Create(ExtractFilePath(ParamStr(0))+'save\play_dogs\save.ini');
  ini.WriteInteger('Sect', 'Food', f);
  ini.WriteInteger('Sect', 'Water', w);
  ini.WriteInteger('Sect', 'Toilet', t);
  ini.WriteInteger('Sect', 'Wash', wa);
  ini.WriteInteger('Sect', 'Fany', fan);
  ini.WriteInteger('Sect', 'Sleep', sleep);
  ini.WriteInteger('Sect', 'Heath', heath);
  ini.WriteInteger('Sect', 'Score', score);
 Unit8.Form1.Close;
 Unit1.MainForm.Visible:=true;
end;

end.

