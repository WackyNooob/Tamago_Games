unit Unit6;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls,IniFiles;

type

  { TForm6 }

  TForm6 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form6: TForm6;
  ini:TIniFile;

implementation

uses Unit4;
{$R *.lfm}

{ TForm6 }


procedure TForm6.Button2Click(Sender: TObject);
begin
  ini := TIniFile.Create(ExtractFilePath(ParamStr(0))+'save\save.ini');
  ini.WriteInteger('Sect', 'Food', f);
  ini.WriteInteger('Sect', 'Water', w);
  ini.WriteInteger('Sect', 'Toilet', t);
  ini.WriteInteger('Sect', 'Wash', wa);
  ini.WriteInteger('Sect', 'Fany', fan);
  ini.WriteInteger('Sect', 'Sleep', sleep);
  ini.WriteInteger('Sect', 'Heath', heath);
  ini.WriteInteger('Sect', 'Score', score);
 ini:=TiniFile.Create(extractfilepath(paramstr(0))+'save\save.ini');
   Unit4.Form4.image6.Width:=Ini.ReadInteger('Sect','Food',f);
   Unit4.Form4.image8.Width:=Ini.ReadInteger('Sect','Water',w);
   Unit4.Form4.image10.Width:=Ini.ReadInteger('Sect','Toilet',t);
   Unit4.Form4.image17.Width:=Ini.ReadInteger('Sect','Wash',wa);
   Unit4.Form4.image10.Width:=Ini.ReadInteger('Sect','Sleep', sleep);
   Unit4.Form4.image17.Width:=Ini.ReadInteger('Sect','Heath', heath);
   Unit4.Form4.image17.Width:=Ini.ReadInteger('Sect','Score', score);
   {Unit4.Form4.image17.Width:=Ini.ReadInteger('Sect','Slot', rukzak[1]);}
   Unit6.Form6.Close;
   Unit4.Form4.Visible:=true;
   Unit4.Form4.show;
 end;
procedure TForm6.FormShow(Sender: TObject);
begin
  self.Enabled:=true;
  self.Visible:=true;
end;
procedure TForm6.Button1Click(Sender: TObject);
begin
 Unit6.Form6.Close;
 Unit4.Form4.Visible:=true;
 ini := TIniFile.Create(ExtractFilePath(ParamStr(0))+'save\save.ini');
  ini.WriteInteger('Sect', 'Food', f);
  ini.WriteInteger('Sect', 'Water', w);
  ini.WriteInteger('Sect', 'Toilet', t);
  ini.WriteInteger('Sect', 'Wash', wa);
  ini.WriteInteger('Sect', 'Fany', fan);
  ini.WriteInteger('Sect', 'Sleep', sleep);
  ini.WriteInteger('Sect', 'Heath', heath);
  ini.WriteInteger('Sect', 'Score', score);
  {ini.WriteInteger('Sect', 'Slot', rukzak[1]);}
  ini:=TiniFile.Create(extractfilepath(paramstr(0))+'save\save.ini');
   Unit4.Form4.image6.Width:=Ini.ReadInteger('Sect','Food',f);
   Unit4.Form4.image8.Width:=Ini.ReadInteger('Sect','Water',w);
   Unit4.Form4.image10.Width:=Ini.ReadInteger('Sect','Toilet',t);
   Unit4.Form4.image17.Width:=Ini.ReadInteger('Sect','Wash',wa);
   Unit4.Form4.image10.Width:=Ini.ReadInteger('Sect','Sleep', sleep);
   Unit4.Form4.image17.Width:=Ini.ReadInteger('Sect','Heath', heath);
   Unit4.Form4.image17.Width:=Ini.ReadInteger('Sect','Score', score);
   {Unit4.Form4.image17.Width:=Ini.ReadInteger('Sect','Slot', rukzak[1]);}
end;
end.

