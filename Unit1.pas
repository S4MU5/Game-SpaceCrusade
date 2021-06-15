unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, AppEvnts;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Image1: TImage;
    Button1: TButton;
    Image2: TImage;
    ApplicationEvents1: TApplicationEvents;
    Memo1: TMemo;
    Timer1: TTimer;
    Button3: TButton;
    Timer3: TTimer;
    Button2: TButton;
    Timer2: TTimer;
    Timer5: TTimer;
    Button4: TButton;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ApplicationEvents1ShortCut(var Msg: TWMKey; var Handled: Boolean);
    procedure Timer1Timer(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Timer5Timer(Sender: TObject);
    procedure Button4Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  a: array[0..9] of TImage;
  h,p:boolean;
  a1: array[0..9] of TImage;
  c: array[0..26,0..26] of integer;    // массив поля, которое подгружаем
  i,j,dx,dy,o,k,n,px,py,v,x1,x2,y1,y2,l,b,x,y,kx,ky,labe: integer;

implementation

uses Unit2;




{$R *.dfm}

procedure TForm1.ApplicationEvents1ShortCut(var Msg: TWMKey;
  var Handled: Boolean);
begin

dx:=0;
dy:=0;
case msg.charcode of
   VK_LEFT: dx:=-1;
   VK_RIGHT: dx:=1;
   VK_DOWN: dy:=1;
   VK_UP: dy:=-1;
end;
Timer1.Enabled:=True;

end;

procedure TForm1.Button1Click(Sender: TObject);
begin
Form2.Close;
close;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin

for I := 0 to 4 do if (a[i].Tag div 10 mod 10) = 1 then a[i].Tag:=a[i].Tag-10;
Memo1.Lines.Add('АРМИЯ ЗАКОНЧИЛА СТРЕЛЬБУ');
Timer3.Enabled:=true;
Button2.Enabled:=false;

end;

procedure TForm1.Button3Click(Sender: TObject);
begin
for I := 0 to 4 do if (a[i].Tag mod 10) = 1 then a[i].Tag:=a[i].Tag-1;
p:=true;
Memo1.Lines.Add('АРМИЯ СДЕЛАЛА СВОЙ ХОД');
 Button3.Enabled:=false;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
Form2.Visible:=true;
Form1.Visible:=false;
end;

procedure TForm1.FormCreate(Sender: TObject);
var f:TextFile;
begin
Memo1.Text:='Рекомендуем прочитать правила игры в главном меню';
h:=false;
o:=1;


AssignFile(f,'1.txt');
Reset(f);
for I := 0 to 26 do
  for j := 0 to 26 do  begin

    Read(f,c[i,j]);



  end;
  CloseFile(f);


 for I := 0 to 9 do begin


     a[i]:=TImage.Create(Form1);
     if i<=3 then
    a[i].Tag:=i*10000+1000+100+10+1 else
     if i=4 then a[i].Tag:=i*10000+2000+100+10+1 else
      if (i>4) and (i<=8) then a[i].Tag:=i*10000+3000+100+10+1 else
       if i=9 then  a[i].Tag:=i*10000+4000+100+10+1;

    a[i].Parent:=Form1;
    a[i].Width:=25;
    a[i].Height:=25;
    a[i].OnMouseDown:=SMouseDown;
        a1[i]:=TImage.Create(Form1);


    a1[i].Tag:=i*10+1;
    a1[i].Parent:=Form1;
    a1[i].Width:=25;
    a1[i].Height:=25;
    a1[i].OnMouseDown:=SMouseDown;
    //a[i].Transparent:=true;


 end;


 a[0].Picture.LoadFromFile('2.bmp');
 a[1].Picture.LoadFromFile('2.bmp');
 a[2].Picture.LoadFromFile('2.bmp');
 a[3].Picture.LoadFromFile('2.bmp');
 a[4].Picture.LoadFromFile('2.2.bmp');
 a[5].Picture.LoadFromFile('4.bmp');
 a[6].Picture.LoadFromFile('4.bmp');
 a[7].Picture.LoadFromFile('4.bmp');
 a[8].Picture.LoadFromFile('4.bmp');
 a[9].Picture.LoadFromFile('4.4.bmp');

 a1[0].Picture.LoadFromFile('3.bmp');
 a1[1].Picture.LoadFromFile('3.bmp');
 a1[2].Picture.LoadFromFile('3.bmp');
 a1[3].Picture.LoadFromFile('3.bmp');
 a1[4].Picture.LoadFromFile('3.3.bmp');
 a1[5].Picture.LoadFromFile('5.bmp');
 a1[6].Picture.LoadFromFile('5.bmp');
 a1[7].Picture.LoadFromFile('5.bmp');
 a1[8].Picture.LoadFromFile('5.bmp');
 a1[9].Picture.LoadFromFile('5.5.bmp');


a[0].Left:=350;
a[0].Top:=25;
a[1].Left:=325;
a[1].Top:=0;
a[2].Left:=400;
a[2].Top:=0;
a[3].Left:=300;
a[3].Top:=50;
a[4].Left:=375;
a[4].Top:=25;
a[5].Left:=675;
a[5].Top:=75;
a[6].Left:=700;
a[6].Top:=75;
a[7].Left:=800;
a[7].Top:=125;
a[8].Left:=775;
a[8].Top:=125;
a[9].Left:=775;
a[9].Top:=100;


a1[0].Left:=350;
a1[0].Top:=600;
a1[1].Left:=250;
a1[1].Top:=600;
a1[2].Left:=225;
a1[2].Top:=600;
a1[3].Left:=425;
a1[3].Top:=600;
a1[4].Left:=450;
a1[4].Top:=600;
a1[5].Left:=525;
a1[5].Top:=600;
a1[6].Left:=475;
a1[6].Top:=575;
a1[7].Left:=450;
a1[7].Top:=600;
a1[8].Left:=475;
a1[8].Top:=600;
a1[9].Left:=500;
a1[9].Top:=600;


 Image1.Picture.LoadFromFile('map.1.test.bmp');
 Image1.Enabled:=false;
end;


procedure TForm1.SMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
 if Button=mbLeft then begin
  k:=(sender as TImage).Tag div 10000 mod 10;
  Image2.Picture.LoadFromFile(IntToStr((Sender as TImage).Tag div 1000 mod 10)+'1.bmp');
  labe:=(Sender as TImage).Tag div 1000 mod 10;
  case labe of
   1: Label1.Caption:='Космодесантник';
   2: Label1.Caption:='Командир';
   3: Label1.Caption:='Разведчик';
   4: Label1.Caption:='Сержант';
  end;
 end;
 if Button=mbRight then  begin v:=(sender as TImage).tag div 10 mod 10;
 Timer2.Enabled:=true;
 end;
end;

procedure TForm1.Timer1Timer(Sender: TObject);       // таймер передвижения своей армии
var i1,j1:integer;

ka,kb,xx,yy:real;
begin
x1:=0;
x2:=0;
y1:=0;
y2:=0;

if (a[k].Tag mod 10) = 1 then  begin             //hod

if (dx>0)or(dy>0) then
 begin
  i1:=(a[k].Top+25) div 25;
  j1:=(a[k].Left-175) div 25;
 end else
  begin
   i1:=(a[k].Top + 25) div 25;
   j1:=(a[k].Left - 175) div 25;
  end;
if (c[i1+dy,j1+dx]=0) or (c[i1+dy,j1+dx]=3) then
 begin
  a[k].Left:=a[k].Left+dx*25;
  a[k].Top:=a[k].Top+dy*25;
 end;
a[k].Tag:=a[k].Tag-1;                         //hod
end;
 p:=true;
 for I := 0 to 4 do if (a[i].Tag mod 10) = 1 then p:=false;
 if p then begin
  Memo1.Lines.Add('АРМИЯ СДЕЛАЛА ХОД');
  Button3.Enabled:=false;
 end;


  if h then begin
   Memo1.Lines.Add('');
   Memo1.Lines.Add('КОНЕЦ РАУНДА' + IntToStr(o));
   o:=o+1;
  end;

Timer1.Enabled:=false;

end;

procedure TForm1.Timer2Timer(Sender: TObject);   // таймер стрельбы своей армии
var ka,kb,xx,yy:real;
fff,kosti: integer;
good,job: boolean;
i,j:integer;
begin
 if (p=true) and (a[k].tag div 10 mod 10 = 1) then begin

 good:=false;
    x1:=a[k].left;
    x2:=a1[v].left;
    y1:=a[k].top;
    y2:=a1[v].top;
    if x1>x2 then if y1<y1 then ka:=(y2-y1)/(x1-x2)
    else ka:=(y1-y2)/(x1-x2)
    else if x1<x2 then if y1<y2 then ka:=(y2-y1)/(x2-x1)
     else ka:=(y1-y2)/(x2-x1) else ka:=0;
   kb:=y1-ka*x1;
   xx:=x1;
   if x1>x2 then fff:=-1 else if x1<x2 then fff:=1 else fff:=0;
   repeat
     xx:=xx+fff;
     yy:=ka*xx+kb;
      i:=round(yy) div 25;
        j:=round(xx) div 25;
     // Memo1.Lines.Add(FloatToStr(xx)+' '+intToStr(c[i,j]));
     if job then begin

     if c[i,j]=1 then kosti:=random(2);   //uslovia
     if kosti=1 then good:=true;             //
                                               //
     kosti:=random(2);                        //
     if kosti=1 then good:=true;             //uslovia

     job:=false;
     end;
     until (xx>x2)or(good);
     if xx>x2 then begin Memo1.Lines.Add('Противник УБИТ'); a1[v].Visible:=false; end else Memo1.LineS.Add('Пуля попала в окоп');
     a[k].tag:=a[k].tag-10;
 end;

     Timer2.Enabled:=false;
end;

procedure TForm1.Timer3Timer(Sender: TObject);       // таймер противника
var ka,kb,xx,yy: real;
i1,j1,hodit,fff,job,kosti,reaper,i,jq,rand: integer;
hood,gol,good:boolean;
begin
dx:=0;
dy:=0;
hood:=true;
gol:=true;

    for i := 0 to 9 do begin                               //hod vrag    искусственный интеллект

       dx:=random(2)-1;
       dy:=random(2)-1;
                                       //искусственный интеллект перемещения  конец



     if (dx>0)or(dy>0) then
     begin
      i1:=(a1[i].Top+25) div 25;
      j1:=(a1[i].Left-175) div 25;
     end else
      begin
       i1:=(a1[i].Top + 25) div 25;
       j1:=(a1[i].Left - 175) div 25;
      end;
     if (c[i1+dy,j1+dx]=0) or (c[i1+dy,j1+dx]=3) then
      begin
       a1[i].Left:=a1[i].Left+dx*25;
       a1[i].Top:=a1[i].Top+dy*25;
      end;

    end;


Timer3.Enabled:=false;                                                    //hod       vrag
Memo1.Lines.Add('ПРОТИВНИК СДЕЛАЛ СВОЙ ХОД');
                                                            //strelba
 for reaper := 0 to 9 do begin
  j:=random(10);
  kosti:=random(17);
  if kosti=1 then begin
   x1:=a1[reaper].left;
   x2:=a[j].left;
   y1:=a1[reaper].top;
   y2:=a[j].top;
  if x1>x2 then if y1<y1 then ka:=(y2-y1)/(x1-x2)
    else ka:=(y1-y2)/(x1-x2)
    else if x1<x2 then if y1<y2 then ka:=(y2-y1)/(x2-x1)
     else ka:=(y1-y2)/(x2-x1) else ka:=0;
   kb:=y1-ka*x1;
   xx:=x1;
   if x1>x2 then fff:=-1 else if x1<x2 then fff:=1 else fff:=0;
   repeat
     xx:=xx+fff;
     yy:=ka*xx+kb;
      i:=round(yy) div 25;
        jq:=round(xx) div 25;
     // Memo1.Lines.Add(FloatToStr(xx)+' '+intToStr(c[i,j]));
     until (xx>x2);
     if xx>x2 then begin Memo1.Lines.Add('УБИТ солдат'); a[j].Visible:=false; end;
  end else
   begin
   rand:=random(10);
   if rand=3 then Memo1.Lines.Add('Пуля попала в окоп');
   if rand=6 then Memo1.Lines.Add('Оружие противника заклинило');
   if rand=9 then Memo1.Lines.Add('Рикошет');
   end;

 end;


Memo1.Lines.Add('ПРОТИВНИК ЗАКОНЧИЛ СТРЕЛЬБУ');
 if h = false then  begin
  Memo1.Lines.Add('');
  Memo1.Lines.Add('КОНЕЦ РАУНДА '+ IntToStr(o));
  o:=o+1;
 end;

 for I := 0 to 9 do begin                                        // восстановление войск после хода противника
  if a[i].tag mod 10 = 0 then a[i].Tag:=a[i].Tag+1;
  if a[i].tag div 10 mod 10 = 0 then a[i].Tag:=a[i].Tag +10;
 end;
 p:=false;
 Button3.Enabled:=true;
 Button2.Enabled:=true;
 end;

procedure TForm1.Timer5Timer(Sender: TObject);    // таймер победы или проигрыша
var daya,danet:boolean;
begin
daya:=false;
 for I := 0 to 9 do begin
  if a1[i].Visible=true then  daya:=true;
  if a[i].Visible=true then danet:=true;
 end;

 if daya=false then begin
  Memo1.Lines.Add('YOU WIN!');
  Timer5.Enabled:=false;
 end;
 if danet=false then begin
  Memo1.Lines.Add('LOSE!');
  Timer5.Enabled:=false;
 end;

end;

end.
