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
// DebugLog.pas - Debug logging GUI

unit DebugLog;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  Buttons, LCLType;

type

  { TfrmDebug }

  TfrmDebug = class(TForm)
    BitBtn1: TBitBtn;
    btnClose: TBitBtn;
    Memo1: TMemo;
    procedure BitBtn1Click(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Memo1Change(Sender: TObject);
  private
    { private declarations }
    FUpdate: boolean;
  public
    { public declarations }
    procedure Log(Message: string);
  end; 

var
  frmDebug: TfrmDebug;

implementation

{$R *.lfm}

{ TfrmDebug }

procedure TfrmDebug.Memo1Change(Sender: TObject);
begin
  while Memo1.Lines.Count > 1000 do
    Memo1.Lines.Delete(0);
end;

procedure TfrmDebug.Log(Message: string);
begin
  if FUpdate then
    Memo1.Lines.Add(Message);
end;

procedure TfrmDebug.BitBtn1Click(Sender: TObject);
begin
  Memo1.Clear();
end;

procedure TfrmDebug.btnCloseClick(Sender: TObject);
begin
  Close();
end;

procedure TfrmDebug.FormCreate(Sender: TObject);
begin
  FUpdate := True;
end;

procedure TfrmDebug.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    Close();
end;

end.

