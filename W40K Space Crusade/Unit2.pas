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
memo1.Lines.add('Добро пожаловать в игру WarHammer 40,000 Space Crusade,');
memo1.Lines.add('сейчас я Вам расскажу основные принципы игры');
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
    memo1.Lines.add('Добро пожаловать в игру WarHammer 40,000 Space Crusade,');
     memo1.Lines.add('сейчас я Вам расскажу основные принципы игры');
  end;
 1:begin
    memo1.Lines.add('Матч: захват флага - это соревнование, где побеждает тот,');
    memo1.Lines.add('кто захватит первым флаг и удержит его в своих руках определённое время');
  end;
 2:begin
    memo1.Lines.add('Матч делится на раунды, в каждом раунде сначала ходит одна сторона,');
    memo1.Lines.add('затем другая. Ход делится на две фазы: фаза передвижения и фаза стрельбы');
  end;
 3:begin
    memo1.Lines.add('Фаза передвижения. В это время Вам нужно предпринять,');
    memo1.Lines.add('куда Вам ужно передислацироваться. Будьте внимательны, у Вас право');
    memo1.Lines.add('сходить каждой фигурой только один раз за ход. Чтобы ходить,');
    memo1.Lines.add('нажмите левой кнопкой мыши на иконку солдата и стрелочками задайте маршрут передвижения.');
  end;
 4:begin
    memo1.Lines.add('Фаза стрельбы. Сейчас Вам нужно будет стрелять по противнику, если в');
    memo1.Lines.add('этом есть необходимость. Не стоит бездумно тратить патроны, ведь есть');
    memo1.Lines.add('очень много факторов, из-за которых можно не попасть. Щёлкните левой');
    memo1.Lines.add('кнопкой по портеру своего солдата, затем правой кнопкой по портрету');
    memo1.Lines.add('врага, которого хотите поразить.');
  end;
 5:begin
    memo1.Lines.add('Внимание! При фазе стрельбы имейте ввиду, что пуля может как попасть в окоп, так и пролететь.');
    memo1.Lines.add('Следовательно спасти или поразить Вас. Будьте аккуратнее.');
  end;
 6:begin
    memo1.Lines.add('После всех пройденых фаз начинается ход противника, где он делает те же самые действия,');
    memo1.Lines.add('заканчивается раунд и всё начинается заново. Приятной игры!');
  end;
 end;
end;

procedure TForm2.Button6Click(Sender: TObject);
begin
help:=help+1;
Memo1.Clear;
case help of
 0:begin
    memo1.Lines.add('Добро пожаловать в игру WarHammer 40,000 Space Crusade,');
     memo1.Lines.add('сейчас я Вам расскажу основные принципы игры');
  end;
 1:begin
    memo1.Lines.add('Матч: захват флага - это соревнование, где побеждает тот,');
    memo1.Lines.add('кто захватит первым флаг и удержит его в своих руках определённое время');
  end;
 2:begin
    memo1.Lines.add('Матч делится на раунды, в каждом раунде сначала ходит одна сторона,');
    memo1.Lines.add('затем другая. Ход делится на две фазы: фаза передвижения и фаза стрельбы');
  end;
 3:begin
    memo1.Lines.add('Фаза передвижения. В это время Вам нужно предпринять,');
    memo1.Lines.add('куда Вам ужно передислацироваться. Будьте внимательны, у Вас право');
    memo1.Lines.add('сходить каждой фигурой только один раз за ход. Чтобы ходить,');
    memo1.Lines.add('нажмите левой кнопкой мыши на иконку солдата и стрелочками задайте маршрут передвижения.');
  end;
 4:begin
    memo1.Lines.add('Фаза стрельбы. Сейчас Вам нужно будет стрелять по противнику, если в');
    memo1.Lines.add('этом есть необходимость. Не стоит бездумно тратить патроны, ведь есть');
    memo1.Lines.add('очень много факторов, из-за которых можно не попасть. Щёлкните левой');
    memo1.Lines.add('кнопкой по портеру своего солдата, затем правой кнопкой по портрету');
    memo1.Lines.add('врага, которого хотите поразить.');
  end;
 5:begin
    memo1.Lines.add('Внимание! При фазе стрельбы имейте ввиду, что пуля может как попасть в окоп, так и пролететь.');
    memo1.Lines.add('Следовательно спасти или поразить Вас. Будьте аккуратнее.');
  end;
 6:begin
    memo1.Lines.add('После всех пройденых фаз начинается ход противника, где он делает те же самые действия,');
    memo1.Lines.add('заканчивается раунд и всё начинается заново. Приятной игры!');
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
