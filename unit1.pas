unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

 uses Unit3, unit2;

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
self.Enabled:=false;
self.Visible := false;
 Unit2.Form2.show;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  self.Visible:=true;
  self.Enabled:=true;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  self.Enabled:=true;
  self.Visible:=true;
end;

end.

