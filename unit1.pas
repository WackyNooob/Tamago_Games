unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TMainForm }

  TMainForm = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  MainForm: TMainForm;

implementation

 uses Unit3, unit2;

{$R *.lfm}

{ TMainForm }

procedure TMainForm.Button1Click(Sender: TObject);
begin
self.Enabled:=false;
self.Visible := false;
 Unit2.Form2.show;
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

end.

