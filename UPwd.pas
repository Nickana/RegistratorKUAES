unit UPwd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, xpEdit, xpButton, ExtCtrls, xpPanel;

type
  TForm2 = class(TForm)
    edPWD: TxpEdit;
    btnNull: TxpButton;
    xpPanel1: TxpPanel;
    btn7: TxpButton;
    btn8: TxpButton;
    btn9: TxpButton;
    btn6: TxpButton;
    btn5: TxpButton;
    btn4: TxpButton;
    btn1: TxpButton;
    btn2: TxpButton;
    btn3: TxpButton;
    btnEnter: TxpButton;
    btn0: TxpButton;
    btnBackspace: TxpButton;
    xpButton1: TxpButton;
    procedure FormShow(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure btn8Click(Sender: TObject);
    procedure btn9Click(Sender: TObject);
    procedure btn0Click(Sender: TObject);
    procedure btnEnterClick(Sender: TObject);
    procedure btnBackspaceClick(Sender: TObject);
    procedure xpButton1Click(Sender: TObject);
    procedure btnNullClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses UMain;

{$R *.dfm}

// инициализация
procedure TForm2.FormShow(Sender: TObject);
begin
  edPWD.Text:='';
  btnNull.Enabled:=false;
end;

{==============================================================================}
{=                  ОБРАБОТЧИКИ ЦИФРОВЫХ КЛАВИШ                               =}
{==============================================================================}
procedure TForm2.btn1Click(Sender: TObject);
begin
  edPWD.Text:=edPWD.Text+'1';
end;

procedure TForm2.btn2Click(Sender: TObject);
begin
  edPWD.Text:=edPWD.Text+'2';
end;

procedure TForm2.btn3Click(Sender: TObject);
begin
  edPWD.Text:=edPWD.Text+'3';
end;

procedure TForm2.btn4Click(Sender: TObject);
begin
  edPWD.Text:=edPWD.Text+'4';
end;

procedure TForm2.btn5Click(Sender: TObject);
begin
  edPWD.Text:=edPWD.Text+'5';
end;

procedure TForm2.btn6Click(Sender: TObject);
begin
  edPWD.Text:=edPWD.Text+'6';
end;

procedure TForm2.btn7Click(Sender: TObject);
begin
  edPWD.Text:=edPWD.Text+'7';
end;

procedure TForm2.btn8Click(Sender: TObject);
begin
  edPWD.Text:=edPWD.Text+'8';
end;

procedure TForm2.btn9Click(Sender: TObject);
begin
  edPWD.Text:=edPWD.Text+'9';
end;

procedure TForm2.btn0Click(Sender: TObject);
begin
  edPWD.Text:=edPWD.Text+'0';
end;

// ввод и проверка пароля
procedure TForm2.btnEnterClick(Sender: TObject);
begin
  if edPWD.Text='3128'
    then btnNull.Enabled:=true;
end;

// backspace
procedure TForm2.btnBackspaceClick(Sender: TObject);
var
  str : string;
  len : integer;
begin
  str:=edPWD.Text;
  len:=Length(str);
  Delete(str,len,1);
  edPWD.Text:=str;
end;

// clear
procedure TForm2.xpButton1Click(Sender: TObject);
begin
  edPWD.Text:='';
end;

// обнуление
procedure TForm2.btnNullClick(Sender: TObject);
begin
  Form1.bNull:=true;
  Application.ProcessMessages;
end;

end.
