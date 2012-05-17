unit Main;

interface

uses
  Windows, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,Math, ExtCtrls, TeEngine, Series, TeeProcs, Chart,
  TeeFunci, ComCtrls, Buttons, Menus;

const
SizeOfMas=100000;
BribeEffect=3;
type
  TMainForm = class(TForm)
    AEdit: TLabeledEdit;
    KEdit: TLabeledEdit;
    NEdit: TLabeledEdit;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GoBtn: TButton;
    CloseBtn: TButton;
    SaveDialog1: TSaveDialog;
    dihEdit: TLabeledEdit;
    distEdit: TLabeledEdit;
    ProgressBar1: TProgressBar;
    ProgressBar2: TProgressBar;
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    Go1: TMenuItem;
    Exit1: TMenuItem;
    About1: TMenuItem;
    About2: TMenuItem;
    GoplsStepBtn: TButton;
    PageControl3: TPageControl;
    TabSheet6: TTabSheet;
    HChartIh: TChart;
    LineSeries7: TLineSeries;
    TabSheet7: TTabSheet;
    CChartIh: TChart;
    AddTeeFunction8: TAddTeeFunction;
    SaveExperiment: TCheckBox;
    SaveEveryStep: TCheckBox;
    Log1: TMenuItem;
    ClearLog1: TMenuItem;
    StopBtn: TButton;
    Timer1: TTimer;
    IhEdit: TLabeledEdit;
    StepsEdit: TLabeledEdit;
    PageControl2: TPageControl;
    TabSheet3: TTabSheet;
    HChart: TChart;
    LineSeries6: TLineSeries;
    AddTeeFunction6: TAddTeeFunction;
    TabSheet4: TTabSheet;
    CChart: TChart;
    AddTeeFunction4: TAddTeeFunction;
    Setting1: TMenuItem;
    RunAll1: TMenuItem;
    div011: TMenuItem;
    div0051: TMenuItem;
    Productivityfunction1: TMenuItem;
    CobbDuglas1: TMenuItem;
    CES1: TMenuItem;
    REdit: TLabeledEdit;
    Label1: TLabel;
    TaxMenu: TMenuItem;
    TaxRate: TLabeledEdit;
    PageControl4: TPageControl;
    TabSheet5: TTabSheet;
    TabSheet9: TTabSheet;
    ihChart: TChart;
    Series1: TLineSeries;
    TeeFunction1: TAddTeeFunction;
    YChart: TChart;
    LineSeries1: TLineSeries;
    AddTeeFunction1: TAddTeeFunction;
    PageControl5: TPageControl;
    TabSheet10: TTabSheet;
    TabSheet11: TTabSheet;
    YiChart: TChart;
    LineSeries2: TLineSeries;
    AddTeeFunction2: TAddTeeFunction;
    IhIhChart: TChart;
    LineSeries3: TLineSeries;
    AddTeeFunction3: TAddTeeFunction;
    Series5: TMenuItem;
    TabSheet12: TTabSheet;
    SPChart: TChart;
    LineSeries10: TLineSeries;
    InitialDistribution1: TMenuItem;
    HDistrType: TMenuItem;
    Powerfunction1: TMenuItem;
    TaxationEqual: TMenuItem;
    NoTaxation: TMenuItem;
    TabSheet8: TTabSheet;
    SPIhChart: TChart;
    LineSeries5: TLineSeries;
    AddTeeFunction5: TAddTeeFunction;
    MinPivot: TLabeledEdit;
    View1: TMenuItem;
    Showpreviousstep1: TMenuItem;
    PreviousOn: TMenuItem;
    Off2: TMenuItem;
    Series7: TLineSeries;
    Series8: TLineSeries;
    Series9: TLineSeries;
    Series10: TLineSeries;
    Series11: TLineSeries;
    Series12: TLineSeries;
    Series13: TLineSeries;
    Series14: TLineSeries;
    TabSheet13: TTabSheet;
    GDPChart: TChart;
    LineSeries9: TLineSeries;
    LineSeries11: TLineSeries;
    TaxationAfter: TMenuItem;
    LambdaEdit: TLabeledEdit;
    TabSheet14: TTabSheet;
    TaxRateChart: TChart;
    LineSeries12: TLineSeries;
    LineSeries13: TLineSeries;
    TabSheet15: TTabSheet;
    TaxRateIhChart: TChart;
    LineSeries14: TLineSeries;
    AddTeeFunction9: TAddTeeFunction;
    LineSeries15: TLineSeries;
    TabSheet16: TTabSheet;
    GDPIhChart: TChart;
    LineSeries16: TLineSeries;
    AddTeeFunction10: TAddTeeFunction;
    LineSeries17: TLineSeries;
    warntax2: TLabel;
    WarnTax1: TLabel;
    TaxationInequal: TMenuItem;
    CLTaxRate: TLabeledEdit;
    VaryOptions: TRadioGroup;
    TaxationExpenditure: TMenuItem;
    Multiplebase1: TMenuItem;
    StartPivotal1: TMenuItem;
    LastPivotal1: TMenuItem;
    Exam1: TMenuItem;
    ExamOn: TMenuItem;
    Off1: TMenuItem;
    Manual1: TMenuItem;
    Series4: TPointSeries;
    LineSeries8: TPointSeries;
    Series6: TPointSeries;
    Series15: TPointSeries;
    Corruption: TCheckBox;
    Series3: TLineSeries;
    LineSeries4: TLineSeries;
    Series2: TLineSeries;
    Series16: TLineSeries;
    StupidHCEdit: TLabeledEdit;
    CleverHCEdit: TLabeledEdit;
    ModelType: TComboBox;
    InitialHC: TRadioGroup;
    PFType: TRadioGroup;
    BribeEdit: TLabeledEdit;
    ExamPriceEdit: TLabeledEdit;
    procedure GoBtnClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure Go1Click(Sender: TObject);
    procedure About2Click(Sender: TObject);
    procedure GoplsStepBtnClick(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure SaveExperimentClick(Sender: TObject);
    procedure ClearLog1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    Procedure EnableAll(flag:boolean);
    procedure StopBtnClick(Sender: TObject);
    procedure div0051Click(Sender: TObject);
    procedure div011Click(Sender: TObject);
    procedure RunAll1Click(Sender: TObject);
    procedure CES1Click(Sender: TObject);
    procedure CobbDuglas1Click(Sender: TObject);
    procedure Powerfunction1Click(Sender: TObject);
    procedure HDistrTypeClick(Sender: TObject);
    procedure TaxationEqualClick(Sender: TObject);
    procedure NoTaxationClick(Sender: TObject);
    procedure AEditChange(Sender: TObject);
    procedure Off2Click(Sender: TObject);
    procedure PreviousOnClick(Sender: TObject);
    procedure TaxationAfterClick(Sender: TObject);
    procedure TaxationInequalClick(Sender: TObject);
    procedure VaryOptionsClick(Sender: TObject);
    procedure TaxationExpenditureClick(Sender: TObject);
    procedure StartPivotal1Click(Sender: TObject);
    procedure LastPivotal1Click(Sender: TObject);
    procedure Off1Click(Sender: TObject);
    procedure ExamOnClick(Sender: TObject);
    procedure Manual1Click(Sender: TObject);
    procedure CorruptionClick(Sender: TObject);
    procedure ModelTypeChange(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

  PGeneration=^TGeneration;

  TMas=array[1..SizeOfMas] of double;

  TGeneration = record
    H,L,Y,T,B,M:double; //Human Capital, Common Labour, GDP, Taxes
    pivotal,bribesize,bribetax,wH,wL:double; //Pivotal Dynasty, Skilled wage, Unskilled wage
    ht,mark,w,c,e,bribe,tax,isclever,isprof:TMas; //Human Capital, Wages, Consumption, Expenditures, Taxes, bribe
    averageprofhc:double;
    proftotal:integer;
    Parent,Child,Test : PGeneration;
    BiE:boolean;
    end;

  Tmodel = record
    Start,State:PGeneration;
    a,k,r,bribetowl,examprice:double;
    n,steps:integer; //amount of dynasties, amount of evolution steps
    end;

  TXY=record
    x,y:double;
    end;

  TGraph1  =record
    length:integer;
    points:array[1..SizeOfMas]of Txy;
    end;

var
  MainForm: TMainForm;
  Model:Tmodel;
  CleverHC,StupidHC:double;
  IHIH,YIH,SPIh,GDPIh,TaxIh,HCDIh,WDIh,CDIh,EDIh,TaxDIh:TGraph1;
  IHT,YT,SPT,GDPT,TaxT,HCD,WD,CD,ED,TaxD:TGraph1;
  Run_pivotal,run_a,run_k,run_r,run_tax,run_examprice,run_cltax,run_lambda,run_bribetowl:double;
  run_n,run_steps:integer;
  run_min_variable,run_max_variable:double;
  expectedpivotal:double;
  run_scale,stepn,maxstep:integer; //for multiple experiments
  starttime,endtime:TDateTime;
  allexp:boolean; //true if series
  error:boolean;
  epsilon:double; //for beating round problem. (Floor(0,7*1000)=699)

  Procedure NewModel;
  Procedure NextGeneration(var Generation:PGeneration);
  Procedure DisposeModel(var Generation:PGeneration);
  Function  SetConstants:boolean;

  Procedure SubStep;
  Procedure FirstStep;
  Procedure Step;
  Procedure SetStart_Ih_HC;
  Procedure CountHCM(var Generation:PGeneration);
  Procedure CountLH(var Generation:PGeneration; isreal:boolean);
  Function ExamResult(i:integer; Generation:PGeneration):integer;
  Procedure PassExam(var Generation:PGeneration);
  Procedure CountWages(var Generation:PGeneration);
  Function  CountY(var Generation:PGeneration):double;
  Function  CountWh(var Generation:PGeneration):double;
  Function  CountWl(var Generation:PGeneration):double;
  Procedure DistributeWages(var Generation:PGeneration);
  Procedure CountT(var Generation:PGeneration);
  Function FindCurrentPivotal(var Generation:PGeneration; a,b:integer):double;
  Function  FindExpectedPivotal(var Generation:PGeneration; a,b:integer):double;
  Function ExpectedSalary(i:integer; bribe:double; Generation:PGeneration):double;

  Procedure CountExpensesConsumption(Var Generation:PGeneration);

  Function Gamma:double;
  Function hi(i:integer; var Generation:PGeneration):double;
  Function wi(i:integer; var Generation:PGeneration):double;
  Function Psi(x:double):double;
  function hexam(i:integer; var Generation:PGeneration):double;
  function hline(i:integer; var Generation:PGeneration):double;
  Function hbig(i:integer; var Generation:PGeneration):double;

  Procedure Experiment(ih,a,k:double;n,steps:integer;single_exp:boolean);
  Procedure Run;

  Procedure RunSeries;
  Procedure Timer;

  Procedure AddPoints(var Graph:TGraph1;X,Y:double);
  Procedure Draw_HC_W_C_E(withplots:boolean);
  Procedure Draw_Ih_Y_SP_GDP(Dynasty:integer);
  Procedure Draw_Plots_Multiple;
  Procedure ClearCharts(Single:boolean);
  Procedure ShowPrevious(Chart:TChart);
  Procedure ShowPreviousSingle;
  Procedure ShowPreviousMulti;

  Procedure savelog(filename:string;single_exp:boolean;a:double;steps:integer;ihdih:double;starttime,enddime:TTime);
  procedure Save(filename:tfilename);
  Procedure SaveGraphToFile(Graph:TGraph1;Filename:TFileName);

  Function MaxMin(a,b:double;sign:integer):Double;
  Function NewStrToDouble(str:string; var flag:boolean):Double;
  Function CESDerivative(a,s,K,L:double;dK:boolean):double;

implementation

uses About;

{$R *.dfm}


function Part(l, r: integer;var a,m1,m2,m3,m4,m5,m6,m7,m8:tmas):integer;
var
  v,  b,b1,b2,b3,b4,b5,b6,b7,b8: double;i, j:integer;
begin
  V:=a[r];
  I:=l-1;
  j:=r;
  repeat
    repeat
      j:=j-1;
    until (a[j]<=v) or (j=i+1);
    repeat
      inc(i)
    until (a[i]>=v) or (i=j-1);
    b:=a[i]; b1:=m1[i]; b2:=m2[i]; b3:=m3[i]; b4:=m4[i]; b5:=m5[i]; b6:=m6[i]; b7:=m7[i]; b8:=m8[i];
    a[i]:=a[j]; m1[i]:=m1[j]; m2[i]:=m2[j]; m3[i]:=m3[j]; m4[i]:=m4[j]; m5[i]:=m5[j]; m6[i]:=m6[j]; m7[i]:=m7[j]; m8[i]:=m8[j];
    a[j]:=b; m1[j]:=b1; m2[j]:=b2; m3[j]:=b3; m4[j]:=b4; m5[j]:=b5; m6[j]:=b6; m7[j]:=b7; m8[j]:=b8;
  until i>=j;
  a[j]:=a[i]; m1[j]:=m1[i]; m2[j]:=m2[i]; m3[j]:=m3[i]; m4[j]:=m4[i]; m5[j]:=m5[i]; m6[j]:=m6[i]; m7[j]:=m7[i]; m8[j]:=m8[i];
  a[i]:=a[r]; m1[i]:=m1[r]; m2[i]:=m2[r]; m3[i]:=m3[r]; m4[i]:=m4[r]; m5[i]:=m5[r]; m6[i]:=m6[r]; m7[i]:=m7[r]; m8[i]:=m8[r];
  a[r]:=b; m1[r]:=b1; m2[r]:=b2; m3[r]:=b3; m4[r]:=b4; m5[r]:=b5; m6[r]:=b6; m7[r]:=b7; m8[r]:=b8;
  part:=i;
end;

procedure QuickSort(l,t: integer;var a,m1,m2,m3,m4,m5,m6,m7,m8:Tmas);
var i: integer;
begin
  if l<t then
    begin
      i:=part(l,t,a,m1,m2,m3,m4,m5,m6,m7,m8);
      QuickSort(l,i-1,a,m1,m2,m3,m4,m5,m6,m7,m8);
      QuickSort(i+1,t,a,m1,m2,m3,m4,m5,m6,m7,m8);
    end;
end;


//---------interface and structure functions-----------------------

  Procedure NewModel;
  Begin
    New(Model.Start);
    new(Model.Start.Test);
    Model.State:=Model.Start;
  End;

  Procedure NextGeneration(var Generation:PGeneration);
  Begin
    new(Generation.Child);
    Generation.Child.Parent:=Generation;
    Generation:=Generation.Child;
    Generation.Parent.Child:=Generation;
    new(Generation.Test);
  End;

  Procedure TestGeneration(var Generation:PGeneration);
  var
  i:integer;
  Begin
    Generation.Test.Test:=Generation;
    Generation.Test.Parent:=Generation.Parent;
    Generation:=Generation.Test;
    Generation.Test.Test:=Generation;
    for i:=1 to model.n do
    Generation.ht[i]:=Generation.Test.ht[i];
    for i:=1 to model.n do
    Generation.mark[i]:=Generation.Test.mark[i];
    Generation.pivotal:=Generation.Test.pivotal;
    Generation.BiE:=Generation.Test.BiE;
  End;

  Procedure DisposeModel(var Generation:PGeneration);
  Begin
    if (Generation.Child<>nil) then
      begin
     	  DisposeModel(Generation.Child);
    	  Generation.Child :=nil;
      end;
    Dispose(Generation.Test);
    Dispose(Generation);
  End;

  Function SetConstants:boolean;
  Begin
    result:=true;
    run_tax:=0;
    Run_lambda:=0;

    if (MainForm.ModelType.ItemIndex=1) then
    begin
      CleverHC:=NewStrToDouble(MainForm.CleverHCEdit.Text,result);
      StupidHC:=NewStrToDouble(MainForm.StupidHCEdit.Text,result);
    end;
    Run_a:=NewStrToDouble(MainForm.AEdit.Text,result);
    if (MainForm.TaxationEqual.Checked or MainForm.TaxationInequal.Checked) or MainForm.TaxationExpenditure.Checked then Run_tax:=NewStrToDouble(MainForm.TaxRate.Text,result);
    Run_CLTax:=Run_Tax;
    if MainForm.TaxationInequal.Checked or MainForm.TaxationExpenditure.Checked then Run_CLTax:=NewStrToDouble(MainForm.CLTaxRate.Text,result);
    if MainForm.TaxationAfter.Checked then Run_lambda:=NewStrToDouble(MainForm.LambdaEdit.Text,result);
    Run_k:=NewStrToDouble(MainForm.KEdit.Text,result);
    if MainForm.PFType.ItemIndex=1 then Run_r:=NewStrToDouble(MainForm.REdit.Text,result);

    try
     Run_n:=strtoint(MainForm.NEdit.Text);
    except
    on Exception : EConvertError do
      begin ShowMessage(Exception.Message);
      result:=false; end;
    end;

    if run_n>SizeOfMas then
    begin;
     MainForm.NEdit.Text:=IntToStr(SizeOfMas);
     ShowMessage('Maximum amount of dynasties = ' + MainForm.NEdit.Text);
     Run_n:=SizeOfMas;
    end;

    try
     Run_steps:=strtoint(MainForm.StepsEdit.Text);
    except
    on Exception : EConvertError do
      begin ShowMessage(Exception.Message);
      result:=false; end;
    end;

    if run_steps>SizeOfMas then
    begin;
     MainForm.StepsEdit.Text:=IntToStr(SizeOfMas);
     ShowMessage('Maximum amount of Steps = ' + MainForm.StepsEdit.Text);
     Run_Steps:=SizeOfMas;
    end;


  End;

  //---------Model running functions---------------------------


  Procedure SubStep;
  var
  clevercount,i:integer;
  Begin
    Model.State.BiE:=true;
    if not error and ((MainForm.ModelType.ItemIndex=2)  or (MainForm.ModelType.ItemIndex=4)) then
        Model.State.Pivotal:=(FindCurrentPivotal(Model.State,0,Model.n))/Model.n;

    if not error and ((MainForm.ModelType.ItemIndex=3) or (MainForm.ModelType.ItemIndex=5) )then
       if not Model.State.BiE then
        Begin
            QuickSort(1,Model.n,Model.State.ht,Model.State.isclever,Model.State.isprof,Model.State.w,Model.State.mark,Model.State.c,Model.State.e,Model.State.tax,Model.State.bribe);
            Model.State.Pivotal:=(FindCurrentPivotal(Model.State,0,Model.n))/Model.n;
        End
       else
        Begin
            QuickSort(1,Model.n,Model.State.mark,Model.State.isclever,Model.State.isprof,Model.State.w,Model.State.ht,Model.State.c,Model.State.e,Model.State.tax,Model.State.bribe);
            Model.State.Pivotal:=(FindCurrentPivotal(Model.State,0,Model.n))/Model.n;
        End;


    if not error and (MainForm.ModelType.ItemIndex=1) then PassExam(Model.State);

    if not error then CountLH(Model.State, true);
    if not error then CountWages(Model.State);
//    if not error then if (MainForm.TaxationEqual.checked or Mainform.TaxationInEqual.Checked) or Mainform.TaxationExpenditure.Checked then CountT(Model.State);

    if (MainForm.ModelType.ItemIndex=1) then
      begin
        if not error then QuickSort(1,Model.n,Model.State.isclever,Model.State.isprof,Model.State.w,Model.State.ht,Model.State.mark,Model.State.c,Model.State.e,Model.State.tax,Model.State.bribe);
        clevercount:=Model.n;
        for i:=1 to Model.n do
        if Model.State.isclever[i]=0 then clevercount:=i;
        if not error then QuickSort(1,clevercount,Model.State.isprof,Model.State.isclever,Model.State.w,Model.State.ht,Model.State.mark,Model.State.c,Model.State.e,Model.State.tax,Model.State.bribe);
        if not error then QuickSort(clevercount+1,Model.n,Model.State.isprof,Model.State.isclever,Model.State.w,Model.State.ht,Model.State.mark,Model.State.c,Model.State.e,Model.State.tax,Model.State.bribe);
      end;

    if not error then NextGeneration(Model.State);

    case MainForm.ModelType.ItemIndex of
    0,1:
    Begin
        if not error then Model.State.bribesize:=Model.bribetowl*min(Model.State.Parent.wL,Model.State.Parent.wH*Model.State.Parent.averageprofhc);
        if not error  then
            if not (MainForm.ModelType.ItemIndex=1) then
                Model.State.Pivotal:=(FindExpectedPivotal(Model.State,0,Model.n)-1)/Model.n
            else
                Model.State.Pivotal:=(Model.n-Model.State.Parent.ProfTotal)/Model.n;

    {    if not error then if MainForm.PFType.ItemIndex=0 then if MainForm.NoTaxation.Checked or MainForm.TaxationExpenditure.checked then if Model.State.Pivotal<(1-Model.a) then
              if Mainform.PageControl1.ActivePageIndex=1 then
               error:=true else
                if not (MainForm.ModelType.ItemIndex=1) then
                if (MessageDlg('Pivotal Dynasty = '+Floattostr(Model.State.Pivotal)+' < '+Floattostr(1-Model.a)+'. Stop experiment?', mtConfirmation, mbYesNoCancel, 0) = mrYes ) then
                  error:=true;
     }
    end;
    end;

    if not error then Model.State:=Model.State.Parent;
    if not error then  CountExpensesConsumption(Model.State);

    if not error and ((MainForm.ModelType.ItemIndex=3) or (MainForm.ModelType.ItemIndex=5))then
      if Power(Model.State.bribetax,Model.a)>Model.examprice then
        Model.State.Child.BiE:=false else
        Model.State.Child.BiE:=true;
  End;

  Procedure FirstStep;
  Begin
    Model.State:=Model.Start;
    SetStart_Ih_HC;
    if not error then SubStep;
  End;

  Procedure Step;
  Begin
    if not error then CountHCM(Model.state);
    if not error then SubStep;
  End;

  Procedure SetStart_Ih_HC;
   var i:integer;
   n:double;
   alfa,beta,gamma, x0:double;
   Begin
    if (MainForm.InitialHC.ItemIndex =2) then
    begin
     Model.Start.pivotal:=0.5;
     for i:=1 to (Model.n div 2) do
     begin
       Model.Start.ht[i]:=StupidHC;
       Model.Start.isclever[i]:=0;
     end;
     for i:=(Model.n div 2)+1 to Model.n do
     begin
       Model.Start.ht[i]:=CleverHC;
       Model.Start.isclever[i]:=1;
     end;

    end;


    if (MainForm.InitialHC.ItemIndex =1) then
    begin

      case MainForm.PFType.ItemIndex of
      0:beta:=1;
      1:beta:=1-Model.r;
      else begin beta:=1;
      showmessage('PF error'); end;
      end;

     n:=0.00001;
     while (Power(Model.Start.Pivotal,n+1) > (1-Model.a)/Model.a*Power((1-Power(Model.start.Pivotal,n+1))/(n+1),beta)) and (n<10000) do
     begin
     n:=n+0.0005;
     end;

     if (n<=1e-05) or (n>=10000) then
       if Mainform.PageControl1.ActivePageIndex=1 then
         error:=true else
         if (MessageDlg('Wrong Initial Human Capital Distribution. Stop experiment?', mtConfirmation, mbYesNoCancel, 0) = mrYes ) then
           error:=true;

     for i:=1 to Model.n do
      Begin
       Model.Start.ht[i]:=Model.Start.Pivotal*Power((i-1)/Model.n,n);
       Model.Start.mark[i]:=Model.Start.ht[i];
      End;
    end;

    if (MainForm.InitialHC.ItemIndex=0) then
     begin
      case MainForm.PFType.ItemIndex of
      0:begin beta:=(1-Model.a)/Model.a*(1-Run_CLTax)/(1-Run_Tax);
                x0:=Model.Start.Pivotal;
                alfa:=2*(Model.Start.Pivotal*Model.Start.Pivotal*Model.n-((1-Model.Start.Pivotal)*Model.Start.Pivotal*Model.n)*beta)/(beta*(1-Model.Start.Pivotal)*(2*(Model.Start.Pivotal*Model.n-1)+(1-Model.Start.Pivotal)*Model.n));
                gamma:=1;//Power(1/Model.Start.Pivotal,2);
        end;

      1:begin beta:=Power((1-Model.a)/Model.a,1/(1-Model.r));
              x0:=Model.Start.Pivotal;
                alfa:=2*(Power(Model.Start.Pivotal,1/(1-Model.r))*Model.Start.Pivotal*Model.n-((1-Model.Start.Pivotal)*Model.Start.Pivotal*Model.n)*beta)/(beta*(1-Model.Start.Pivotal)*(2*(Model.Start.Pivotal*Model.n-1)+(1-Model.Start.Pivotal)*Model.n));
                gamma:=1;
          if alfa<0 then
           if Mainform.PageControl1.ActivePageIndex=1 then
             error:=true else
              if (MessageDlg('Wrong Initial Human Capital Distribution. Stop experiment?', mtConfirmation, mbYesNoCancel, 0) = mrYes ) then
               error:=true;
        end;

      else
       begin
        showmessage('PF error');
        alfa:=0; x0:=1;gamma:=1;
       end;
      end;

        For i:=1 to Model.n do
         Begin
           if i<=Floor(Model.Start.Pivotal*Model.n+epsilon) then
               Model.Start.ht[i]:=0
            else
              Model.Start.ht[i]:=Gamma*(x0+(i-1-Model.Start.Pivotal*Model.n)/Model.n*alfa);
           Model.Start.mark[i]:=Model.Start.ht[i];
         end;
   end;
   end;

  Procedure CountHCM(var Generation:PGeneration);
  var i:integer;
  Begin
    For i:=1 to Model.n do
      if not error then
       Case MainForm.ModelType.ItemIndex of
        0:
         if i<=floor(Generation.Pivotal*Model.n+epsilon) then
           Generation.ht[i]:=0
         else
           Generation.ht[i]:=hline(i,Generation);
        1:
          Generation.ht[i]:=hexam(i,Generation);
        2,4:
          Generation.ht[i]:=Power(Generation.Parent.e[i],Model.k)*Power(Generation.ht[i]+1,1-Model.k);
        3,5:
          begin
          Generation.ht[i]:=Max(Power(Generation.Parent.e[i],Model.k)*Power(Generation.ht[i]+1,1-Model.k),0.01);
          Generation.mark[i]:=Max(Generation.ht[i],(1/Model.bribetowl)*Power(Generation.Parent.bribe[i]-Model.State.wL*Model.bribetowl,Model.k){*Power(Generation.ht[i]+1,1-Model.k)});
          end;

        end;
  End;

  Procedure CountLH(var Generation:PGeneration; isreal:boolean);
  var i:integer;
      tmp:double;
      counter:integer;
  Begin
    tmp:=0;
    counter:=0;
    if not error then
     if (MainForm.ModelType.ItemIndex=1) then
       Begin
        For i:=1 to Model.n do
           if Generation.isprof[i]=1 then
           begin
           tmp:=tmp+Generation.ht[i];
           inc(counter);
           end;
       End else
       begin
        For i:=floor(Generation.Pivotal*Model.n+epsilon)+1 to Model.n do
            begin
            if ((MainForm.ModelType.ItemIndex=3) or (MainForm.ModelType.ItemIndex=5)) and Model.State.BiE and not isreal then
                tmp:=tmp+Generation.mark[i]
            else
                tmp:=tmp+Generation.ht[i];
            inc(counter);
            end;
       End;
    Generation.H:=tmp/Model.n;
    Generation.averageprofhc:=tmp/counter;
    Generation.proftotal:=counter;

    if not error then if Generation.H=0 then begin error:=true; showmessage('HumanCapital=0'); end;

    tmp:=0;
    if not error then
     if ((MainForm.ModelType.ItemIndex=3) or (MainForm.ModelType.ItemIndex=5)) and isreal then
       begin
        For i:=floor(Generation.Pivotal*Model.n+epsilon)+1 to Model.n do
            tmp:=tmp+Generation.mark[i];
        Generation.M:=tmp/Model.n;

       Generation.B:=Generation.M-Generation.H;
       Generation.bribetax:=Model.State.B/Model.State.M;
       End;

    tmp:=0;
    if (MainForm.ModelType.ItemIndex=1) then
       Begin
        For i:=1 to Model.n do
           if Generation.isprof[i]=0 then tmp:=tmp+1;
       End else
       begin
          tmp:=Generation.Pivotal*Model.n
       End;

    Generation.L:=tmp/Model.n;
    if not error then if Generation.L=0 then begin error:=true; showmessage('CommonLabour=0'); end;
   end;


  Function ExamResult(i:integer; Generation:PGeneration):integer;
   var
       r:double;
   Begin
       randomize;
       r:=random;
       result:=integer(r<(Generation.ht[i]/(StupidHC+CleverHC)+BribeEffect*Generation.bribe[i]));
   End;

  Procedure PassExam(var Generation:PGeneration);
  var i:integer;
  Begin
   For i:=1 to Model.n do
     Generation.isprof[i]:=ExamResult(i, Generation);
  End;


  Procedure CountWages(var Generation:PGeneration);
  var betamax, beta:double;
  Begin
    if ((MainForm.ModelType.ItemIndex=3) or (MainForm.ModelType.ItemIndex=5))  and not Model.State.BiE then
      betamax:=Model.examprice else
      betamax:=0;

    if ((MainForm.ModelType.ItemIndex=3) or (MainForm.ModelType.ItemIndex=5))  and Model.State.BiE then
      beta:=Model.State.bribetax else
      beta:=0;

    Generation.Y:=CountY(Generation)*(1-betamax);
    Generation.wH:=CountWh(Generation)*(1-betamax)*(1-beta);
    Generation.wL:=CountWl(Generation)*(1-betamax);
    DistributeWages(Generation);
  End;

  Function CountY(var Generation:PGeneration):double;
  Begin
  result:=0;
  if not error then
  Case MainForm.PFType.ItemIndex of
  0: Result:=Power(Generation.H,Model.a)*Power(Generation.L,1-Model.a);
  1: Result:=Power(Model.a*Power(Generation.H,Model.r)+(1-Model.a)*Power(Generation.L,Model.r),1/Model.r);
  else showmessage('PF error');
  end;
  if not error then if result=0 then begin error:=true; showmessage('Y=0'); end;
  End;

  Function CountWh(var Generation:PGeneration):double;
  Begin
  result:=0;
  if not error then
  Case MainForm.PFType.ItemIndex of
  0: Result:=Model.a*Power(Generation.L/Generation.H,1-Model.a);
  1: Result:=Model.a*Power(Generation.H,Model.r-1)*Power(Generation.Y,(1-Model.r));
  else showmessage('PF error');
  end;
  if not error then  if result=0 then begin error:=true; showmessage('Wh=0'); end;
  End;

  Function CountWl(var Generation:PGeneration):double;
  Begin
  result:=0;
  if not error then
  Case MainForm.PFType.ItemIndex of
  0: Result:=(1-model.a)*Power(Generation.H/Generation.L,Model.a);
  1: Result:=(1-Model.a)*Power(Generation.L,Model.r-1)*Power(Generation.Y,(1-Model.r));
  else showmessage('PF error');
  end;
  if not error then  if result=0 then begin error:=true; showmessage('Wl=0'); end;
  End;

  Procedure DistributeWages(Var Generation:PGeneration);
  var i:integer;
  Begin
   if not error then
    begin
      For i:=1 to Model.n do
        Generation.w[i]:=wi(i,Generation);
{      if not (MainForm.ModelType.ItemIndex=1) then
      if Generation.ht[Model.n]*Generation.wh<Generation.wl then
       if Mainform.PageControl1.ActivePageIndex=1 then
         error:=true else
          if (MessageDlg('Wrong wages distribution. Stop experiment?', mtConfirmation, mbYesNoCancel, 0) = mrYes )  then
           Error:=true;
 }   end;
  End;

  Procedure CountT(var Generation:PGeneration);
  var i:integer;
  tmp:double;
  Begin
  tmp:=0;
  if not error then
    For i:=1 to Model.n do
     begin
      if i<=floor(Generation.Pivotal*Model.n+epsilon) then
       begin
        Generation.c[i]:=Generation.w[i];
        Generation.tax[i]:=Generation.w[i]/(1-Run_CLTax)*Run_CLTax;
       end else
       begin
        Generation.c[i]:=Generation.w[i];
        Generation.tax[i]:=Generation.w[i]/(1-Run_Tax)*Run_Tax;
       end;
       tmp:=tmp+Generation.tax[i]
     end;
  Generation.T:=tmp;
  End;

  Function FindCurrentPivotal(var Generation:PGeneration; a,b:integer):double;
  var i:integer;
  var left,right:double;
  begin
    if a<b then
    begin
      i:=round((a+b)/2);

      TestGeneration(Generation);

      Generation.pivotal:=i/Model.n;
      CountLH(Generation,false);
      left:=CountY(Generation);

      Generation.pivotal:=(i+1)/Model.n;
      CountLH(Generation,false);
      right:=CountY(Generation);

      Generation:=Generation.Test;

      if left>right then
        Result:=FindCurrentPivotal(Generation,a+1,i) else
      if left<right then
        Result:=FindCurrentPivotal(Generation,i+1,b) else
      Result:=i;

    end else
      result:=b;

  End;


  Function FindExpectedPivotal(var Generation:PGeneration; a,b:integer):double;
  var i:integer;
  var left,right:double;
  begin
    if a<b then
    begin
      i:=round((a+b)/2);
      Case MainForm.PFType.ItemIndex of
      0: left:=((1-Model.a)/Model.a)*HBig(i,Generation)/i;
      1: left:=((1-Model.a)/Model.a)*Power(HBig(i,Generation)/i,(1-Model.r));
      else begin left:=0; showmessage('PF error'); end;
      end;
      right:=hline(i,Generation)/(1+Model.k);

      if left<right then
        Result:=FindExpectedPivotal(Generation,a,i-1) else
      if left>right then
        Result:=FindExpectedPivotal(Generation,i+1,b) else
      Result:=i;
    end else
      result:=b;

  End;

  Function ExpectedSalary(i:integer; bribe:double; Generation:PGeneration):double;
  var
  ifclever,ifstupid:double;
  Begin
   ifclever:=((CleverHC/(StupidHC+CleverHC)+BribeEffect*bribe)*Generation.averageprofhc*Generation.wh+(1-(CleverHC/(StupidHC+CleverHC)+BribeEffect*bribe))*Generation.wl);
   ifstupid:=((StupidHC/(StupidHC+CleverHC)+BribeEffect*bribe)*Generation.averageprofhc*Generation.wh+(1-(StupidHC/(StupidHC+CleverHC)+BribeEffect*bribe))*Generation.wl);
   result:=Generation.isclever[i]*2/3*ifclever+Generation.isclever[i]*1/3*ifstupid+(1-Generation.isclever[i])*2/3*ifstupid+(1-Generation.isclever[i])*1/3*ifclever;
  End;

  Procedure CountExpensesConsumption(Var Generation:PGeneration);
  var i:integer;
  e1,e2,w1,w2,ifstudy,ifbribe,profminimum:double;
  Begin
    For i:=1 to Model.n do
    Begin
      Case MainForm.ModelType.ItemIndex of

      0:
        if i>floor(Generation.Child.Pivotal*Model.n+epsilon) then
            Begin
              if not MainForm.TaxationExpenditure.checked then
                begin
                  Generation.e[i]:=Model.k/(1+Model.k)*Generation.w[i];
                  Generation.c[i]:=1/(1+Model.k)*Generation.w[i];
                end else
                begin
                  Generation.e[i]:=Model.k/(1+Model.k)*Generation.w[i]-1/(1+Model.k)*Generation.T/Model.n/(1-Generation.Child.Pivotal);
                  if Generation.e[i]<0 then  error:=true;
                  Generation.c[i]:=1/(1+Model.k)*Generation.w[i]+1/(1+Model.k)*Generation.T/Model.n/(1-Generation.Child.Pivotal);
                end
            End else
            Begin
              Generation.e[i]:=0;
              Generation.c[i]:=Generation.w[i];
            End;

      1:
        begin
         if Mainform.corruption.Checked then
          begin
            e1:=ExpectedSalary(i,Generation.Child.bribesize,Generation);
            w1:=Generation.w[i]-Generation.Child.bribesize;
            e2:=ExpectedSalary(i,0,Generation);
            w2:=Generation.w[i];
            if (e1<0) or (e2<0) then showmessage(FloattoStr(CleverHC/(StupidHC+CleverHC)+BribeEffect*Generation.Child.bribesize)+', '+FloattoStr(Generation.averageprofhc*Generation.wh)+', '+FloattoStr(Generation.wl));

            if ln(e1)+ln(w1)<ln(e2)+ln(w2) then
              Generation.c[i]:=Generation.w[i] else
                begin
                   Generation.c[i]:=Generation.w[i]-Generation.Child.bribesize;
                   Generation.Child.bribe[i]:=Generation.Child.bribesize;
                   Generation.e[i]:=Generation.Child.bribesize;
                end;
          end else
          begin
                Generation.c[i]:=Generation.w[i]
          end;
        end;
      2:
        begin
        e1:=Power(Model.k/(1+Model.k)*Generation.w[i],Model.k)*Power(Generation.ht[i]+1,1-Model.k);
 //       if generation.Parent<>nil then
 //       profminimum:=(Generation.wl/Generation.wh+Generation.Parent.wl/Generation.Parent.wh)/2 else
        profminimum:=Generation.wl/Generation.wh;

        if e1>profminimum*1.5 then
            Begin
              Generation.e[i]:=Model.k/(1+Model.k)*Generation.w[i];
              Generation.c[i]:=1/(1+Model.k)*Generation.w[i];
            End else
            Begin
              Generation.e[i]:=0;
              Generation.c[i]:=Generation.w[i];
            End;
        end;
      3:
        begin

          profminimum:=Generation.wl/Generation.wh;
          ifstudy:=Power(Model.k/(1+Model.k)*Generation.w[i],Model.k)*Power(Generation.ht[i]+1,1-Model.k);

          w1:=Model.k/(Model.bribetowl+Model.k);
          w2:=Model.State.wL*Power(Model.bribetowl,2)/(Model.bribetowl+Model.k);
          if w1*Generation.w[i]+w2 < Generation.w[i] then
            ifbribe:=(1/Model.bribetowl)*Power((w1*Generation.w[i]+w2-Model.state.wL*Model.bribetowl),Model.k)
          else
            ifbribe:=0;

          if (i>floor(Generation.Pivotal*Model.n+epsilon)) or not Model.State.BiE then
            ifbribe:=0;

          if max(ifstudy,ifbribe)<profminimum*1.5 then
              begin
                Generation.e[i]:=0;
                Generation.bribe[i]:=0;
                Generation.c[i]:=Generation.w[i];
              end else

          if ifbribe>ifstudy then
              begin
                Generation.e[i]:=0;
                Generation.bribe[i]:=w1*Generation.w[i]+w2;
                Generation.c[i]:=Generation.w[i]-Generation.bribe[i];
              end else
              begin
                Generation.e[i]:=Model.k/(1+Model.k)*Generation.w[i];
                Generation.bribe[i]:=0;
                Generation.c[i]:=1/(1+Model.k)*Generation.w[i];
              end;
        end;
      4:
        begin
        e1:=Power(Model.k/(1+Model.k)*Generation.w[i],Model.k)*Power(Generation.ht[i]+1,1-Model.k);
 //       if generation.Parent<>nil then
 //       profminimum:=(Generation.wl/Generation.wh+Generation.Parent.wl/Generation.Parent.wh)/2 else
        profminimum:=Power(Model.k/(1+Model.k)*Generation.wl,Model.k)*Power(Generation.wl/Generation.wh+1,1-Model.k);
        if e1>profminimum then
            Begin
              Generation.e[i]:=Model.k/(1+Model.k)*Generation.w[i];
              Generation.c[i]:=1/(1+Model.k)*Generation.w[i];
            End else
            Begin
              Generation.e[i]:=0;
              Generation.c[i]:=Generation.w[i];
            End;
        end;
      5:
        begin
          profminimum:=Power(Model.k/(1+Model.k)*Generation.wl,Model.k)*Power(Generation.wl/Generation.wh+1,1-Model.k);

          ifstudy:=Power(Model.k/(1+Model.k)*Generation.w[i],Model.k)*Power(Generation.ht[i]+1,1-Model.k);

          w1:=Model.k/(Model.bribetowl+Model.k);
          w2:=Model.State.wL*Power(Model.bribetowl,2)/(Model.bribetowl+Model.k);
          if w1*Generation.w[i]+w2 < Generation.w[i] then
            ifbribe:=(1/Model.bribetowl)*Power((w1*Generation.w[i]+w2-Model.state.wL*Model.bribetowl),Model.k)
          else
            ifbribe:=0;

          if (i>floor(Generation.Pivotal*Model.n+epsilon)) or not Model.State.BiE then
            ifbribe:=0;

          if max(ifstudy,ifbribe)<profminimum then
              begin
                Generation.e[i]:=0;
                Generation.bribe[i]:=0;
                Generation.c[i]:=Generation.w[i];
              end else

          if ifbribe>ifstudy then
              begin
                Generation.e[i]:=0;
                Generation.bribe[i]:=w1*Generation.w[i]+w2;
                Generation.c[i]:=Generation.w[i]-Generation.bribe[i];
              end else
              begin
                Generation.e[i]:=Model.k/(1+Model.k)*Generation.w[i];
                Generation.bribe[i]:=0;
                Generation.c[i]:=1/(1+Model.k)*Generation.w[i];
              end;
        end;

      end;
    end;

    if error and (MainForm.PageControl1.ActivePageIndex=0) then showmessage('Negative Parent Expenditure. Experiment Stopped');
  End;


//---------Model internal functions---------------------------

  Function Gamma:double;
  Begin
    Result:=Power(Model.k/(1+Model.k),Model.k);
  End;

  Function hi(i:integer; var Generation:PGeneration):double;
  Begin
    Result:=Power(Generation.Parent.e[i]*(1+Run_Lambda),Model.k)*Power((Generation.Parent.ht[i]+1),1-Model.k);
  End;

  Function wi(i:integer; var Generation:PGeneration):double;
  var
  prof:boolean;
  hc:double;
  Begin
    Case MainForm.ModelType.ItemIndex of
    0:
     begin
       prof:= Generation.wL<=Generation.wH*Generation.ht[i];
       hc:=Generation.ht[i];
     end;
    1:
     begin
       prof:=Generation.isprof[i]=1;
       hc:=Generation.averageprofhc;
     end;
    2,4:
     begin
       prof:=i>floor(Model.State.pivotal*Model.n+epsilon) ;
       hc:=Generation.ht[i];
     end;
    3,5:
     begin
       prof:=i>floor(Model.State.pivotal*Model.n+epsilon) ;
       hc:=Generation.mark[i];
     end;
    end;

   if not prof then
    result:=Generation.wL*(1-Run_CLTax)
   else
    result:=Generation.wH*hc*(1-Run_Tax);
  End;

  Function Psi(x:double):double;
  Begin
    Result:=Power(x,Model.k)*Power(x+1,1-Model.k);
  End;

  Function hexam(i:integer; var Generation:PGeneration):double;
  Begin
   randomize;
   if Generation.Parent.isclever[i]=1 then
     begin
     if random(3)<1 then
       begin
           Result:=CleverHC;
           Generation.isclever[i]:=1;
       end
       else
       begin
           Result:=StupidHC;
           Generation.isclever[i]:=0;
       end;
     end
     else
     if random(3)<1 then
       begin
           Result:=StupidHC;
           Generation.isclever[i]:=0;
       end
       else
       begin
           Result:=CleverHC;
           Generation.isclever[i]:=1;
       end;

  End;

  Function hline(i:integer; var Generation:PGeneration):double;
  Begin
   if i<=floor(Generation.Parent.Pivotal*Model.n+epsilon) then
     Result:=Gamma*Power(Generation.Parent.wL,Model.k)
   else
     Result:=Gamma*Power(Generation.Parent.wH*(1+Run_Lambda),Model.k)*Psi(Generation.Parent.ht[i]);
  End;

  Function hbig(i:integer; var Generation:PGeneration):double;
  var tmp:double;
    Begin
    tmp:=0;
    For i:=floor(Generation.Parent.Pivotal*Model.n+epsilon)+1 to Model.n do
      tmp:=tmp+hline(i,Generation);
    Result:= tmp;
  End;


//-------------- Emulator run procedures --------------------------------

  Procedure Experiment(ih,a,k:double;n,steps:integer;single_exp:boolean);
       var i:integer;
  Begin
       error:=false;
       NewModel;

       Model.Start.Pivotal:=ih;
       Model.a:=a;
       Model.k:=k;
       Model.n:=n;
       Model.r:=run_r;
       Model.steps:=steps;

       Model.bribetowl:=run_bribetowl;
       Model.examprice:=run_examprice;

       FirstStep;

       if not error then
       if single_exp then //If Single Experiment
       Begin
        MainForm.IhChart.Series[0].AddXY(0,Model.State.Pivotal);
        AddPoints(IHT,0,Model.State.Pivotal);

        if MainForm.saveexperiment.Checked and MainForm.SaveEveryStep.Checked then
         begin
          Draw_HC_W_C_E(false);
          save(Stringreplace(Stringreplace('Logs\'+DateToStr(StartTime)+'_'+TimeToStr(StartTime)+'.csv',':','_',[rfReplaceAll]),'/','_',[rfReplaceAll]));
         end;
       End;
                       //---------------------
       For i:=1 to steps do
        if not error then
        Begin

          Model.State:=Model.State.Child;
          Step;

          if single_exp then //If Single Experiment
          begin
            MainForm.ProgressBar1.Position:=MainForm.ProgressBar1.Position+1;
            Draw_Ih_Y_SP_GDP(i);
            Endtime:=now();
            if MainForm.saveexperiment.Checked and MainForm.SaveEveryStep.Checked then
             begin
               Draw_HC_W_C_E(false);
               save(Stringreplace(Stringreplace('Logs\'+DateToStr(StartTime)+'_'+TimeToStr(StartTime)+'.csv',':','_',[rfReplaceAll]),'/','_',[rfReplaceAll]));
             end;
          end else        //If Multiple Experiments
            MainForm.ProgressBar2.Position:=MainForm.ProgressBar2.Position+1;
        End;

        if not error then
        if single_exp then   //If Single Experiment
           Draw_HC_W_C_E(true)
         else
           Draw_Plots_Multiple;  //If Multiple Experiments

       DisposeModel(Model.Start);
  end;

  Procedure Run; //-----------------------------------------------
  var
      i,scale:integer;
      delta:double;
      flag:boolean;
      beta:double;
  Begin
  with MainForm do
  begin
    Createdir('Logs');
    error:=false;
    beta:=1;

    starttime:=Now();

    if SetConstants then
      // If Single Experiment
      If PageControl1.ActivePageIndex=0 then
      Begin
        ProgressBar1.Position:=0;
        ProgressBar1.Max:=Run_steps;

        ShowPreviousSingle;
        ClearCharts(true);

        flag:=true;

        Run_pivotal:=NewStrToDouble(MainForm.IHEdit.Text,flag);
        Run_bribetowl:=NewStrToDouble(MainForm.BribeEdit.Text,flag);
        Run_examprice:=NewStrToDouble(MainForm.exampriceEdit.Text,flag);

        if not flag then
         Run_pivotal:=-1;




        if MainForm.PFType.ItemIndex=0 then if Run_pivotal<=Power((1-Run_a),beta) then
        begin
          ShowMessage('ih должно быть больше, чем (1-альфа)');
          Run_pivotal:=-1;
        end;

        if Run_pivotal<>-1 then Experiment(Run_pivotal,run_a,run_k,run_n,run_steps,true);

        endtime:=Now();

        if saveexperiment.Checked and not error then
        begin
          savelog('log.txt',true,run_a,run_steps,Run_pivotal,starttime,endtime);
          save(Stringreplace(Stringreplace('Logs\'+DateToStr(StartTime)+'_'+TimeToStr(StartTime)+'.csv',':','_',[rfReplaceAll]),'/','_',[rfReplaceAll]));
        end;
      End else
      If PageControl1.ActivePageIndex=1 then
      // If Multiple Experiments
      Begin
        ShowPreviousMulti;
        ClearCharts(false);

        flag:=true;

        delta:=NewStrToDouble(dihEdit.Text,flag);

        if not flag then delta:=-1;

        try
          Run_steps:=StrToint(distEdit.Text);
        except
        on Exception : EConvertError do
          begin ShowMessage(Exception.Message);
          delta:=-1; end;
        end;

        try
          run_min_variable:=StrToFloat(MinPivot.Text)+delta;
        except
        on Exception : EConvertError do
          begin ShowMessage(Exception.Message);
          delta:=-1; end;
        end;

        if delta<>-1 then
        Begin
          scale:=Round(1/delta);

          run_max_variable:=min(scale-1,round(0.95*scale))/scale;

          ProgressBar2.Position:=0;


          if not NoTaxation.Checked and (VaryOptions.ItemIndex=0) then
          begin
            Run_pivotal:=run_min_variable-delta; //it is not min variable but pivotal
            run_min_variable:=1/scale;
            run_max_variable:=(scale-1)/scale;
          end;


          ProgressBar2.Max:=(Round(scale*(run_max_variable-run_min_variable))+1)*Run_steps;

          stepn:=Round((scale)*(run_min_variable));
          maxstep:=Round((scale)*(run_max_variable));
          run_scale:=scale;

          if not allexp then Timer1.Enabled:=true else
           Begin
             if NoTaxation.Checked or (VaryOptions.ItemIndex=1) then
             Begin
              For i:=Round(scale*run_min_variable) to Round(scale*run_max_variable) do
               Begin
                 Run_pivotal:=i/scale;
                 Experiment(Run_pivotal,run_a,run_k,run_n,run_steps,false);
               End;
             End else
             Begin
               if TaxationEqual.Checked then
               For i:=Round(scale*run_min_variable) to Round(scale*run_max_variable) do
                Begin
                  Run_tax:=i/scale;
                  Run_cltax:=i/scale;
                  Experiment(Run_pivotal,run_a,run_k,run_n,run_steps,false);
                End;

               if TaxationInEqual.Checked then
               For i:=Round(scale*run_min_variable) to Round(scale*run_max_variable) do
                Begin
                  Run_tax:=i/scale;
                  Experiment(Run_pivotal,run_a,run_k,run_n,run_steps,false);
                End;

               if TaxationAfter.Checked then
               For i:=Round(scale*run_min_variable) to Round(scale*run_max_variable) do
                Begin
                  Run_lambda:=i/scale;
                  Experiment(Run_pivotal,run_a,run_k,run_n,run_steps,false);
                End;
             End;

             if saveexperiment.Checked and not error then
               begin
                 endtime:=Now();
                 savelog('log.txt',false,run_a,run_steps,1/run_scale,starttime,endtime);
                 save(Stringreplace(Stringreplace('Logs\'+DateToStr(StartTime)+'_'+TimeToStr(StartTime)+'.csv',':','_',[rfReplaceAll]),'/','_',[rfReplaceAll]));
               end;
           End;
        End;
      End;
  End;
  End;

// ------------------ Series of experiments --------------------------

  Procedure RunSeries;
  var i,k,f:integer; //f - type of step in series: 1 - 0.1, 2 - 0.05
  tmpn,tmpstep:integer;
  begin
  if MessageDlg('It can take a lot of time! Proceed?', mtConfirmation, mbYesNoCancel, 0) = mrYes   then
    with MainForm do
     Begin
      AllExp:=true;

      if not Saveexperiment.Checked then showmessage('Saving turned on');
      saveexperiment.Checked:=true;

      tmpn:=StrToInt(NEdit.text);
      tmpstep:=StrToInt(DistEdit.text);

      if div011.Checked then
       f:=1 else f:=2;
      if PageControl1.ActivePageIndex=1 then
       For i:=4*f to 10*f-1 do
        for k:=1 to 10*f-1 do
          Begin
           NEdit.Text:=IntToStr(tmpn);
           DistEdit.text:=IntToStr(tmpstep);
           if i<5*f then NEdit.Text:=IntToStr(5*tmpn);
           if k>8*f then DistEdit.Text:=IntToStr(2*tmpstep);
           AEdit.Text:=FloatToStr(i/(10*f));
           KEdit.Text:=FloatToStr(k/(10*f));
           Run;
          End;
      Allexp:=false;
     end;
  end;

  Procedure Timer;
  begin
     if stepn>maxstep then
     //If Series Of Multiple Experiments is over
     with MainForm do
     Begin
       Timer1.Enabled:=false;
       EnableAll(true);
       if saveexperiment.Checked then
         begin
          endtime:=Now();
          savelog('log.txt',false,run_a,run_steps,1/run_scale,starttime,endtime);
          save(Stringreplace(Stringreplace('Logs\'+DateToStr(StartTime)+'_'+TimeToStr(StartTime)+'.csv',':','_',[rfReplaceAll]),'/','_',[rfReplaceAll]));
         end;
     End else
     with MainForm do
     begin
       error:=false;
       EnableAll(false);
       if NoTaxation.Checked or (VaryOptions.ItemIndex=1) then
       Run_pivotal:=stepn/run_scale
       else
       begin
         If TaxationEqual.Checked then
         begin
          Run_Tax:=stepn/run_scale;
          Run_cltax:=stepn/run_scale;
         end;
         If TaxationInequal.Checked then
          Run_Tax:=stepn/run_scale;
         If TaxationAfter.Checked then
          Run_Lambda:=stepn/run_scale;
       end;
       Experiment(Run_pivotal,run_a,run_k,run_n,run_steps,false);
     End;

     inc(stepn);
  end;

//--------------- Drawing Plots And Log Saving -----------------------------------


  Procedure AddPoints(var Graph:TGraph1;X,Y:double);
  Begin
    inc(Graph.length);
    Graph.points[Graph.length].x:=X;
    Graph.points[Graph.length].y:=Y;
  End;

  Procedure Draw_HC_W_C_E(withplots:boolean);
   var i:integer;
  Begin
    HCD.length:=0;
    CD.length:=0;
    ED.length:=0;
    WD.length:=0;
    TaxD.length:=0;

    for i:=1 to Model.n do
      begin
       if withplots then MainForm.HChart[0].AddXY(i,Model.state.ht[i]);
         AddPoints(HCD,i,Model.state.ht[i]);
       if withplots then MainForm.CChart[0].AddXY(i,Model.state.w[i]);
         AddPoints(WD,i,Model.state.w[i]);
       if withplots then MainForm.CChart[1].AddXY(i,Model.state.c[i]);
         AddPoints(CD,i,Model.state.c[i]);
       if withplots then MainForm.CChart[2].AddXY(i,Model.state.e[i]);
         AddPoints(ED,i,Model.state.e[i]);
       if withplots then MainForm.CChart[3].AddXY(i,Model.state.tax[i]);
         AddPoints(TaxD,i,Model.state.tax[i]);
      end;

  end;

  Procedure Draw_Ih_Y_SP_GDP(Dynasty:integer);
    var
    d,p,i:integer;//дворник, профессор
    Begin
     if not error then
     begin
       AddPoints(IHT,Dynasty,Model.State.Pivotal);
       MainForm.IhChart.Series[0].AddXY(Dynasty,Model.State.Pivotal);
       AddPoints(YT,Dynasty,Model.state.Y/Model.State.Parent.Y);
       MainForm.YChart.Series[0].AddXY(Dynasty,Model.state.Y/Model.State.Parent.Y);

       if (MainForm.ModelType.ItemIndex=1) then
       Begin
       d:=1;
       p:=1;
       for i:=1 to Model.n do
         if Model.state.isprof[i]=1 then p:=i else d:=i;
       AddPoints(SPT,Dynasty,Model.state.w[p]/Model.State.w[d]);
       MainForm.SPChart.Series[0].AddXY(Dynasty,Model.state.w[p]/Model.State.w[d]);
       End else
       Begin
       AddPoints(SPT,Dynasty,Model.state.w[Model.n]/Model.State.w[1]);
       MainForm.SPChart.Series[0].AddXY(Dynasty,Model.state.w[Model.n]/Model.State.w[1]);
       end;
       AddPoints(GDPT,Dynasty,Model.state.Y);
       MainForm.GDPChart.Series[0].AddXY(Dynasty,Model.state.Y);
       AddPoints(TaxT,Dynasty,Run_Tax);
       MainForm.TaxRateChart.Series[0].AddXY(Dynasty,Run_Tax);
     end;
    end;

  Procedure Draw_Plots_Multiple;
  var base:double;
  begin
    base:=0;
    if MainForm.NoTaxation.Checked or (MainForm.VaryOptions.ItemIndex=1) then
    begin
    if MainForm.StartPivotal1.Checked then base:=Run_pivotal
     else base:=Model.State.pivotal;
    end
    else
    Begin
     if MainForm.TaxationEqual.Checked or MainForm.TaxationInequal.Checked then
     base:=run_tax;
     if MainForm.TaxationAfter.Checked then
     base:=run_lambda;
    end;

    MainForm.IhIhChart.Series[0].AddXY(base,Model.State.Pivotal);
    AddPoints(IHIH,base,Model.State.Pivotal);
    If model.state.Parent<> nil then if model.state.Parent.Y<>0 then MainForm.YiChart.Series[0].AddXY(base,Model.state.Y/Model.State.Parent.Y);
    If model.state.Parent<> nil then if model.state.Parent.Y<>0 then AddPoints(YIH,base,Model.state.Y/Model.State.Parent.Y);
    if model.state.w[1]<>0 then MainForm.SPIhChart.Series[0].AddXY(base,Model.state.w[Model.n]/Model.State.w[1]);
    if model.state.w[1]<>0 then AddPoints(SPIH,base,Model.state.w[Model.n]/Model.State.w[1]);
    MainForm.GDPIhChart.Series[0].AddXY(base,Model.state.Y);
    AddPoints(GDPIH,base,Model.state.Y);
    MainForm.TaxRateIhChart.Series[0].AddXY(base,Run_Tax);
    AddPoints(TaxIh,base,Run_tax);
    MainForm.HChartIh.Series[0].AddXY(base,Model.State.ht[Model.n]);
    AddPoints(HCDIh,base,Model.State.ht[Model.n]);
    if Model.State.Parent<>nil then
     begin
       MainForm.CChartIh.Series[0].AddXY(base,Model.State.Parent.w[Model.n]);
       AddPoints(WDIh,base,Model.State.Parent.w[Model.n]);
       MainForm.CChartIh.Series[1].AddXY(base,Model.State.Parent.c[Model.n]);
       AddPoints(CDIh,base,Model.State.Parent.c[Model.n]);
       MainForm.CChartIh.Series[2].AddXY(base,Model.State.Parent.e[Model.n]);
       AddPoints(EDIh,base,Model.State.Parent.e[Model.n]);
       MainForm.CChartIh.Series[3].AddXY(base,Model.State.Parent.tax[Model.n]);
       AddPoints(TaxDIh,base,Model.State.Parent.tax[Model.n]);
     end;
  end;

  Procedure ClearCharts(Single:boolean);
  Begin
   With MainForm do
   If Single then
    Begin
        IHT.length:=0;
        YT.length:=0;
        SPT.length:=0;
        GDPT.length:=0;
        TaxT.length:=0;

        IhChart.LeftAxis.Minimum:=0;
        IhChart.LeftAxis.Maximum:=1;

        IhChart.Series[0].Clear;
        YChart.Series[0].Clear;
        SPChart.Series[0].Clear;
        GDPChart.Series[0].Clear;
        TaxRateChart.Series[0].Clear;
        HChart.Series[0].Clear;
        CChart.Series[0].Clear;
        CChart.Series[1].Clear;
        Cchart.Series[2].Clear;
        Cchart.Series[3].Clear;
   end else
   begin
        IHIH.length:=0;
        YIH.length:=0;
        SPIH.length:=0;
        GDPIH.length:=0;
        TaxIh.length:=0;

        IhIhChart.Series[0].Clear;
        YiChart.Series[0].Clear;
        SPIhChart.Series[0].Clear;
        GDPIhChart.Series[0].Clear;
        TaxRateIhChart.Series[0].Clear;

        HCDIh.length:=0;
        CDIh.length:=0;
        EDIh.length:=0;
        WDIh.length:=0;
        TaxDIh.length:=0;

        HChartIh.Series[0].Clear;
        CChartIh.Series[0].Clear;
        CChartIh.Series[1].Clear;
        CChartIh.Series[2].Clear;
        CChartIh.Series[3].Clear;
   end;
  end;

  Procedure ShowPrevious(Chart:TChart);
    Begin
     if MainForm.PreviousOn.Checked then
         begin
          Chart.Series[1].Active:=true;
          Chart.SeriesList.Move(0,1);
          Chart.Series[0].Title:='This experiment';
          Chart.Series[1].Title:='Previous one';
         end else
          Chart.Series[1].Active:=false;
    End;

  Procedure ShowPreviousSingle;
   Begin
    ShowPrevious(MainForm.HChart);
    ShowPrevious(MainForm.ihChart);
    ShowPrevious(MainForm.YChart);
    ShowPrevious(MainForm.SPChart);
    ShowPrevious(MainForm.GDPChart);
   End;

  Procedure ShowPreviousMulti;
   Begin
    ShowPrevious(MainForm.HChartIh);
 //   ShowPrevious(MainForm.CChartIh);
    ShowPrevious(MainForm.IhIhChart);
    ShowPrevious(MainForm.YiChart);
    ShowPrevious(MainForm.SPIhChart);
    ShowPrevious(MainForm.GDPIhChart);
    ShowPrevious(MainForm.TaxRateIhChart);
   End;


  Procedure SaveLog(filename:string;single_exp:boolean;a:double;steps:integer;ihdih:double;starttime,enddime:TTime);
    var
    Output:TextFile;
    enumb:integer;

    Begin
    AssignFile(Output,FileName);

    if fileexists(FileName) then
      Append(Output)
    else
      Rewrite(Output);

    Writeln(output,'New experement started at '+DateToStr(starttime)+ ' '+TimeToStr(startTime)+' and took ' + TimeToStr(enddime-starttime));

    if single_exp then // If Single Experiment
    begin
      Writeln(output,'It was single experiment with '+ IntToStr(steps)+' steps, with following parameters:');
      writeln(output,'Initial fraction of common labour (Pivotal Dynasty) was ' + MainForm.IHEdit.text);
      If MainForm.TaxationEqual.Checked then  writeln(output,'Model has equal tax rate =  ' + MainForm.TaxRate.text+' with no intertemporal choice.');
      If MainForm.TaxationInequal.Checked then  writeln(output,'Model has tax rate for educated =  ' + MainForm.TaxRate.text+' and tax rate for not educated = ' + MainForm.CLTaxRate.text+', with no intertemporal choice.');
      If MainForm.TaxationAfter.Checked then  writeln(output,'Govermant subsidized education with lambda = ' + MainForm.LambdaEdit.text+'.');
    end else
                 // If Multiple Experiments
    begin
      enumb:=round(1/ihdih);
      Writeln(output,'It was a group of '+IntToStr(Round(run_scale*(run_max_variable-run_min_variable))+1)+' experiments with '+ IntToStr(steps)+' steps in each, with following parameters:');
      If MainForm.NoTaxation.Checked or (MainForm.VaryOptions.ItemIndex=1) then writeln(output,'Initial fraction of common labour (Pivotal Dynasty) varied from ' + FloatToStr(Round(enumb*(1-a))/enumb) +' to ' + FloatToStr((min(enumb-2,round(0.995*enumb))+1)/enumb))
      else
      begin
       If MainForm.TaxationEqual.Checked then  writeln(output,'Tax rate varied from ' + FloatToStr(run_min_variable) +' to ' + FloatToStr(run_max_variable));
       If MainForm.TaxationInequal.Checked then  writeln(output,'Tax rate for educated varied from ' + FloatToStr(run_min_variable) +' to ' + FloatToStr(run_max_variable));
       If MainForm.TaxationAfter.Checked then  writeln(output,'Lambda varied from   ' + FloatToStr(run_min_variable) +' to ' + FloatToStr(run_max_variable));
      end;
    end;

    Writeln(output,'alpha='+MainForm.AEdit.text+', k='+MainForm.KEdit.text+', n='+IntTostr(Run_n));
    writeln(output,'');

    Close(Output);
    End;

  procedure Save(filename:tfilename);
  var output:textfile;
      i:integer;
  begin
  AssignFile(Output,filename);

  //If Single Experiment
  if MainForm.PageControl1.ActivePageIndex=0 then
   Begin
   savelog(filename,true,run_a,run_steps,Run_pivotal,starttime,endtime);
   Append(output);
   if not Mainform.TaxationAfter.Checked then
     Writeln(Output,'Step; Pivotal Dynasty; Growth; Skill Premium; GDP');
   if Mainform.TaxationAfter.Checked then
     Writeln(Output,'Step; Pivotal Dynasty; Growth; Skill Premium; GDP; Tax rate');
   For i:=1 to IHT.length do
    begin
      if not Mainform.TaxationAfter.Checked then
        Writeln(output,FloatToStr(IHT.Points[i].X)+'; '+FloatToStr(IHT.Points[i].Y)+'; '+FloatToStr(YT.Points[i].Y)+'; '+FloatToStr(SPT.Points[i].Y)+'; '+FloatToStr(GDPT.Points[i].Y));
      if Mainform.TaxationAfter.Checked then
        Writeln(output,FloatToStr(IHT.Points[i].X)+'; '+FloatToStr(IHT.Points[i].Y)+'; '+FloatToStr(YT.Points[i].Y)+'; '+FloatToStr(SPT.Points[i].Y)+'; '+FloatToStr(GDPT.Points[i].Y)+'; '+FloatToStr(TaxT.Points[i].Y));
    end;
   writeln(output,'');
   Writeln(Output,'Dynasty; Human Capital; Consumption; Expenditure; Wages');
   For i:=1 to HCD.length do
   Writeln(output,FloatToStr(HCD.Points[i].X)+'; '+FloatToStr(HCD.Points[i].Y)+'; '+FloatToStr(CD.Points[i].Y)+'; '+FloatToStr(ED.Points[i].Y)+'; '+FloatToStr(WD.Points[i].Y));
   End;

  //If Multiple Experiments
  if MainForm.PageControl1.ActivePageIndex=1 then
   Begin
   savelog(filename,false,run_a,run_steps,Run_pivotal,starttime,endtime);
   Append(output);
   if MainForm.NoTaxation.Checked or (MainForm.VaryOptions.ItemIndex=1)  then
    Writeln(Output,'Initial Pivotal Dynasty; Pivotal Dynasty; Growth; SP; GDP; Human Capital of dynasty 1; Wages of dynasty 1; Consumption of dynasty 1; Expenditure of dynasty 1')
   else
   begin
     if MainForm.TaxationEqual.Checked then
      Writeln(Output,'Tax rate; Pivotal Dynasty; Growth; SP; GDP; Human Capital of dynasty 1; Wages of dynasty 1; Consumption of dynasty 1; Expenditure of dynasty 1');
     if MainForm.TaxationInEqual.Checked then
      Writeln(Output,'HC Tax rate; Pivotal Dynasty; Growth; SP; GDP; Human Capital of dynasty 1; Wages of dynasty 1; Consumption of dynasty 1; Expenditure of dynasty 1');
     if MainForm.TaxationAfter.Checked then
      Writeln(Output,'Lambda; Pivotal Dynasty; Growth; SP; GDP; Tax Rate; Human Capital of dynasty 1; Wages of dynasty 1; Consumption of dynasty 1; Expenditure of dynasty 1');
   end;

   For i:=1 to YIH.length do
   begin
    if not MainForm.TaxationAfter.Checked or (MainForm.VaryOptions.ItemIndex=1) then
     Writeln(output,FloatToStr(IhIh.Points[i].X)+'; '+FloatToStr(IHIH.Points[i].Y)+'; '+FloatToStr(YIH.Points[i].Y)+'; '+FloatToStr(SPIH.Points[i].Y)+'; '+FloatToStr(GDPIH.Points[i].Y)+'; '+FloatToStr(HCDIh.Points[i].Y)+'; '+FloatToStr(WDIH.Points[i].Y)+'; '+FloatToStr(CDIh.Points[i].Y)+'; '+FloatToStr(EDIh.Points[i].Y));
    if MainForm.TaxationAfter.Checked and (MainForm.VaryOptions.ItemIndex=0) then
     Writeln(output,FloatToStr(IhIh.Points[i].X)+'; '+FloatToStr(IHIH.Points[i].Y)+'; '+FloatToStr(YIH.Points[i].Y)+'; '+FloatToStr(SPIH.Points[i].Y)+'; '+FloatToStr(GDPIH.Points[i].Y)+'; '+FloatToStr(TaxIH.Points[i].Y)+'; '+FloatToStr(HCDIh.Points[i].Y)+'; '+FloatToStr(WDIH.Points[i].Y)+'; '+FloatToStr(CDIh.Points[i].Y)+'; '+FloatToStr(EDIh.Points[i].Y));
   end;
   End;

  CloseFile(Output);
  end;

  Procedure SaveGraphToFile(Graph:TGraph1;Filename:TFileName);
  var i:integer;
      Output:TextFile;
  Begin
    AssignFile(Output,FileName);
    Savelog(filename,true,run_a,run_steps,Run_pivotal,starttime,endtime);
    Append(Output);
    For i:=1 to Graph.length do
    Writeln(Output,FloatToStr(Graph.Points[i].x)+'; '+FloatToStr(Graph.Points[i].y));
    Close(Output);
  End;

//---------------------- ".," problem -----------------------------------------

  Function CESDerivative(a,s,K,L:double;dK:boolean):double;
   var xmdK,xmdL,xpdK,xpdL:double; pow:integer;
  Begin
    pow:=-6;
    xmdK:=Power(a*Power(K-Power(10,pow),s)+(1-a)*Power(L,s),1/s);
    xmdL:=Power(a*Power(K,s)+(1-a)*Power(L-Power(10,pow),s),1/s);
    xpdK :=  Power(a*Power(K+Power(10,pow),s)+(1-a)*Power(L,s),1/s);
    xpdL :=  Power(a*Power(K,s)+(1-a)*Power(L+Power(10,pow),s),1/s);
    if dK then
    Result:=(xpdK-xmdK)/(2*Power(10,pow))
    else
    Result:=(xpdL-xmdL)/(2*Power(10,pow));
  End;

  Function MaxMin(a,b:double;sign:integer):Double;
  Begin
   if sign>0 then result:=max(a,b) else result:=min(a,b);
   if sign=0 then result:=a;
  End;

  Function NewStrToDouble(str:string; var flag:boolean):Double;
   Begin
    try
      Result:=strtofloat(str)
    except
    on Exception : EConvertError do
      begin
       if pos('.',str)<>0 then
          str:=Stringreplace(Str,'.',',',[rfReplaceAll])
          else
           if pos('.',str)<>0 then
            str:=Stringreplace(Str,'.',',',[rfReplaceAll]);
       try
         Result:=strtofloat(str);
       except
          on Exception : EConvertError do
            begin
             flag:=false;
             result:=0;
            end; end;
      end;
    end;
End;

//-------------- form operating functions --------------------------

  procedure TMainForm.FormCreate(Sender: TObject);
  begin
    PageControl1.ActivePageIndex:=0;
    PageControl2.ActivePageIndex:=0;
    PageControl3.ActivePageIndex:=0;
    PageControl4.ActivePageIndex:=0;
    PageControl5.ActivePageIndex:=0;
    AllExp:=false;
    MainForm.PFType.ItemIndex:=0;
    epsilon:=1e-10;

    HChart.Series[1].Active:=false;
    IhChart.Series[1].Active:=false;
    YChart.Series[1].Active:=false;
    SPChart.Series[1].Active:=false;
    GDPChart.Series[1].Active:=false;
    TaxRateChart.Series[1].Active:=false;
    CChart.Series[3].Active:=false;

    HChartIh.Series[1].Active:=false;
    IhIhChart.Series[1].Active:=false;
    YiChart.Series[1].Active:=false;
    SPIhChart.Series[1].Active:=false;
    GDPIhChart.Series[1].Active:=false;
    TaxRateIhChart.Series[1].Active:=false;
    CChartIh.Series[3].Active:=false;

    InitialHC.Buttons[2].Enabled:=false;
  end;

  Procedure TMainForm.EnableAll(flag:boolean);
  Begin
    File1.Enabled:=flag;
    Log1.Enabled:=flag;
    About1.Enabled:=flag;
    PageControl1.Enabled:=flag;
    AEdit.Enabled:=flag;
    KEdit.Enabled:=flag;
    NEdit.Enabled:=flag;
    CloseBtn.Enabled:=flag;
    GoBtn.Enabled:=flag;
    GoPlsStepBtn.Enabled:=flag;
    HDistrType.Enabled:=flag;
    SaveExperiment.Enabled:=flag;
    SaveEveryStep.Enabled:=flag;
    dihedit.Enabled:=flag;
    distedit.Enabled:=flag;
    Stopbtn.visible:= not flag;
  End;

Procedure TMainForm.GoBtnClick(Sender: TObject);
Begin
Run;
End;

Procedure TMainForm.CloseBtnClick(Sender: TObject);
Begin
Close;
End;

procedure TMainForm.Timer1Timer(Sender: TObject);
Begin
Timer;
End;

procedure TMainForm.Exit1Click(Sender: TObject);
begin
CloseBtn.Click;
end;

procedure TMainForm.Go1Click(Sender: TObject);
begin
GoBtn.Click;
end;

procedure TMainForm.About2Click(Sender: TObject);
begin
AboutBox.Show;
end;

procedure TMainForm.GoplsStepBtnClick(Sender: TObject);
begin
Stepsedit.Text:=inttostr(strtoint(stepsedit.Text)+1);
Gobtn.Click;
end;

procedure TMainForm.PageControl1Change(Sender: TObject);
begin
GoPlsStepBtn.Enabled:=(Pagecontrol1.ActivePageIndex=0);
TaxRate.Enabled:=(Pagecontrol1.ActivePageIndex=0) or (VaryOptions.ItemIndex=1);;
CLTaxRate.Enabled:=(Pagecontrol1.ActivePageIndex=0) or (VaryOptions.ItemIndex=1);;
LambdaEdit.Enabled:=(Pagecontrol1.ActivePageIndex=0) or (VaryOptions.ItemIndex=1);;

VaryOptions.Visible:=(Pagecontrol1.ActivePageIndex=1) and not Notaxation.Checked
end;

procedure TMainForm.SaveExperimentClick(Sender: TObject);
begin
SaveEveryStep.Enabled:=SaveExperiment.Checked;
end;

procedure TMainForm.ClearLog1Click(Sender: TObject);
begin
If fileexists('log.txt') then
DeleteFile('log.txt');
end;

procedure TMainForm.StopBtnClick(Sender: TObject);
begin
Stepn:=MaxStep+1;
end;

procedure TMainForm.div0051Click(Sender: TObject);
begin
div0051.Checked:=true;
div011.Checked:=false;
end;

procedure TMainForm.div011Click(Sender: TObject);
begin
div0051.Checked:=false;
div011.Checked:=true;
end;

procedure TMainForm.RunAll1Click(Sender: TObject);
begin
runseries;
end;

procedure TMainForm.CES1Click(Sender: TObject);
begin
CobbDuglas1.Checked:=false;
CES1.Checked:=true;
redit.visible:=true;
label1.visible:=true;
MainForm.PFType.ItemIndex:=1;
NoTaxationClick(Sender);
end;

procedure TMainForm.CobbDuglas1Click(Sender: TObject);
begin
CobbDuglas1.Checked:=true;
CES1.Checked:=false;
redit.visible:=false;
label1.visible:=false;
MainForm.PFType.ItemIndex:=0;
end;

procedure TMainForm.Powerfunction1Click(Sender: TObject);
begin
HDistrType.Checked:=false;
PowerFunction1.Checked:=true;
Manual1.Checked:=false;
end;

procedure TMainForm.HDistrTypeClick(Sender: TObject);
begin
HDistrType.Checked:=true;
PowerFunction1.Checked:=false;
Manual1.Checked:=false;
end;

procedure TaxationPlotCaptions(base:string);
begin
with MainForm do
begin
IhIhChart.Series[0].Title:='Pivotal Dynasty ('+base+')';
IhIhChart.Title.Text.Strings[0]:='Pivotal Dynasty ('+base+')';
YiChart.Series[0].Title:='GDP Growth ('+base+')';
YiChart.Title.Text.Strings[0]:='GDP Growth ('+base+')';
SpihChart.Series[0].Title:='Skill Prmium ('+base+')';
SpihChart.Title.Text.Strings[0]:='Skill Prmium ('+base+')';
GDPihChart.Series[0].Title:='GDP ('+base+')';
GDPIhChart.Title.Text.Strings[0]:='GDP ('+base+')';
CChartIh.Title.Text.Strings[0]:='Parameters of i=1 ('+base+')';
HChartIh.Title.Text.Strings[0]:='Human caplital of i=1 ('+base+')';
end;
end;

procedure TMainForm.TaxationAfterClick(Sender: TObject);
begin
TaxationEqual.Checked:=false;
TaxationAfter.Checked:=true;
TaxationInequal.Checked:=false;
TaxationExpenditure.Checked:=false;
NoTaxation.Checked:=false;
LambdaEdit.Visible:=true;
TaxRate.Visible:=false;
CLTaxRate.Visible:=false;
TaxRateChart.Visible:=true;
TaxRateIhChart.Visible:=true;
VaryOptions.Visible:=(Pagecontrol1.ActivePageIndex=1) and not Notaxation.Checked;
VaryOptions.Items.Strings[0]:='Vary lambda';
CobbDuglas1Click(CobbDuglas1);
MinPivot.EditLabel.Caption:='Pivotal Dynasty';
DihEdit.EditLabel.Caption:='d(Lambda)';
MinPivot.Text:='0,8';
TaxationPlotCaptions('Lambda');
CChart.Series[2].Active:=true;
CChart.Series[3].Active:=true;
CChartIh.Series[2].Active:=true;
CChartIh.Series[3].Active:=true;
end;

procedure TMainForm.TaxationEqualClick(Sender: TObject);
begin
TaxationEqual.Checked:=true;
TaxationAfter.Checked:=false;
TaxationInequal.Checked:=false;
TaxationExpenditure.Checked:=false;
NoTaxation.Checked:=false;
LambdaEdit.Visible:=false;
TaxRate.Visible:=true;
TaxRate.EditLabel.Caption:='Tax rate = ';
CLTaxRate.Visible:=false;
TaxRate.Text:='0,2';
CLTaxRate.Text:='0,1';
TaxRateChart.Visible:=false;
TaxRateIhChart.Visible:=false;
VaryOptions.Visible:=(Pagecontrol1.ActivePageIndex=1) and not Notaxation.Checked;
VaryOptions.Items.Strings[0]:='Vary tax';
CobbDuglas1Click(CobbDuglas1);
MinPivot.EditLabel.Caption:='Pivotal Dynasty';
DihEdit.EditLabel.Caption:='d(Tax rate)';
MinPivot.Text:='0,8';
TaxationPlotCaptions('Tax rate');
CChart.Series[2].Active:=false;
CChart.Series[3].Active:=true;
CChartIh.Series[2].Active:=false;
CChartIh.Series[3].Active:=true;
end;

procedure TMainForm.TaxationInequalClick(
  Sender: TObject);
begin
TaxationEqual.Checked:=false;
TaxationAfter.Checked:=false;
TaxationInequal.Checked:=true;
TaxationExpenditure.Checked:=false;
NoTaxation.Checked:=false;
LambdaEdit.Visible:=false;
TaxRate.Visible:=true;
TaxRate.EditLabel.Caption:='HC Tax rate = ';
TaxRate.Text:='0,2';
CLTaxRate.Text:='0,1';
CLTaxRate.visible:=true;
TaxRateChart.Visible:=false;
TaxRateIhChart.Visible:=false;
VaryOptions.Visible:=(Pagecontrol1.ActivePageIndex=1) and not Notaxation.Checked;
VaryOptions.Items.Strings[0]:='Vary tax';
CobbDuglas1Click(CobbDuglas1);
MinPivot.EditLabel.Caption:='Pivotal Dynasty';
DihEdit.EditLabel.Caption:='d(Tax rate)';
MinPivot.Text:='0,8';
TaxationPlotCaptions('Tax rate');
CChart.Series[2].Active:=false;
CChart.Series[3].Active:=true;
CChartIh.Series[2].Active:=false;
CChartIh.Series[3].Active:=true;
end;

procedure TMainForm.TaxationExpenditureClick(Sender: TObject);
begin
TaxationEqual.Checked:=false;
TaxationAfter.Checked:=false;
TaxationInequal.Checked:=false;
TaxationExpenditure.Checked:=true;
NoTaxation.Checked:=false;
LambdaEdit.Visible:=false;
TaxRate.Visible:=true;
TaxRate.EditLabel.Caption:='HC Tax rate = ';
TaxRate.Text:='0,02';
CLTaxRate.Text:='0,01';
CLTaxRate.visible:=true;
TaxRateChart.Visible:=false;
TaxRateIhChart.Visible:=false;
VaryOptions.Visible:=(Pagecontrol1.ActivePageIndex=1) and not Notaxation.Checked;
VaryOptions.Items.Strings[0]:='Vary tax';
CobbDuglas1Click(CobbDuglas1);
MinPivot.EditLabel.Caption:='Pivotal Dynasty';
DihEdit.EditLabel.Caption:='d(Tax rate)';
MinPivot.Text:='0,8';
TaxationPlotCaptions('Tax rate');
CChart.Series[2].Active:=true;
CChart.Series[3].Active:=true;
CChartIh.Series[2].Active:=true;
CChartIh.Series[3].Active:=true;
end;

procedure TMainForm.NoTaxationClick(Sender: TObject);
begin
TaxationEqual.Checked:=false;
TaxationAfter.Checked:=false;
TaxationInequal.Checked:=false;
TaxationExpenditure.Checked:=false;
NoTaxation.Checked:=true;
TaxRate.Visible:=false;
LambdaEdit.Visible:=false;
CLTaxRate.Visible:=false;
TaxRateChart.Visible:=false;
TaxRateIhChart.Visible:=false;
VaryOptions.Visible:=(Pagecontrol1.ActivePageIndex=1) and not Notaxation.Checked;
If StartPivotal1.Checked then
TaxationPlotCaptions('Pivotal Dynasty at t=0')
else TaxationPlotCaptions('Pivotal Dynasty at last step');


MinPivot.EditLabel.Caption:='Min pivotal Dynasty';
DihEdit.EditLabel.Caption:='d(pivotal)';
MinPivot.Text:=floattostr(1-strtofloat(aedit.Text));

CChart.Series[2].Active:=true;
CChart.Series[3].Active:=false;
CChartIh.Series[2].Active:=true;
CChartIh.Series[3].Active:=false;
end;

procedure TMainForm.AEditChange(Sender: TObject);
begin
   MinPivot.Text:=floattostr(1-strtofloat(AEdit.Text));
end;

procedure TMainForm.Off2Click(Sender: TObject);
begin
PreviousOn.Checked:=false;
Off2.Checked:=true;
end;

procedure TMainForm.PreviousOnClick(Sender: TObject);
begin
PreviousOn.Checked:=true;
Off2.Checked:=false;
end;

procedure TMainForm.VaryOptionsClick(Sender: TObject);
begin
Case VaryOptions.ItemIndex of
0:
begin
  if TaxationAfter.Checked then TaxationAfter.Click;
  if TaxationEqual.Checked then TaxationEqual.Click;
  if TaxationInequal.Checked then TaxationInequal.Click;
end;
1:
begin
  MinPivot.EditLabel.Caption:='Min pivotal Dynasty';
  DihEdit.EditLabel.Caption:='d(pivotal)';
  MinPivot.Text:=floattostr(1-strtofloat(aedit.Text));
end;
end;

Lambdaedit.Enabled:=TaxationAfter.Checked and (VaryOptions.ItemIndex=1);
TaxRate.Enabled:=(TaxationEqual.Checked or TaxationInequal.Checked) and (VaryOptions.ItemIndex=1);
CLTaxRate.Enabled:=TaxationInequal.Checked and (VaryOptions.ItemIndex=1);
end;


procedure TMainForm.StartPivotal1Click(Sender: TObject);
begin
StartPivotal1.Checked:=true;
LastPivotal1.Checked:=false;
TaxationPlotCaptions('Pivotal Dinasty at t=0');
end;

procedure TMainForm.LastPivotal1Click(Sender: TObject);
begin
StartPivotal1.Checked:=false;
LastPivotal1.Checked:=true;
TaxationPlotCaptions('Pivotal Dinasty at last step');
end;

procedure TMainForm.Off1Click(Sender: TObject);
begin
Off1.Checked:=true;
ExamOn.Checked:=false;
TaxMenu.Enabled:=true;
InitialDistribution1.Enabled:=true;
Productivityfunction1.Enabled:=true;
Manual1.enabled:=false;
Hdistrtype.Click;
ihedit.Visible:=true;
bribeedit.Visible:=false;
kedit.Visible:=true;
StupidHCEdit.Visible:=false;
CleverHCEdit.Visible:=false;
end;

procedure TMainForm.ExamOnClick(Sender: TObject);
begin
ExamOn.Checked:=true;
Off1.Checked:=false;
TaxMenu.Enabled:=false;
InitialDistribution1.Enabled:=false;
Productivityfunction1.Enabled:=false;
NoTaxation.Click;
CobbDuglas1.Click;
Manual1.enabled:=true;
Manual1.Click;
ihedit.Visible:=false;
bribeedit.Visible:=true;
kedit.Visible:=false;
StupidHCEdit.Visible:=true;
CleverHCEdit.Visible:=true;
end;

procedure TMainForm.Manual1Click(Sender: TObject);
begin
HDistrType.Checked:=false;
PowerFunction1.Checked:=false;
Manual1.Checked:=true;
end;

procedure TMainForm.CorruptionClick(Sender: TObject);
begin
bribeedit.Visible:=corruption.Checked;
end;

procedure TMainForm.ModelTypeChange(Sender: TObject);
begin
  Case ModelType.ItemIndex of
  0,2,3,4,5:
  begin
      InitialHC.ItemIndex:=0;
      InitialHC.Buttons[2].Enabled:=false;
      ihedit.Visible:=true;
      kedit.Visible:=true;
      StupidHCEdit.Visible:=false;
      CleverHCEdit.Visible:=false;
  end;
  1:
  begin
      InitialHC.ItemIndex:=2;
      InitialHC.Buttons[0].Enabled:=false;
      InitialHC.Buttons[1].Enabled:=false;
      InitialHC.Buttons[2].Enabled:=true;
      ihedit.Visible:=false;
      kedit.Visible:=false;
      StupidHCEdit.Visible:=true;
      CleverHCEdit.Visible:=true;
  end;
  end;

  Case ModelType.ItemIndex of
    0,2:
      bribeedit.Visible:=false;
    1,3,5:
      bribeedit.Visible:=true;
  end;

end;

end.
