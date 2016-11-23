unit Unit2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm2 }

  TForm2 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit1;

{$R *.lfm}

{ TForm2 }

procedure TForm2.FormCreate(Sender: TObject);
begin
 self.Visible := false;
 self.Enabled := false;
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
  self.Enabled:=false;
self.Visible := false;
 Unit1.Form1.show;
end;

procedure TForm2.FormShow(Sender: TObject);
begin
  self.Enabled:=true;
  self.Visible:=true;
end;

end.
