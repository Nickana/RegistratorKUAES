unit UMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, TeeProcs, TeEngine, Chart, Series, StdCtrls,
  RXCtrls, RXSpin, RXSplit, xpButton, Buttons, CPort, bsSkinShellCtrls,
  bsSkinCtrls, xpPanel;

type
  TForm1 = class(TForm)
    pnTools: TPanel;
    Chart: TChart;
    Series2: TLineSeries;
    lbChannel1: TLabel;
    lbChannel2: TLabel;
    lbWeight1: TLabel;
    lbKg1: TLabel;
    lbWeight2: TLabel;
    lbKg2: TLabel;
    lbLimUp1: TLabel;
    Series4: TLineSeries;
    lbLimDown1: TLabel;
    lbLimUp: TLabel;
    lbKg3: TLabel;
    lbLimDown: TLabel;
    lbKg4: TLabel;
    Timer: TTimer;
    btnShutDown: TRxSpeedButton;
    pnCalibrate: TPanel;
    lbCalibrate: TLabel;
    edCoeff: TRxSpinEdit;
    btnOk: TButton;
    lbMessage: TLabel;
    pnKeyboard: TPanel;
    shape100: TShape;
    btn100: TxpButton;
    Shape500: TShape;
    btn500: TxpButton;
    Shape900: TShape;
    btn900: TxpButton;
    Shape200: TShape;
    btn200: TxpButton;
    Shape600: TShape;
    btn600: TxpButton;
    Shape1000: TShape;
    btn1000: TxpButton;
    Shape300: TShape;
    btn300: TxpButton;
    shape700: TShape;
    btn700: TxpButton;
    ShapeLimUp: TShape;
    Shape400: TShape;
    btn400: TxpButton;
    Shape800: TShape;
    btn800: TxpButton;
    ShapeLimDown: TShape;
    btnLimUp: TRxSpeedButton;
    btnLimDown: TRxSpeedButton;
    splitter: TRxSplitter;
    Shape10: TShape;
    btn10: TxpButton;
    Shape50: TShape;
    btn50: TxpButton;
    Shape90: TShape;
    btn90: TxpButton;
    Shape20: TShape;
    btn20: TxpButton;
    Shape60: TShape;
    btn60: TxpButton;
    Shape0: TShape;
    btn0: TxpButton;
    Shape30: TShape;
    btn30: TxpButton;
    Shape70: TShape;
    btn70: TxpButton;
    ShapeReserved: TShape;
    btnReserved: TxpButton;
    Shape40: TShape;
    btn40: TxpButton;
    Shape80: TShape;
    btn80: TxpButton;
    ShapeCal: TShape;
    btnCal: TxpButton;
    btnCancel: TButton;
    lbChannel3: TLabel;
    lbMove: TLabel;
    lbM: TLabel;
    btnNull: TRxSpeedButton;
    btnNullMove: TRxSpeedButton;
    btnCalibrate: TRxSpeedButton;
    btnCalibrateMove: TRxSpeedButton;
    pnMoveCalibrate: TPanel;
    lbMoveCalibrate: TLabel;
    edMoveCoeff: TRxSpinEdit;
    btnMoveOk: TButton;
    btnMoveCancel: TButton;
    btnKeyboard: TSpeedButton;
    COM1: TComPort;
    COM2: TComPort;
    packet1: TComDataPacket;
    packet2: TComDataPacket;
    SelectDirectory: TbsSkinSelectDirectoryDialog;
    LinkTimer: TTimer;
    pnShutdownProcess: TxpPanel;
    sgProcess: TbsSkinGauge;
    lbWarningMessage: TLabel;
    lbProgress: TLabel;
    ShutdownTimer: TTimer;
    NullTimer: TTimer;
    lbLeftTime: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    // �������������� ���� �� ������� ������
    function Convert(const value : integer) : integer;
    // ��������� �������� �� ������� � ����������� � ���� ������
    procedure DrawValues;
    // �������������� �����������
    function ConvertMovement (const value : integer) : integer;
    // �������� �������������� ���� � ���
    function ReConvert (const value : integer) : real;
    // ����������� ����� �����
    function Sgn (const value : real) : string;
    // ����������� �������
    procedure TimerTimer(Sender: TObject);
    procedure lbWeight2Click(Sender: TObject);
    procedure btnShutDownClick(Sender: TObject);
    procedure btnCalibrateClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure btnLimUpClick(Sender: TObject);
    procedure btnLimDownClick(Sender: TObject);
    procedure btn100Click(Sender: TObject);
    procedure btn200Click(Sender: TObject);
    procedure btn300Click(Sender: TObject);
    procedure btn400Click(Sender: TObject);
    procedure btn500Click(Sender: TObject);
    procedure btn600Click(Sender: TObject);
    procedure btn700Click(Sender: TObject);
    procedure btn800Click(Sender: TObject);
    procedure btn900Click(Sender: TObject);
    procedure btn1000Click(Sender: TObject);
    procedure btn10Click(Sender: TObject);
    procedure btn20Click(Sender: TObject);
    procedure btn30Click(Sender: TObject);
    procedure btn40Click(Sender: TObject);
    procedure btn50Click(Sender: TObject);
    procedure btn60Click(Sender: TObject);
    procedure btn70Click(Sender: TObject);
    procedure btn80Click(Sender: TObject);
    procedure btn90Click(Sender: TObject);
    procedure btn0Click(Sender: TObject);
    procedure btnReservedClick(Sender: TObject);
    procedure btnCalClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnNullMoveClick(Sender: TObject);
    procedure btnCalibrateMoveClick(Sender: TObject);
    procedure btnMoveOkClick(Sender: TObject);
    procedure btnMoveCancelClick(Sender: TObject);
    procedure btnKeyboardClick(Sender: TObject);
    procedure packet1Packet(Sender: TObject; const Str: String);
    procedure packet2Packet(Sender: TObject; const Str: String);
    procedure LinkTimerTimer(Sender: TObject);
    procedure ShutdownTimerTimer(Sender: TObject);
    procedure NullTimerTimer(Sender: TObject);
  private
    { Private declarations }
    // ���������
    coeff   : real;     // �����. ��������������
    offset  : integer;  // �������� ����
    limUp   : integer;  // ������� ������
    limDown : integer;  // ������ ������
    weight  : integer;  // ��� ����������
    weight2 : integer;  // ��� �� ������ 2 (����������)
    weightr : integer;  // ��� �������������
    weight2r: integer;  // ��� �� ������ 2 (�������������)
    movement: integer;  // �����������
    mcoeff  : real;     // �����. �������������� ��� �����������
    moffset : integer;  // �������� ���� ��� �����������
    vspeed  : real;     // ���-�� ��-� � ��� (�������� ������ � ������� ���)

    procedure CloseSession;
  public
    { Public declarations }
    bNull   : boolean;  // ������� ���������
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses IniFiles, Math, DateUtils, UPwd;

const
  cmdLen = 4;

type
  TCommand = array [1..cmdLen] of byte;

const
  // ����� ������ ������
  MaxLen1 = 11;
  MaxLen2 = 9;
  // ��������� �����
  StartByte1 : char = #171; { '<<' }
  StartByte2 : char = #62;  { '>'  }
  StopByte2  : char = #13;  { carriage return }
  // ������� ADAM AnalogDataIn
  cm01 : TCommand = ($23, $30, $31, $0D); // ����� ADAM #01 (�����������)
  cm02 : TCommand = ($23, $30, $32, $0D); // ����� ADAM #02 (���)
  // �������� ������ ��������� ������� ADAM 4012
  prefixHI = '@02LO';
  prefixLO = '@02HI';
  // ������ ������������� ����� ��� �������������� ���� � ���
  fmtCurrent = '00.000'+#13;
  // ������� ��������� ������� �������� �������
  nullLow  = '@02HI-65.535'+#13;
  nullHigh = '@02LO+65.535'+#13;
  // ������ � �������� ��������� ������������ �����
  FloatFormat = '###0.0';
  {eps         = 0.1;}
  // ���������
  msgLimUp     = '�������� ������� �����!';
  msgLimDown   = '�������� ������ �����!';
  msgEmergency = '��������� ����� ������!';
  //msgNormal    = '';
  // ����� ��������
  OnColor  : TColor = clRed;
  OffColor : TColor = clGray;

type
  // ����� ��� ������ ��������� ������
  TBuffer = array [1..MaxLen1] of byte;

  // ��������� ��� ���� ������
  TRec = record
    limUp   : integer;
    limDown : integer;
    weight  : integer;
    weight2 : integer;
    movement: integer;
    time    : real;
  end;

  TRecFile = file of TRec;

  // ��������� ��� ����������
  TLamps = array [1..24] of TShape;
  TKeyboard = record
    lamps      : TLamps; // ������ �����������
    lampIndex1 : byte;   // ����� ������� �������� �� ������   [01..10] ��� 0
    lampIndex2 : byte;   // ����� ������� �������� �� �������� [13..22] ��� 0
    lampLimit  : byte;   // 11 - ������ ������� ������, 12 - ������ ������ ��� 0
  end;

var
  // ����� ������� ��� ������� � ���2
  cmd  : TCommand;
  // ���������� �������� ��������
  oldLU : integer;
  oldLD : integer;
  // ��� ������ � ini-������
  path : string;                       // ���� � ini-�����
  data : TIniFile;                     // ini-����
  // ��� ������ � ������ ������
  f    : TRecFile;
  rec  : TRec;
  // ��� ������ ����������
  kbd  : TKeyboard;
  // other vars
  str     : string;
  bMove     : boolean;                 // ������� ������������� �����������
  bMoveNull : boolean;                 // ������� ��������� �����������
  b1 : boolean;                        // ���� ������ ADAM ����� ���2
                                       //   false = ADAM 01, true - ADAM 02
  fmtSettings : TFormatSettings;       // ��������� ������� ������������ ����� ���
                                       //   �������������� � ���
  FlashDrive  : string;                // ���� � USB-������ ��� ���������� ����
  
  bLink : boolean;   // ������� ������� �����
  tLast : TTime;     // ����� ������ ���������� ������


// ���������� � �������� ������
procedure TForm1.CloseSession;
begin
  // close database
  CloseFile(f);
  // close channels
  COM1.Close;
  COM2.Close;
  // close ini-file
  data.WriteFloat('Settings','coeff',coeff);
  data.WriteInteger('Settings','offset',offset);
  {
  data.WriteInteger('Settings','limUp',limUp);
  data.WriteInteger('Settings','limDown',limDown);
  }
  data.WriteFloat('Settings','mcoeff',mcoeff);
  data.WriteInteger('Settings','moffset',moffset);
  data.WriteString('Settings','FlashDrive',FlashDrive);
  data.UpdateFile;
  data.Destroy;
end;

{------------------ ����������� ���������� ------------------}
// ������������ ��������
procedure SwitchLamp (const index : byte; const hundreds : boolean);
begin
  case hundreds of
    true  : begin
              if kbd.lampIndex1<>0
                then kbd.lamps[kbd.lampIndex1].Brush.Color:=OffColor;
              kbd.lamps[index].Brush.Color:=OnColor;
              kbd.lampIndex1:=index
            end;
    false : begin
              if kbd.lampIndex2<>0
                then kbd.lamps[kbd.lampIndex2].Brush.Color:=OffColor;
              kbd.lamps[index].Brush.Color:=OnColor;
              kbd.lampIndex2:=index
            end
  end;
end;

// ��������� ������� �������
procedure ProceedButton (const value : integer; const hundreds : boolean);
begin
  case kbd.lampLimit of
    11 : begin // ������� ������
           if hundreds
             then Form1.limUp:=value + Form1.limUp mod 100
             else Form1.limUp:=value + Form1.limUp - Form1.limUp mod 100;
         end;
    12 : begin // ������ ������
           if hundreds
             then Form1.limDown:=-value + Form1.limDown mod 100
             else Form1.limDown:=-value + Form1.limDown - Form1.limDown mod 100;
           if Form1.limDown<-600
            then
              begin
                // ���������� ������ ������ =-600
                Form1.limDown:=-600;
                // ��������� �������, ����� � �������� ������ "600"
                if kbd.lampIndex1<>0
                  then kbd.lamps[kbd.lampIndex1].Brush.Color:=OffColor;
                if kbd.lampIndex2<>0
                  then kbd.lamps[kbd.lampIndex2].Brush.Color:=OffColor;
                kbd.lampIndex2:=0;
                kbd.lampIndex1:=6;
                kbd.lamps[6].Brush.Color:=OnColor;
              end;
         end;
  end;
end;

{------------------ ����������� ���-������ ------------------}

// �������������� ���� � ������ 2 � ������ �������� ����
// � �������������� ������������
function TForm1.Convert;
begin
  Convert:=round((value-offset)*coeff)
  // Convert:=value-offset+cweight
end;

// �������������� ����������� � ������ 2 � ������ �������� ����
// � �������������� ������������
function TForm1.ConvertMovement;
begin
  ConvertMovement:=round((value-moffset)*mcoeff)
end;

// �������� �������������� ���� � ���
function TForm1.ReConvert;
begin
  ReConvert:=(offset-value/coeff)/1000;
end;

// ����������� ����� �����
function TForm1.Sgn;
begin
  if value>=0
    then Sgn:='+'
    else Sgn:=''; // ���� '-' ������������� ������������� ��� �������������� �����
end;

// ��������� �������� �������� � ����������� � ���� ������
procedure TForm1.DrawValues;
var
  str : string;
  a,b : integer;
begin
  str:=TimeToStr(Time);
  a:=Max(weight,weight2);
  b:=Min(weight,weight2);
  if a>chart.LeftAxis.Maximum
    then chart.LeftAxis.Maximum:=a+50.0;
  if b<chart.LeftAxis.Minimum
    then chart.LeftAxis.Minimum:=b-50.0;
  chart.Series[0].Add(weight,str);  // �� ������� - ���������� ���
  chart.Series[1].Add(weight2);     // �� ������� - ���������� ���
  (*
  lbWeight1.Caption:=IntToStr(weightr);   // �� ����� - ��� � ������ �������
  lbWeight2.Caption:=IntToStr(weight2r);  // �� ����� - ��� � ������ �������
  *)
  lbWeight1.Caption:=IntToStr(weight);    // �� ����� - ���������� ���
  lbWeight2.Caption:=IntToStr(weight2);   // �� ����� - ���������� ���
  lbLimUp.Caption:=IntToStr(limUp);       // ������� �������
  lbLimDown.Caption:=IntToStr(limDown);   // ������ �������
  lbMove.Caption:=IntToStr(movement);     // �����������
  // write data to file
  rec.limUp:=limUp;
  rec.limDown:=limDown;
  rec.weight:=weight;
  rec.weight2:=weight2;
  rec.time:=Time;
  rec.movement:=movement;
  write(f,rec);
  // clear chart if needed
  if Chart.Series[0].Count>Chart.BottomAxis.Maximum
    then
      begin
        chart.Series[0].Clear;
        chart.Series[1].Clear;
        chart.BottomAxis.Minimum:=0;
        chart.LeftAxis.Minimum:=-220;
        chart.LeftAxis.Maximum:=800;
      end;
  Application.ProcessMessages;
end;

// ������ ������ �� ����� COM1
//          ���� ���1 ������������ ��� ������ ������� ����:
//                171 S W+ W- W0+ W0- U+ U- D+ D- CS        (11 ����)
//          ������ ������������ ������� ��� � �������� 2 �������� ����
//            (��� � ������ ������� � ����������), ������� ����� �
//             ������ �����
procedure TForm1.packet1Packet(Sender: TObject; const Str: String);
var
  buf        : TBuffer;
  i          : integer;
  w,w0,lu,ld : smallint; // w0 - ���������� ���������, w - � ������ �������
  cc         : byte;
begin
  if not bLink
    then // ����� �������������
      begin
        ShutdownTimer.Enabled:=false;
        pnShutdownProcess.Visible:=false;
        bLink:=true;
      end;
  // ����������� ascii-����� � ��������
  for i:=1 to MaxLen1 do
    buf[i]:=ord(Str[i]);
  // ������� � �������� ����������� �����
  asm
    mov al,byte ptr buf
    add al,byte ptr buf+1
    add al,byte ptr buf+2
    add al,byte ptr buf+3
    add al,byte ptr buf+4
    add al,byte ptr buf+5
    add al,byte ptr buf+6
    add al,byte ptr buf+7
    add al,byte ptr buf+8
    add al,byte ptr buf+9
    mov cc,al
  end;
  if cc=buf[11]   // CRC ok?
    then
      begin
        // �������� ������ � ���� � �������
        asm
          mov ah,byte ptr buf+2
          mov al,byte ptr buf+3
          mov w,ax
          mov ah,byte ptr buf+4
          mov al,byte ptr buf+5
          mov w0,ax
          mov ah,byte ptr buf+6
          mov al,byte ptr buf+7
          mov lu,ax
          mov ah,byte ptr buf+8
          mov al,byte ptr buf+9
          mov ld,ax
        end;
        weight:=w0;
        weightr:=w;
        limUp:=lu;
        limDown:=ld;
      (*
        // ��������� ������ ������ ������� ������
        timer.Enabled:=false;
        // ����� ������� ������
        if b1
          then // ����� �����������
            begin
              bMove:=true; // cm01[]
              cmd:=cm01;
            end
          else // ����� ����
            begin
              bMove:=false; // cm02[]
              cmd:=cm02;
            end;
        COM2.Write(cmd,cmdLen);
        b1:=not b1;
      *)
      end;
  Application.ProcessMessages;
  tLast:=Time;
end;

// ������ ������ �� ����� COM2
//          ���� ���2 ������������ ��� ������ ������� ����:
//                        >+00.000<cr>            (9 ����)
//          ������ ������������� �� 2-� ������� ADAM 4012
//          ������ 01 �������� �� �����������
//          ������ 02 �������� �� ���
//          ������ ������������ �� ������� � ����������� �� ����� b1
//          �������������� �������� ������������ � ����������� �� �����
//              bMove
procedure TForm1.packet2Packet(Sender: TObject; const Str: String);
var
  tmp     : string;
  w       : integer;
  c       : integer;
  current : real;     // �������� ����
begin
  if not bLink
    then // ����� �������������
      begin
        ShutdownTimer.Enabled:=false;
        pnShutdownProcess.Visible:=false;
        bLink:=true;
      end;
  // convert ascii-line to smallint
  tmp:=str;
  Delete(tmp,1,1);  { ������� ��������� ������ '>'}
  Delete(tmp,4,1);  { ������� ���������� �����    }
  Delete(tmp,7,1);  { ������� �������� ������ #13 }
  w:=StrToInt(tmp);
  // ��������� ������������������ ������ 2
  if bNull and not bMove // ���� ��������� ���� ��������� ���� � ������ ����� �� ����02
    then
      begin
        offset:=w;
        bNull:=false
      end;
  // ��������� �����������
  if bMoveNull and bMove // ���� ��������� ���� ��������� ����������� � ������ ����� �� ����01
    then
      begin
        moffset:=w;
        bMoveNull:=false;
      end;
  // �������������� ���������� ���������
  if bMove
    then movement:=ConvertMovement(w)
    else
      begin
        weight2:=-Convert(w);
        if limUp=0
          then c:=limDown
          else c:=limUp;
        weight2r:=c-weight2;
      end;
  // ��������� ������� � ADAM �02, ���� �������� ������� ����������
  if limUp<>oldLU
    then
      begin
        // �������������� ���� � ���
        if limUp=0
          then tmp:=nullHigh
          else
            begin
              current:=ReConvert(limUp);
              // ������������ �������
              tmp:=prefixHI+Sgn(current)+FormatFloat(fmtCurrent,current,fmtSettings);
            end;
        // ��������� �������� ������ �� �����
        oldLU:=limUp;
        // �������� ������� � ADAM 4012
        COM2.WriteStr(tmp);
        sleep(2000);
      end;
  if limDown<>oldLD
    then
      begin
        // �������������� ���� � ���
        if limDown=0
          then tmp:=nullLow
          else
            begin
              current:=ReConvert(limDown);
              // ������������ �������
              tmp:=prefixLO+Sgn(current)+FormatFloat(fmtCurrent,current,fmtSettings);
            end;
        // ��������� �������� ������ �� �����
        oldLD:=limDown;
        // �������� ������� � ADAM 4012
        COM2.WriteStr(tmp);
      end;
  // ��������� � ������������ ������ (������ � ������������ �� ����������)
  (*lbMessage.Font.Color:=clAqua;*)
  if (weight2>=limUp) and (limUp<>0)
    then
      begin
      (*
        // �������� ������ ��������� ������� ����� ������������
        NullTimer.Tag:=1;
        NullTimer.Enabled:=true;
       *)
        // ���������� ��������������� ���������
        lbMessage.Caption:=msgLimUp;
        lbMessage.Visible:=true;
      end
    else
      if (weight2<=limDown) and (limDown<>0)
        then
          begin
          (*
            // �������� ������ ��������� ������� ����� ������������
            NullTimer.Tag:=2;
            NullTimer.Enabled:=true;
          *)
            // ���������� ��������������� ���������
            lbMessage.Caption:=msgLimDown;
            lbMessage.Visible:=true;
          end
        else
          begin
            // ������ ���������
            lbMessage.Visible:=false;
          end;
  // ��������� ��������
  DrawValues;
//  timer.Enabled:=true;
  tLast:=Time;
end;

// ������������� ����������
procedure TForm1.FormShow(Sender: TObject);
begin
  b1:=false;
  Screen.Cursor:=crAppStart;
  path:=ExtractFilePath(Application.ExeName);
  // open database
  str:=path+'base\'+DateToStr(Date)+'.dat';
  AssignFile(f,str);
  if FileExists(str)
    then
      begin
        FileMode:=fmOpenReadWrite;
        reset(f);
        while not eof(f) do read(f,rec);
      end
    else rewrite(f);
  // init keyboard
  kbd.lamps[1]:=shape100;
  kbd.lamps[2]:=shape200;
  kbd.lamps[3]:=shape300;
  kbd.lamps[4]:=shape400;
  kbd.lamps[5]:=shape500;
  kbd.lamps[6]:=shape600;
  kbd.lamps[7]:=shape700;
  kbd.lamps[8]:=shape800;
  kbd.lamps[9]:=shape900;
  kbd.lamps[10]:=shape1000;
  kbd.lamps[11]:=shapeLimUp;
  kbd.lamps[12]:=shapeLimDown;
  kbd.lamps[13]:=shape10;
  kbd.lamps[14]:=shape20;
  kbd.lamps[15]:=shape30;
  kbd.lamps[16]:=shape40;
  kbd.lamps[17]:=shape50;
  kbd.lamps[18]:=shape60;
  kbd.lamps[19]:=shape70;
  kbd.lamps[20]:=shape80;
  kbd.lamps[21]:=shape90;
  kbd.lamps[22]:=shape0;
  kbd.lamps[23]:=shapeReserved;
  kbd.lamps[24]:=shapeCAL;
  kbd.lampIndex1:=0;
  kbd.lampIndex2:=0;
  kbd.lampLimit:=0;
  // init form pos and size
  Form1.Left:=Screen.WorkAreaLeft;
  Form1.Top:=Screen.WorkAreaTop;
  Form1.Width:=Screen.WorkAreaWidth;
  Form1.Height:=Screen.WorkAreaHeight;
  // init warning pane pos and state
  pnShutdownProcess.Left:=(Form1.ClientWidth-pnShutdownProcess.Width) div 2;
  pnShutdownProcess.Top:=(Form1.ClientHeight-pnShutdownProcess.Height) div 2;
  pnShutdownProcess.Visible:=false;
  ShutdownTimer.Enabled:=false;
  // read ini file
  str:=path+'data.ini';
  data:=TIniFile.Create(str);
  coeff:=data.ReadFloat('Settings','coeff',0.0);
  offset:=data.ReadInteger('Settings','offset',0);
  {
  limUp:=data.ReadInteger('Settings','limUp',0);
  limDown:=data.ReadInteger('Settings','limDown',0);
  }
  limUp:=0;
  limDown:=0;
  mcoeff:=data.ReadFloat('Settings','mcoeff',0.0);
  moffset:=data.ReadInteger('Settings','moffset',0);
  vspeed:=data.ReadFloat('Settings','vspeed',0.8);
  FlashDrive:=data.ReadString('Settings','FlashDrive','D:');
  // init COM1
  packet1.Size:=MaxLen1;
  packet1.StartString:=StartByte1;
  COM1.Open;
  // init COM2
  packet2.Size:=MaxLen2;
  packet2.StartString:=StartByte2;
  packet2.StopString:=StopByte2;
  COM2.Open;
  // init other controls and vars
  oldLU:=limUp-1;
  oldLD:=limDown-1;
  fmtSettings.DecimalSeparator:='.';
  pnKeyboard.Visible:=false;
  movement:=0;
  bNull:=false;
  bMove:=false;
  bMoveNull:=false;
  chart.BottomAxis.Maximum:=vspeed*7200;
  timer.Interval:=round(1000/vspeed)+250;
  timer.Enabled:=true;
  lbMessage.Visible:=false;
  bLink:=true;
  tLast:=Time;
  Screen.Cursor:=crDefault;
end;

// ���������� ������ ����������
procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  CloseSession;
end;

// ����� ������� ������ � ������ ������ �������
procedure TForm1.TimerTimer(Sender: TObject);
begin
  if b1
    then // ����� �����������
      begin
        bMove:=true; // cm01[]
        cmd:=cm01;
      end
    else // ����� ����
      begin
        bMove:=false; // cm02[]
        cmd:=cm02;
      end;
  COM2.Write(cmd,cmdLen);
  b1:=not b1;
end;

// ��������� ��������� �� ������ 2
procedure TForm1.lbWeight2Click(Sender: TObject);
begin
(*
  if (limUp=0) and (limDown=0)
    then Form2.ShowModal;
*)
  bNull:=true;
end;

// ����� ������ ���������� ���������
procedure TForm1.btnCalibrateClick(Sender: TObject);
begin
  if weight2=0 then exit;
  edCoeff.Value:=weight2r;
  pnCalibrate.Visible:=true;
end;

// �������� ������ ����������
procedure TForm1.btnOkClick(Sender: TObject);
var
  wt,c : integer;
begin
  if weight2<>0
    then
      begin
        {
        tmp:=edCoeff.Value/weight2;
        if (tmp>=0.2) and (tmp<=2)
          then
            begin
              pnCalibrate.Visible:=false;
              coeff:=tmp
            end
          else MessageDlg('������� ������� ������� ��������!',mtError,[mbOk],0);
        }
        if limUp=0
          then c:=limDown
          else c:=limUp;
        wt:=c-trunc(edCoeff.Value);
        coeff:=wt/weight2;
        pnCalibrate.Visible:=false;
      end;
end;

// �������� ������ ���������� ��� ���������
procedure TForm1.btnCancelClick(Sender: TObject);
begin
  pnCalibrate.Visible:=false;
end;

// ����������� ������ Windows
function GetWinVersion: String;
var
   VersionInfo : TOSVersionInfo;
   OSName      : String;
begin
   // ������������� ������ ������
   VersionInfo.dwOSVersionInfoSize := SizeOf( TOSVersionInfo );

   if Windows.GetVersionEx( VersionInfo ) then
      begin
         with VersionInfo do
         begin
            case dwPlatformId of
               VER_PLATFORM_WIN32s   : OSName := 'Win32s';
               VER_PLATFORM_WIN32_WINDOWS : OSName := 'Windows 95';
               VER_PLATFORM_WIN32_NT      : OSName := 'Windows NT';
            end; // case dwPlatformId
            Result := OSName + ' Version ' + IntToStr( dwMajorVersion ) + '.' + IntToStr( dwMinorVersion ) +
                      #13#10' (Build ' + IntToStr( dwBuildNumber ) + ': ' + szCSDVersion + ')';
         end; // with VersionInfo
      end // if GetVersionEx
   else
      Result := '';
end;

// ���������� ������ Windows
procedure ShutDown;
const
  SE_SHUTDOWN_NAME = 'SeShutdownPrivilege';  
var
  hToken       : THandle;
  tkp          : TTokenPrivileges;
  tkpo         : TTokenPrivileges;
  zero         : DWORD;
begin
  if Pos( 'Windows NT', GetWinVersion) = 1  then // we've got to do a whole buch of things  
     begin
        zero := 0;  
        if not OpenProcessToken( GetCurrentProcess(), TOKEN_ADJUST_PRIVILEGES or TOKEN_QUERY, hToken) then  
           begin  
             MessageBox( 0, 'Exit Error', 'OpenProcessToken() Failed', MB_OK );  
             Exit;  
           end; // if not OpenProcessToken( GetCurrentProcess(), TOKEN_ADJUST_PRIVILEGES or TOKEN_QUERY, hToken)  
        if not OpenProcessToken( GetCurrentProcess(), TOKEN_ADJUST_PRIVILEGES or TOKEN_QUERY, hToken) then
           begin  
             MessageBox( 0, 'Exit Error', 'OpenProcessToken() Failed', MB_OK );  
             Exit;  
           end; // if not OpenProcessToken( GetCurrentProcess(), TOKEN_ADJUST_PRIVILEGES or TOKEN_QUERY, hToken)  


        // SE_SHUTDOWN_NAME
        if not LookupPrivilegeValue( nil, 'SeShutdownPrivilege' , tkp.Privileges[ 0 ].Luid ) then  
           begin  
              MessageBox( 0, 'Exit Error', 'LookupPrivilegeValue() Failed', MB_OK );  
              Exit;  
           end; // if not LookupPrivilegeValue( nil, 'SeShutdownPrivilege' , tkp.Privileges[0].Luid )  
        tkp.PrivilegeCount := 1;  
        tkp.Privileges[ 0 ].Attributes := SE_PRIVILEGE_ENABLED;

        AdjustTokenPrivileges( hToken, False, tkp, SizeOf( TTokenPrivileges ), tkpo, zero );  
        if Boolean( GetLastError() ) then  
           begin  
              MessageBox( 0, 'Exit Error', 'AdjustTokenPrivileges() Failed', MB_OK );  
              Exit;  
           end // if Boolean( GetLastError() )
        else  
           ExitWindowsEx( EWX_FORCE or EWX_SHUTDOWN, 0 );  
      end // if OSVersion = 'Windows NT'  
   else  
      begin // just shut the machine down  
        ExitWindowsEx( EWX_FORCE or EWX_SHUTDOWN, 0 );  
      end; // else
end;


// ���������� ����������
procedure TForm1.btnShutDownClick(Sender: TObject);
begin
  if MessageBox(handle,'������ ���������-����������� ����� ��������! �� ������������� ������ ��������� ���������?',
                '��������������',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2
               )=IDYES
    then
      begin
        CloseSession;
        ShutDown;
      end;
end;

{------------------- ����������� �������� -------------------}
// ����� �������� �������
procedure TForm1.btnLimUpClick(Sender: TObject);
begin
  // ������������ � ������� ������� �� �������
  kbd.lampLimit:=11;
  kbd.lamps[11].Brush.Color:=OnColor;
  kbd.lamps[12].Brush.Color:=OffColor;
  // ���������� �������� ������
  if kbd.lampIndex1<>0
    then kbd.lamps[kbd.lampIndex1].Brush.Color:=OffColor;
  if kbd.lampIndex2<>0
    then kbd.lamps[kbd.lampIndex2].Brush.Color:=OffColor;
  // ��������� ������� �������
  limDown:=0;
end;

// ����� ������� �������
procedure TForm1.btnLimDownClick(Sender: TObject);
begin
  // ������������ � �������� ������� �� ������
  kbd.lampLimit:=12;
  kbd.lamps[12].Brush.Color:=OnColor;
  kbd.lamps[11].Brush.Color:=OffColor;
  // ���������� �������� ������
  if kbd.lampIndex1<>0
    then kbd.lamps[kbd.lampIndex1].Brush.Color:=OffColor;
  if kbd.lampIndex2<>0
    then kbd.lamps[kbd.lampIndex2].Brush.Color:=OffColor;
  // ��������� �������� �������
  limUp:=0;
end;

{------------------- ����������� ����� -------------------}
procedure TForm1.btn100Click(Sender: TObject);
begin
  if kbd.lampLimit<>0
    then
      begin
        SwitchLamp(1,true);
        ProceedButton(100,true);
      end;
end;

procedure TForm1.btn200Click(Sender: TObject);
begin
  if kbd.lampLimit<>0
    then
      begin
        SwitchLamp(2,true);
        ProceedButton(200,true);
      end;
end;

procedure TForm1.btn300Click(Sender: TObject);
begin
  if kbd.lampLimit<>0
    then
      begin
        SwitchLamp(3,true);
        ProceedButton(300,true);
      end;
end;

procedure TForm1.btn400Click(Sender: TObject);
begin
  if kbd.lampLimit<>0
    then
      begin
        SwitchLamp(4,true);
        ProceedButton(400,true);
      end;
end;

procedure TForm1.btn500Click(Sender: TObject);
begin
  if kbd.lampLimit<>0
    then
      begin
        SwitchLamp(5,true);
        ProceedButton(500,true);
      end;
end;

procedure TForm1.btn600Click(Sender: TObject);
begin
  if kbd.lampLimit<>0
    then
      begin
        SwitchLamp(6,true);
        ProceedButton(600,true);
      end;
end;

procedure TForm1.btn700Click(Sender: TObject);
begin
  if kbd.lampLimit<>0
    then
      begin
        SwitchLamp(7,true);
        ProceedButton(700,true);
      end;
end;

procedure TForm1.btn800Click(Sender: TObject);
begin
  if kbd.lampLimit<>0
    then
      begin
        SwitchLamp(8,true);
        ProceedButton(800,true);
      end;
end;

procedure TForm1.btn900Click(Sender: TObject);
begin
  if kbd.lampLimit<>0
    then
      begin
        SwitchLamp(9,true);
        ProceedButton(900,true);
      end;
end;

procedure TForm1.btn1000Click(Sender: TObject);
begin
  if kbd.lampLimit<>0
    then
      begin
        SwitchLamp(10,true);
        ProceedButton(1000,true);
      end;
end;

{------------------- ����������� �������� -------------------}
procedure TForm1.btn10Click(Sender: TObject);
begin
  if kbd.lampLimit<>0
    then
      begin
        SwitchLamp(13,false);
        ProceedButton(10,false);
      end;
end;

procedure TForm1.btn20Click(Sender: TObject);
begin
  if kbd.lampLimit<>0
    then
      begin
        SwitchLamp(14,false);
        ProceedButton(20,false);
      end;
end;

procedure TForm1.btn30Click(Sender: TObject);
begin
  if kbd.lampLimit<>0
    then
      begin
        SwitchLamp(15,false);
        ProceedButton(30,false);
      end;
end;

procedure TForm1.btn40Click(Sender: TObject);
begin
  if kbd.lampLimit<>0
    then
      begin
        SwitchLamp(16,false);
        ProceedButton(40,false);
      end;
end;

procedure TForm1.btn50Click(Sender: TObject);
begin
  if kbd.lampLimit<>0
    then
      begin
        SwitchLamp(17,false);
        ProceedButton(50,false);
      end;
end;

procedure TForm1.btn60Click(Sender: TObject);
begin
  if kbd.lampLimit<>0
    then
      begin
        SwitchLamp(18,false);
        ProceedButton(60,false);
      end;
end;

procedure TForm1.btn70Click(Sender: TObject);
begin
  if kbd.lampLimit<>0
    then
      begin
        SwitchLamp(19,false);
        ProceedButton(70,false);
      end;
end;

procedure TForm1.btn80Click(Sender: TObject);
begin
  if kbd.lampLimit<>0
    then
      begin
        SwitchLamp(20,false);
        ProceedButton(80,false);
      end;
end;

procedure TForm1.btn90Click(Sender: TObject);
begin
  if kbd.lampLimit<>0
    then
      begin
        SwitchLamp(21,false);
        ProceedButton(90,false);
      end;
end;

procedure TForm1.btn0Click(Sender: TObject);
begin
  if kbd.lampLimit<>0
    then
      begin
        // ��������� ����� � �������
        if kbd.lampIndex1<>0
          then kbd.lamps[kbd.lampIndex1].Brush.Color:=OffColor;
        if kbd.lampIndex2<>0
          then kbd.lamps[kbd.lampIndex2].Brush.Color:=OffColor;
        // �������� ��������������� ������
        case kbd.lampLimit of
          11 : Form1.limUp:=0;
          12 : Form1.limDown:=0;
        end;
      end;
end;

{------------------- ����������� ��������� ������ -------------------}
// ����������������� ������  (���������� ���� ���� ������ �� ���������� ����)
procedure TForm1.btnReservedClick(Sender: TObject);
var
  SR     : TSearchRec;
  found  : integer;
  source : string;
  destin : string;
  ps,pd  : PChar;
begin
  // ��������� ����
  SelectDirectory.Directory:=FlashDrive;
  // ����� �������� ��� ����������
  if SelectDirectory.Execute
    then
      begin
        // ���� ��� �����������
        FlashDrive:=SelectDirectory.Directory;
        // �������� ����� base � ����� ����������
        destin:=FlashDrive+'base\';
        if not DirectoryExists(destin)
          then mkDir(destin);
        // ������ �������� ���������� � ����������� ���� ������
        //   � ���������� ����������
        source:=path+'base\*.dat';
        found:=FindFirst(source,faAnyFile,SR);
        source:=ExtractFilePath(source);
        while found=0 do
          begin
            ps:=PChar(source+SR.Name);
            pd:=PChar(destin+SR.Name);
            CopyFile(ps,pd,false);
            found:=FindNext(SR);
          end;
        FindClose(SR);
        // ����������� ���������
        ShowMessage('������� ������ ���� ������ ��������!');
      end;
end;

// ������ CAL - ������ �������� � �����-�� � ini-����
procedure TForm1.btnCalClick(Sender: TObject);
begin
  kbd.lamps[24].Brush.Color:=OnColor;
  data.WriteFloat('Settings','coeff',coeff);
  data.WriteInteger('Settings','offset',offset);
  {
  data.WriteInteger('Settings','limUp',limUp);
  data.WriteInteger('Settings','limDown',limDown);
  }
  data.WriteFloat('Settings','mcoeff',mcoeff);
  data.WriteInteger('Settings','moffset',moffset);
  data.WriteString('Settings','FlashDrive',FlashDrive);
  data.UpdateFile;
  kbd.lamps[24].Brush.Color:=OffColor;
end;


{------------------- ����������� ����������� -------------------}


// ��������� �����������
procedure TForm1.btnNullMoveClick(Sender: TObject);
begin
  bMoveNull:=true;
end;

// ���������� �����������
procedure TForm1.btnCalibrateMoveClick(Sender: TObject);
begin
  edMoveCoeff.Value:=movement;
  pnMoveCalibrate.Visible:=true;
end;

// OK
procedure TForm1.btnMoveOkClick(Sender: TObject);
var
  tmp : real;
begin
  if movement<>0
    then
      begin
        tmp:=edMoveCoeff.Value/movement;
        {
        if (tmp>=0.2) and (tmp<=2)
          then
            begin
              pnMoveCalibrate.Visible:=false;
              mcoeff:=tmp
            end
          else MessageDlg('������� ������� ������� ��������!',mtError,[mbOk],0);
        }
        mcoeff:=tmp;
        pnMoveCalibrate.Visible:=false;
      end;
end;

// CANCEL
procedure TForm1.btnMoveCancelClick(Sender: TObject);
begin
  pnMoveCalibrate.Visible:=false;
end;

procedure TForm1.btnKeyboardClick(Sender: TObject);
begin
  pnKeyboard.Visible:=btnKeyboard.Down;
end;

// �������� ������� �����
procedure TForm1.LinkTimerTimer(Sender: TObject);
var
  sec   : int64;
  curr  : TTime;
begin
  curr:=Time;
  sec:=SecondsBetween(curr,tLast);
  if (sec>10) and bLink
    then // ����� ����������
      begin
        // �������� �������� ������
        sgProcess.Value:=0;
        lbProgress.Caption:='60 ���';
        pnShutDownProcess.Visible:=true;
        ShutdownTimer.Enabled:=true;
        // ��������� ������� �����
        bLink:=false;
      end;
end;

// ������ �������� ����������
procedure TForm1.ShutdownTimerTimer(Sender: TObject);
begin
  sgProcess.Value:=sgProcess.Value+1;
  lbProgress.Caption:=IntToStr(60-sgProcess.Value)+' ���';
  if sgProcess.Value=60
    then // ���������� ����������
      begin
        ShutdownTimer.Enabled:=false;
        LinkTimer.Enabled:=false;
        CloseSession;
        ShutDown;
      end;
end;

// ������ ��������� �������
procedure TForm1.NullTimerTimer(Sender: TObject);
begin
(*
  case NullTimer.Tag of
    1 : limUp:=0;
    2 : limDown:=0;
    else ;
  end;
  NullTimer.Enabled:=false;
*)
end;

end.
