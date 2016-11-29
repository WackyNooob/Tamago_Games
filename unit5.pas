unit Unit5;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ComCtrls, Types;

type

  { TForm5 }

  TForm5 = class(TForm)
    ProgressBar1: TProgressBar;
    procedure ProgressBar1ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form5: TForm5;

implementation



{$R *.lfm}

{ TForm5 }



end.

