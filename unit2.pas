unit Unit2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls;

type

  { TForm2 }

  TForm2 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Image1: TImage;
    Image2: TImage;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Image1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form2: TForm2;
implementation

uses Unit1,Unit4;

{$R *.lfm}


procedure TForm2.FormCreate(Sender: TObject);
begin
 self.Visible := false;
 self.Enabled := false;
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
  self.Enabled:=false;
self.Visible := false;
 Unit1.MainForm.show;
end;

procedure TForm2.FormClose(Sender: TObject);
begin
  Unit1.MainForm.show;
end;

procedure TForm2.FormShow(Sender: TObject);
begin
  self.Enabled:=true;
  self.Visible:=true;
end;

procedure TForm2.Image1Click(Sender: TObject);
begin
 //new_game();
 self.Enabled:=false;
 self.Visible := false;
 Unit4.Form4.show;
end;

end.

