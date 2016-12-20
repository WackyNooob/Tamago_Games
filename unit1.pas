unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls, IniFiles;

type

  { TMainForm }

  TMainForm = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormClose(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Label1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  MainForm: TMainForm;
  ini:TIniFile;

implementation

 uses Unit3, unit2,Unit5,Unit4;

{$R *.lfm}

{ TMainForm }

procedure TMainForm.Button1Click(Sender: TObject);
begin
self.Enabled:=false;
self.Visible := false;
Unit2.Form2.show;
end;

procedure TMainForm.Button2Click(Sender: TObject);
var
  ini: Tinifile;
begin
 ini:=TiniFile.Create(extractfilepath(paramstr(0))+'save.ini');
   Unit4.Form4.image6.Width:=Ini.ReadInteger('Sect','Food',f);
   Unit4.Form4.image8.Width:=Ini.ReadInteger('Sect','Water',w);
   Unit4.Form4.image10.Width:=Ini.ReadInteger('Sect','Toilet',t);
   Unit4.Form4.image17.Width:=Ini.ReadInteger('Sect','Wash',wa);
   Unit4.Form4.image10.Width:=Ini.ReadInteger('Sect','Sleep', sleep);
   Unit4.Form4.image17.Width:=Ini.ReadInteger('Sect','Heath', heath);
   Unit4.Form4.Visible:=true;
   Unit4.Form4.show;
   Unit4.Form4.TimerEda.Enabled:=true;
   Unit4.Form4.TimerWater.Enabled:=true;
   Unit4.Form4.TimerToilet.Enabled:=true;
   Unit4.Form4.TimerWash.Enabled:=true;
   Unit4.Form4.TimerFany.Enabled:=true;
   Unit4.Form4.TimerSon.Enabled:=true;
end;

procedure TMainForm.Button3Click(Sender: TObject);
begin
self.Enabled:=false;
self.Visible := false;
 Unit3.Form3.show;
end;

procedure TMainForm.Button4Click(Sender: TObject);
begin
  Application.Terminate;;
end;

procedure TMainForm.FormClose(Sender: TObject);
begin
 Unit1.MainForm.show;
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
  self.Visible:=true;
  self.Enabled:=true;
end;

procedure TMainForm.FormShow(Sender: TObject);
begin
  self.Enabled:=true;
  self.Visible:=true;
end;

procedure TMainForm.Label1Click(Sender: TObject);
begin
 self.Enabled:=false;
self.Visible := false;
 Unit5.Form5.show;
end;

end.

