unit Unit5;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  ActnList, StdCtrls;

type

  { TForm5 }

  TForm5 = class(TForm)
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
  Form5: TForm5;

implementation

uses Unit1;

{$R *.lfm}

{ TForm5 }


procedure TForm5.FormCreate(Sender: TObject);
begin
  self.Visible:=false;
  self.Enabled:=false;
end;

procedure TForm5.FormShow(Sender: TObject);
begin
  self.Enabled:=true;
  self.Visible:=true;
end;

procedure TForm5.Button1Click(Sender: TObject);
begin
self.Enabled:=false;
  self.Visible := false;
 Unit1.MainForm.show;
end;

end.

