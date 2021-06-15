unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm2 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Memo1: TMemo;
    Timer1: TTimer;
    procedure Button4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  help: integer;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
Form1.Visible:=true;
Form2.Visible:=false;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
Memo1.Visible:=false;
Button5.Visible:=false;
Button6.Visible:=false;
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
Memo1.Visible:=true;
Button5.Visible:=true;
Button6.Visible:=true;
memo1.Lines.add('����� ���������� � ���� WarHammer 40,000 Space Crusade,');
memo1.Lines.add('������ � ��� �������� �������� �������� ����');
end;

procedure TForm2.Button4Click(Sender: TObject);
begin
Form1.Close;
close;
end;

procedure TForm2.Button5Click(Sender: TObject);
begin
help:=help-1;
Memo1.Clear;
case help of
 0:begin
    memo1.Lines.add('����� ���������� � ���� WarHammer 40,000 Space Crusade,');
     memo1.Lines.add('������ � ��� �������� �������� �������� ����');
  end;
 1:begin
    memo1.Lines.add('����: ������ ����� - ��� ������������, ��� ��������� ���,');
    memo1.Lines.add('��� �������� ������ ���� � ������� ��� � ����� ����� ����������� �����');
  end;
 2:begin
    memo1.Lines.add('���� ������� �� ������, � ������ ������ ������� ����� ���� �������,');
    memo1.Lines.add('����� ������. ��� ������� �� ��� ����: ���� ������������ � ���� ��������');
  end;
 3:begin
    memo1.Lines.add('���� ������������. � ��� ����� ��� ����� �����������,');
    memo1.Lines.add('���� ��� ���� �������������������. ������ �����������, � ��� �����');
    memo1.Lines.add('������� ������ ������� ������ ���� ��� �� ���. ����� ������,');
    memo1.Lines.add('������� ����� ������� ���� �� ������ ������� � ����������� ������� ������� ������������.');
  end;
 4:begin
    memo1.Lines.add('���� ��������. ������ ��� ����� ����� �������� �� ����������, ���� �');
    memo1.Lines.add('���� ���� �������������. �� ����� �������� ������� �������, ���� ����');
    memo1.Lines.add('����� ����� ��������, ��-�� ������� ����� �� �������. ٸ������ �����');
    memo1.Lines.add('������� �� ������� ������ �������, ����� ������ ������� �� ��������');
    memo1.Lines.add('�����, �������� ������ ��������.');
  end;
 5:begin
    memo1.Lines.add('��������! ��� ���� �������� ������ �����, ��� ���� ����� ��� ������� � ����, ��� � ���������.');
    memo1.Lines.add('������������� ������ ��� �������� ���. ������ ����������.');
  end;
 6:begin
    memo1.Lines.add('����� ���� ��������� ��� ���������� ��� ����������, ��� �� ������ �� �� ����� ��������,');
    memo1.Lines.add('������������� ����� � �� ���������� ������. �������� ����!');
  end;
 end;
end;

procedure TForm2.Button6Click(Sender: TObject);
begin
help:=help+1;
Memo1.Clear;
case help of
 0:begin
    memo1.Lines.add('����� ���������� � ���� WarHammer 40,000 Space Crusade,');
     memo1.Lines.add('������ � ��� �������� �������� �������� ����');
  end;
 1:begin
    memo1.Lines.add('����: ������ ����� - ��� ������������, ��� ��������� ���,');
    memo1.Lines.add('��� �������� ������ ���� � ������� ��� � ����� ����� ����������� �����');
  end;
 2:begin
    memo1.Lines.add('���� ������� �� ������, � ������ ������ ������� ����� ���� �������,');
    memo1.Lines.add('����� ������. ��� ������� �� ��� ����: ���� ������������ � ���� ��������');
  end;
 3:begin
    memo1.Lines.add('���� ������������. � ��� ����� ��� ����� �����������,');
    memo1.Lines.add('���� ��� ���� �������������������. ������ �����������, � ��� �����');
    memo1.Lines.add('������� ������ ������� ������ ���� ��� �� ���. ����� ������,');
    memo1.Lines.add('������� ����� ������� ���� �� ������ ������� � ����������� ������� ������� ������������.');
  end;
 4:begin
    memo1.Lines.add('���� ��������. ������ ��� ����� ����� �������� �� ����������, ���� �');
    memo1.Lines.add('���� ���� �������������. �� ����� �������� ������� �������, ���� ����');
    memo1.Lines.add('����� ����� ��������, ��-�� ������� ����� �� �������. ٸ������ �����');
    memo1.Lines.add('������� �� ������� ������ �������, ����� ������ ������� �� ��������');
    memo1.Lines.add('�����, �������� ������ ��������.');
  end;
 5:begin
    memo1.Lines.add('��������! ��� ���� �������� ������ �����, ��� ���� ����� ��� ������� � ����, ��� � ���������.');
    memo1.Lines.add('������������� ������ ��� �������� ���. ������ ����������.');
  end;
 6:begin
    memo1.Lines.add('����� ���� ��������� ��� ���������� ��� ����������, ��� �� ������ �� �� ����� ��������,');
    memo1.Lines.add('������������� ����� � �� ���������� ������. �������� ����!');
  end;
 end;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
 help:=0;
end;

procedure TForm2.Timer1Timer(Sender: TObject);
begin
if help=0 then Button5.Enabled:=false else Button5.Enabled:=true;
if help=6 then Button6.Enabled:=false else Button6.Enabled:=true;
end;

end.
