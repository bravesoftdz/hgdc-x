{
 * Copyright (c) 2011, Tristan Linnell <tris@canthack.org>
 *
 * Permission to use, copy, modify, and/or distribute this software for any
 * purpose with or without fee is hereby granted, provided that the above
 * copyright notice and this permission notice appear in all copies.
 *
 * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
 * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
 * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
 * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
 * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
 * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
}

// hgdc-x Cross Platform hgd client written in Lazarus/Freepascal
// about.pas - About box

unit About;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls, Buttons, LCLIntf;

type

  { TfrmAbout }

  TfrmAbout = class(TForm)
    btnClose: TBitBtn;
    imCow: TImage;
    imSynapse: TImage;
    imSynapse1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    lblhgdcx: TLabel;
    stAbout: TStaticText;
    procedure btnCloseClick(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure Label1MouseEnter(Sender: TObject);
    procedure Label1MouseLeave(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure lblhgdcxClick(Sender: TObject);
    procedure stAboutClick(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end; 

var
  frmAbout: TfrmAbout;

implementation

{$R *.lfm}

{ TfrmAbout }

procedure TfrmAbout.btnCloseClick(Sender: TObject);
begin
  Close();
end;

procedure TfrmAbout.Label1Click(Sender: TObject);
begin
  Screen.Cursor := crHourglass;
  OpenURL('http://www.fatcow.com/free-icons');
  Sleep(300);
  Screen.Cursor := crDefault;
end;

procedure TfrmAbout.Label1MouseEnter(Sender: TObject);
begin
  TLabel(Sender).Font.Style := [fsUnderline];
  TLabel(Sender).Font.Color := clBlue;
  Screen.Cursor := crHandPoint;
end;

procedure TfrmAbout.Label1MouseLeave(Sender: TObject);
begin
  TLabel(Sender).Font.Style := [];
  TLabel(Sender).Font.Color := clDefault;
  Screen.Cursor := crDefault;
end;

procedure TfrmAbout.Label2Click(Sender: TObject);
begin
  Screen.Cursor := crHourglass;
  OpenURL('http://www.ararat.cz/synapse/doku.php/start');
  Sleep(300);
  Screen.Cursor := crDefault;
end;

procedure TfrmAbout.lblhgdcxClick(Sender: TObject);
begin
  Screen.Cursor := crHourglass;
  OpenURL('https://github.com/tristan2468/hgdc-x');
  Sleep(300);
  Screen.Cursor := crDefault;
end;

procedure TfrmAbout.stAboutClick(Sender: TObject);
begin

end;

end.
