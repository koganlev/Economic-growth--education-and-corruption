object MainForm: TMainForm
  Left = 272
  Top = 124
  BorderStyle = bsSingle
  Caption = 'Borisov-Lambrecht model of human capital distribution emulator'
  ClientHeight = 646
  ClientWidth = 886
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 520
    Top = 117
    Width = 21
    Height = 13
    Caption = 'CES'
    Visible = False
  end
  object AEdit: TLabeledEdit
    Left = 568
    Top = 24
    Width = 50
    Height = 21
    EditLabel.Width = 13
    EditLabel.Height = 13
    EditLabel.Caption = 'a='
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clWindowText
    EditLabel.Font.Height = -11
    EditLabel.Font.Name = 'Symbol'
    EditLabel.Font.Style = []
    EditLabel.ParentFont = False
    LabelPosition = lpLeft
    TabOrder = 0
    Text = '0,8'
    OnChange = AEditChange
  end
  object KEdit: TLabeledEdit
    Left = 568
    Top = 48
    Width = 50
    Height = 21
    EditLabel.Width = 12
    EditLabel.Height = 13
    EditLabel.Caption = 'k='
    LabelPosition = lpLeft
    TabOrder = 1
    Text = '0,5'
  end
  object NEdit: TLabeledEdit
    Left = 568
    Top = 72
    Width = 50
    Height = 21
    EditLabel.Width = 12
    EditLabel.Height = 13
    EditLabel.Caption = 'n='
    LabelPosition = lpLeft
    TabOrder = 2
    Text = '1000'
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 489
    Height = 641
    ActivePage = TabSheet1
    TabOrder = 3
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = 'Single Experiment'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      object ProgressBar1: TProgressBar
        Left = 0
        Top = 596
        Width = 473
        Height = 17
        TabOrder = 0
      end
      object IhEdit: TLabeledEdit
        Left = 80
        Top = 8
        Width = 50
        Height = 21
        EditLabel.Width = 65
        EditLabel.Height = 13
        EditLabel.Caption = 'Pivot Dynasty'
        LabelPosition = lpLeft
        TabOrder = 1
        Text = '0,8'
      end
      object StepsEdit: TLabeledEdit
        Left = 176
        Top = 8
        Width = 50
        Height = 21
        EditLabel.Width = 31
        EditLabel.Height = 13
        EditLabel.Caption = 'steps='
        LabelPosition = lpLeft
        TabOrder = 2
        Text = '10'
      end
      object PageControl2: TPageControl
        Left = 4
        Top = 324
        Width = 473
        Height = 265
        ActivePage = TabSheet3
        TabOrder = 3
        object TabSheet3: TTabSheet
          Caption = 'Human Capital'
          object HChart: TChart
            Left = 8
            Top = -4
            Width = 457
            Height = 241
            BackWall.Brush.Color = clWhite
            BackWall.Brush.Style = bsClear
            Title.Text.Strings = (
              'Human caplital distribution on last step')
            LeftAxis.Automatic = False
            LeftAxis.AutomaticMinimum = False
            View3D = False
            TabOrder = 0
            object LineSeries6: TLineSeries
              Marks.ArrowLength = 8
              Marks.Visible = False
              SeriesColor = clRed
              Title = 'This experiment'
              Dark3D = False
              Pointer.InflateMargins = True
              Pointer.Style = psRectangle
              Pointer.Visible = False
              XValues.DateTime = False
              XValues.Name = 'X'
              XValues.Multiplier = 1.000000000000000000
              XValues.Order = loAscending
              YValues.DateTime = False
              YValues.Name = 'Y'
              YValues.Multiplier = 1.000000000000000000
              YValues.Order = loNone
              object AddTeeFunction6: TAddTeeFunction
              end
            end
            object Series7: TLineSeries
              Marks.ArrowLength = 8
              Marks.Visible = False
              SeriesColor = clGreen
              Title = 'Previous one'
              Pointer.InflateMargins = True
              Pointer.Style = psRectangle
              Pointer.Visible = False
              XValues.DateTime = False
              XValues.Name = 'X'
              XValues.Multiplier = 1.000000000000000000
              XValues.Order = loAscending
              YValues.DateTime = False
              YValues.Name = 'Y'
              YValues.Multiplier = 1.000000000000000000
              YValues.Order = loNone
            end
          end
        end
        object TabSheet4: TTabSheet
          Caption = 'Wage, Consumption, Expenditure'
          ImageIndex = 1
          object CChart: TChart
            Left = 8
            Top = -4
            Width = 457
            Height = 241
            BackWall.Brush.Color = clWhite
            BackWall.Brush.Style = bsClear
            Title.Text.Strings = (
              'Parameters of dynasties on last step')
            LeftAxis.Automatic = False
            LeftAxis.AutomaticMinimum = False
            View3D = False
            TabOrder = 0
            object Series3: TLineSeries
              Marks.ArrowLength = 8
              Marks.Visible = False
              SeriesColor = 8404992
              Title = 'Wage'
              Dark3D = False
              Pointer.HorizSize = 1
              Pointer.InflateMargins = True
              Pointer.Style = psRectangle
              Pointer.VertSize = 1
              Pointer.Visible = False
              XValues.DateTime = False
              XValues.Name = 'X'
              XValues.Multiplier = 1.000000000000000000
              XValues.Order = loAscending
              YValues.DateTime = False
              YValues.Name = 'Y'
              YValues.Multiplier = 1.000000000000000000
              YValues.Order = loNone
            end
            object LineSeries4: TLineSeries
              Marks.ArrowLength = 8
              Marks.Visible = False
              SeriesColor = clRed
              Title = 'Consumption'
              Dark3D = False
              Pointer.HorizSize = 1
              Pointer.InflateMargins = True
              Pointer.Style = psRectangle
              Pointer.VertSize = 1
              Pointer.Visible = False
              XValues.DateTime = False
              XValues.Name = 'X'
              XValues.Multiplier = 1.000000000000000000
              XValues.Order = loAscending
              YValues.DateTime = False
              YValues.Name = 'Y'
              YValues.Multiplier = 1.000000000000000000
              YValues.Order = loNone
              object AddTeeFunction4: TAddTeeFunction
              end
            end
            object Series2: TLineSeries
              Marks.ArrowLength = 8
              Marks.Visible = False
              SeriesColor = clGreen
              Title = 'Expenditure'
              Pointer.Brush.Color = clGreen
              Pointer.HorizSize = 1
              Pointer.InflateMargins = True
              Pointer.Style = psRectangle
              Pointer.VertSize = 1
              Pointer.Visible = False
              XValues.DateTime = False
              XValues.Name = 'X'
              XValues.Multiplier = 1.000000000000000000
              XValues.Order = loAscending
              YValues.DateTime = False
              YValues.Name = 'Y'
              YValues.Multiplier = 1.000000000000000000
              YValues.Order = loNone
            end
            object Series16: TLineSeries
              Marks.ArrowLength = 8
              Marks.Visible = False
              SeriesColor = 16744703
              Title = 'Taxes'
              Pointer.HorizSize = 1
              Pointer.InflateMargins = True
              Pointer.Style = psSmallDot
              Pointer.VertSize = 1
              Pointer.Visible = False
              XValues.DateTime = False
              XValues.Name = 'X'
              XValues.Multiplier = 1.000000000000000000
              XValues.Order = loAscending
              YValues.DateTime = False
              YValues.Name = 'Y'
              YValues.Multiplier = 1.000000000000000000
              YValues.Order = loNone
            end
          end
        end
      end
      object PageControl4: TPageControl
        Left = 4
        Top = 40
        Width = 473
        Height = 281
        ActivePage = TabSheet5
        TabOrder = 4
        object TabSheet5: TTabSheet
          Caption = 'Pivotal Dynasty'
          object ihChart: TChart
            Left = 9
            Top = 0
            Width = 448
            Height = 241
            BackWall.Brush.Color = clWhite
            BackWall.Brush.Style = bsClear
            Title.Text.Strings = (
              'Pivotal Dynasty (time)')
            LeftAxis.Automatic = False
            LeftAxis.AutomaticMaximum = False
            LeftAxis.AutomaticMinimum = False
            LeftAxis.Maximum = 1.000000000000000000
            View3D = False
            View3DWalls = False
            TabOrder = 0
            object Series1: TLineSeries
              Marks.ArrowLength = 8
              Marks.Visible = False
              SeriesColor = clRed
              Title = 'ihSeries'
              Dark3D = False
              Pointer.Dark3D = False
              Pointer.Draw3D = False
              Pointer.InflateMargins = True
              Pointer.Style = psRectangle
              Pointer.Visible = False
              XValues.DateTime = False
              XValues.Name = 'X'
              XValues.Multiplier = 1.000000000000000000
              XValues.Order = loAscending
              YValues.DateTime = False
              YValues.Name = 'Y'
              YValues.Multiplier = 1.000000000000000000
              YValues.Order = loNone
              object TeeFunction1: TAddTeeFunction
              end
            end
            object Series8: TLineSeries
              Marks.ArrowLength = 8
              Marks.Visible = False
              SeriesColor = clGreen
              Pointer.InflateMargins = True
              Pointer.Style = psRectangle
              Pointer.Visible = False
              XValues.DateTime = False
              XValues.Name = 'X'
              XValues.Multiplier = 1.000000000000000000
              XValues.Order = loAscending
              YValues.DateTime = False
              YValues.Name = 'Y'
              YValues.Multiplier = 1.000000000000000000
              YValues.Order = loNone
            end
          end
        end
        object TabSheet9: TTabSheet
          Caption = 'Growth'
          ImageIndex = 1
          object YChart: TChart
            Left = 8
            Top = 0
            Width = 457
            Height = 241
            BackWall.Brush.Color = clWhite
            BackWall.Brush.Style = bsClear
            Title.Text.Strings = (
              'GDP growth (time)')
            LeftAxis.Automatic = False
            LeftAxis.AutomaticMinimum = False
            RightAxis.Automatic = False
            RightAxis.AutomaticMaximum = False
            RightAxis.AutomaticMinimum = False
            RightAxis.Maximum = 347.000000000000000000
            View3D = False
            TabOrder = 0
            object LineSeries1: TLineSeries
              Marks.ArrowLength = 8
              Marks.Visible = False
              SeriesColor = clRed
              Title = 'Growth'
              Dark3D = False
              Pointer.InflateMargins = True
              Pointer.Style = psRectangle
              Pointer.Visible = False
              XValues.DateTime = False
              XValues.Name = 'X'
              XValues.Multiplier = 1.000000000000000000
              XValues.Order = loAscending
              YValues.DateTime = False
              YValues.Name = 'Y'
              YValues.Multiplier = 1.000000000000000000
              YValues.Order = loNone
              object AddTeeFunction1: TAddTeeFunction
              end
            end
            object Series9: TLineSeries
              Marks.ArrowLength = 8
              Marks.Visible = False
              SeriesColor = clGreen
              Pointer.InflateMargins = True
              Pointer.Style = psRectangle
              Pointer.Visible = False
              XValues.DateTime = False
              XValues.Name = 'X'
              XValues.Multiplier = 1.000000000000000000
              XValues.Order = loAscending
              YValues.DateTime = False
              YValues.Name = 'Y'
              YValues.Multiplier = 1.000000000000000000
              YValues.Order = loNone
            end
          end
        end
        object TabSheet12: TTabSheet
          Caption = 'Skill Premium'
          ImageIndex = 2
          object SPChart: TChart
            Left = 8
            Top = 8
            Width = 457
            Height = 241
            BackWall.Brush.Color = clWhite
            BackWall.Brush.Style = bsClear
            Title.Text.Strings = (
              'Skill Premium (time)')
            LeftAxis.Automatic = False
            LeftAxis.AutomaticMinimum = False
            RightAxis.Automatic = False
            RightAxis.AutomaticMaximum = False
            RightAxis.AutomaticMinimum = False
            RightAxis.Maximum = 347.000000000000000000
            View3D = False
            TabOrder = 0
            object LineSeries10: TLineSeries
              Marks.ArrowLength = 8
              Marks.Visible = False
              SeriesColor = clRed
              Title = 'Skill Premium (time)'
              Pointer.InflateMargins = True
              Pointer.Style = psRectangle
              Pointer.Visible = False
              XValues.DateTime = False
              XValues.Name = 'X'
              XValues.Multiplier = 1.000000000000000000
              XValues.Order = loAscending
              YValues.DateTime = False
              YValues.Name = 'Y'
              YValues.Multiplier = 1.000000000000000000
              YValues.Order = loNone
            end
            object Series10: TLineSeries
              Marks.ArrowLength = 8
              Marks.Visible = False
              SeriesColor = clGreen
              Pointer.InflateMargins = True
              Pointer.Style = psRectangle
              Pointer.Visible = False
              XValues.DateTime = False
              XValues.Name = 'X'
              XValues.Multiplier = 1.000000000000000000
              XValues.Order = loAscending
              YValues.DateTime = False
              YValues.Name = 'Y'
              YValues.Multiplier = 1.000000000000000000
              YValues.Order = loNone
            end
          end
        end
        object TabSheet13: TTabSheet
          Caption = 'GDP'
          ImageIndex = 3
          object GDPChart: TChart
            Left = 8
            Top = 8
            Width = 457
            Height = 241
            BackWall.Brush.Color = clWhite
            BackWall.Brush.Style = bsClear
            Title.Text.Strings = (
              'GDP (time)')
            LeftAxis.Automatic = False
            LeftAxis.AutomaticMinimum = False
            RightAxis.Automatic = False
            RightAxis.AutomaticMaximum = False
            RightAxis.AutomaticMinimum = False
            RightAxis.Maximum = 347.000000000000000000
            View3D = False
            TabOrder = 0
            object LineSeries9: TLineSeries
              Marks.ArrowLength = 8
              Marks.Visible = False
              SeriesColor = clRed
              Title = 'GDP (time)'
              Pointer.InflateMargins = True
              Pointer.Style = psRectangle
              Pointer.Visible = False
              XValues.DateTime = False
              XValues.Name = 'X'
              XValues.Multiplier = 1.000000000000000000
              XValues.Order = loAscending
              YValues.DateTime = False
              YValues.Name = 'Y'
              YValues.Multiplier = 1.000000000000000000
              YValues.Order = loNone
            end
            object LineSeries11: TLineSeries
              Marks.ArrowLength = 8
              Marks.Visible = False
              SeriesColor = clGreen
              Pointer.InflateMargins = True
              Pointer.Style = psRectangle
              Pointer.Visible = False
              XValues.DateTime = False
              XValues.Name = 'X'
              XValues.Multiplier = 1.000000000000000000
              XValues.Order = loAscending
              YValues.DateTime = False
              YValues.Name = 'Y'
              YValues.Multiplier = 1.000000000000000000
              YValues.Order = loNone
            end
          end
        end
        object TabSheet14: TTabSheet
          Caption = 'Tax Rate'
          ImageIndex = 4
          object WarnTax1: TLabel
            Left = 80
            Top = 104
            Width = 324
            Height = 29
            Caption = 'Only enabled in taxation mode'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -25
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object TaxRateChart: TChart
            Left = 8
            Top = 8
            Width = 457
            Height = 241
            BackWall.Brush.Color = clWhite
            BackWall.Brush.Style = bsClear
            Title.Text.Strings = (
              'Tax rate (time)')
            LeftAxis.Automatic = False
            LeftAxis.AutomaticMinimum = False
            RightAxis.Automatic = False
            RightAxis.AutomaticMaximum = False
            RightAxis.AutomaticMinimum = False
            RightAxis.Maximum = 347.000000000000000000
            View3D = False
            TabOrder = 0
            Visible = False
            object LineSeries12: TLineSeries
              Marks.ArrowLength = 8
              Marks.Visible = False
              SeriesColor = clRed
              Title = 'Tax rate (time)'
              Pointer.InflateMargins = True
              Pointer.Style = psRectangle
              Pointer.Visible = False
              XValues.DateTime = False
              XValues.Name = 'X'
              XValues.Multiplier = 1.000000000000000000
              XValues.Order = loAscending
              YValues.DateTime = False
              YValues.Name = 'Y'
              YValues.Multiplier = 1.000000000000000000
              YValues.Order = loNone
            end
            object LineSeries13: TLineSeries
              Marks.ArrowLength = 8
              Marks.Visible = False
              SeriesColor = clGreen
              Pointer.InflateMargins = True
              Pointer.Style = psRectangle
              Pointer.Visible = False
              XValues.DateTime = False
              XValues.Name = 'X'
              XValues.Multiplier = 1.000000000000000000
              XValues.Order = loAscending
              YValues.DateTime = False
              YValues.Name = 'Y'
              YValues.Multiplier = 1.000000000000000000
              YValues.Order = loNone
            end
          end
        end
      end
      object StupidHCEdit: TLabeledEdit
        Left = 288
        Top = 8
        Width = 50
        Height = 21
        EditLabel.Width = 48
        EditLabel.Height = 13
        EditLabel.Caption = 'Stupid HC'
        LabelPosition = lpLeft
        TabOrder = 5
        Text = '1'
        Visible = False
      end
      object CleverHCEdit: TLabeledEdit
        Left = 392
        Top = 8
        Width = 50
        Height = 21
        EditLabel.Width = 48
        EditLabel.Height = 13
        EditLabel.Caption = 'Clever HC'
        LabelPosition = lpLeft
        TabOrder = 6
        Text = '2'
        Visible = False
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Multiple Experiments'
      ImageIndex = 1
      object dihEdit: TLabeledEdit
        Left = 136
        Top = 8
        Width = 50
        Height = 21
        EditLabel.Width = 49
        EditLabel.Height = 13
        EditLabel.Caption = 'd(pivotal)='
        LabelPosition = lpLeft
        TabOrder = 0
        Text = '0,1'
      end
      object distEdit: TLabeledEdit
        Left = 424
        Top = 8
        Width = 50
        Height = 21
        EditLabel.Width = 31
        EditLabel.Height = 13
        EditLabel.Caption = 'steps='
        LabelPosition = lpLeft
        TabOrder = 1
        Text = '50'
      end
      object ProgressBar2: TProgressBar
        Left = 0
        Top = 596
        Width = 473
        Height = 17
        TabOrder = 2
      end
      object PageControl3: TPageControl
        Left = 4
        Top = 324
        Width = 473
        Height = 265
        ActivePage = TabSheet7
        TabOrder = 3
        object TabSheet6: TTabSheet
          Caption = 'Human Capital'
          object HChartIh: TChart
            Left = 8
            Top = -4
            Width = 457
            Height = 241
            BackWall.Brush.Color = clWhite
            BackWall.Brush.Style = bsClear
            Title.Text.Strings = (
              'Human caplital of i=1 (Pivotal Dynasty at t=0)')
            View3D = False
            TabOrder = 0
            object LineSeries7: TLineSeries
              Marks.ArrowLength = 8
              Marks.Visible = False
              SeriesColor = clRed
              Title = 'YSeries'
              Dark3D = False
              Pointer.InflateMargins = True
              Pointer.Style = psRectangle
              Pointer.Visible = False
              XValues.DateTime = False
              XValues.Name = 'X'
              XValues.Multiplier = 1.000000000000000000
              XValues.Order = loAscending
              YValues.DateTime = False
              YValues.Name = 'Y'
              YValues.Multiplier = 1.000000000000000000
              YValues.Order = loNone
            end
            object Series14: TLineSeries
              Marks.ArrowLength = 8
              Marks.Visible = False
              SeriesColor = clGreen
              Pointer.InflateMargins = True
              Pointer.Style = psRectangle
              Pointer.Visible = False
              XValues.DateTime = False
              XValues.Name = 'X'
              XValues.Multiplier = 1.000000000000000000
              XValues.Order = loAscending
              YValues.DateTime = False
              YValues.Name = 'Y'
              YValues.Multiplier = 1.000000000000000000
              YValues.Order = loNone
            end
          end
        end
        object TabSheet7: TTabSheet
          Caption = 'Wage, Consumption, Expenditure'
          ImageIndex = 1
          object CChartIh: TChart
            Left = 8
            Top = -4
            Width = 457
            Height = 241
            BackWall.Brush.Color = clWhite
            BackWall.Brush.Style = bsClear
            Title.Text.Strings = (
              'Parameters of i=1 (Pivotal Dynasty at t=0)')
            View3D = False
            TabOrder = 0
            object LineSeries8: TPointSeries
              Marks.ArrowLength = 8
              Marks.Visible = False
              SeriesColor = clRed
              Title = 'Wage'
              Pointer.InflateMargins = True
              Pointer.Style = psRectangle
              Pointer.Visible = True
              XValues.DateTime = False
              XValues.Name = 'X'
              XValues.Multiplier = 1.000000000000000000
              XValues.Order = loAscending
              YValues.DateTime = False
              YValues.Name = 'Y'
              YValues.Multiplier = 1.000000000000000000
              YValues.Order = loNone
              object AddTeeFunction8: TAddTeeFunction
              end
            end
            object Series4: TPointSeries
              Marks.ArrowLength = 8
              Marks.Visible = False
              SeriesColor = clGreen
              Title = 'Consumption'
              Pointer.InflateMargins = True
              Pointer.Style = psRectangle
              Pointer.Visible = True
              XValues.DateTime = False
              XValues.Name = 'X'
              XValues.Multiplier = 1.000000000000000000
              XValues.Order = loAscending
              YValues.DateTime = False
              YValues.Name = 'Y'
              YValues.Multiplier = 1.000000000000000000
              YValues.Order = loNone
            end
            object Series6: TPointSeries
              Marks.ArrowLength = 8
              Marks.Visible = False
              SeriesColor = 10485760
              Title = 'Expenditure'
              Pointer.InflateMargins = True
              Pointer.Style = psRectangle
              Pointer.Visible = True
              XValues.DateTime = False
              XValues.Name = 'X'
              XValues.Multiplier = 1.000000000000000000
              XValues.Order = loAscending
              YValues.DateTime = False
              YValues.Name = 'Y'
              YValues.Multiplier = 1.000000000000000000
              YValues.Order = loNone
            end
            object Series15: TPointSeries
              Marks.ArrowLength = 8
              Marks.Visible = False
              SeriesColor = 16744703
              Title = 'Taxes'
              Pointer.InflateMargins = True
              Pointer.Style = psRectangle
              Pointer.Visible = True
              XValues.DateTime = False
              XValues.Name = 'X'
              XValues.Multiplier = 1.000000000000000000
              XValues.Order = loAscending
              YValues.DateTime = False
              YValues.Name = 'Y'
              YValues.Multiplier = 1.000000000000000000
              YValues.Order = loNone
            end
          end
        end
      end
      object PageControl5: TPageControl
        Left = 4
        Top = 40
        Width = 473
        Height = 281
        ActivePage = TabSheet10
        TabOrder = 4
        object TabSheet10: TTabSheet
          Caption = 'Pivotal Dynasty'
          object IhIhChart: TChart
            Left = 0
            Top = -4
            Width = 465
            Height = 257
            BackWall.Brush.Color = clWhite
            BackWall.Brush.Style = bsClear
            Title.Text.Strings = (
              'Pivotal Dynasty (Pivotal Dynasty at t=0)')
            BottomAxis.Automatic = False
            BottomAxis.AutomaticMaximum = False
            BottomAxis.AutomaticMinimum = False
            BottomAxis.Maximum = 1.000000000000000000
            LeftAxis.Automatic = False
            LeftAxis.AutomaticMaximum = False
            LeftAxis.AutomaticMinimum = False
            LeftAxis.Maximum = 1.000000000000000000
            View3D = False
            TabOrder = 0
            object LineSeries3: TLineSeries
              Marks.ArrowLength = 8
              Marks.Visible = False
              SeriesColor = clRed
              Title = 'IhIhSeries'
              Dark3D = False
              Pointer.InflateMargins = True
              Pointer.Style = psRectangle
              Pointer.Visible = False
              XValues.DateTime = False
              XValues.Name = 'X'
              XValues.Multiplier = 1.000000000000000000
              XValues.Order = loAscending
              YValues.DateTime = False
              YValues.Name = 'Y'
              YValues.Multiplier = 1.000000000000000000
              YValues.Order = loNone
              object AddTeeFunction3: TAddTeeFunction
              end
            end
            object Series11: TLineSeries
              Marks.ArrowLength = 8
              Marks.Visible = False
              SeriesColor = clGreen
              Pointer.InflateMargins = True
              Pointer.Style = psRectangle
              Pointer.Visible = False
              XValues.DateTime = False
              XValues.Name = 'X'
              XValues.Multiplier = 1.000000000000000000
              XValues.Order = loAscending
              YValues.DateTime = False
              YValues.Name = 'Y'
              YValues.Multiplier = 1.000000000000000000
              YValues.Order = loNone
            end
          end
        end
        object TabSheet11: TTabSheet
          Caption = 'Growth'
          ImageIndex = 1
          object YiChart: TChart
            Left = 0
            Top = 0
            Width = 465
            Height = 249
            BackWall.Brush.Color = clWhite
            BackWall.Brush.Style = bsClear
            Title.Text.Strings = (
              'GDP growth (Pivotal Dynasty at t=0)')
            BottomAxis.Automatic = False
            BottomAxis.AutomaticMaximum = False
            BottomAxis.AutomaticMinimum = False
            BottomAxis.Maximum = 1.000000000000000000
            View3D = False
            TabOrder = 0
            object LineSeries2: TLineSeries
              Marks.ArrowLength = 8
              Marks.Visible = False
              SeriesColor = clRed
              Title = 'YiSeries'
              Dark3D = False
              Pointer.InflateMargins = True
              Pointer.Style = psRectangle
              Pointer.Visible = False
              XValues.DateTime = False
              XValues.Name = 'X'
              XValues.Multiplier = 1.000000000000000000
              XValues.Order = loAscending
              YValues.DateTime = False
              YValues.Name = 'Y'
              YValues.Multiplier = 1.000000000000000000
              YValues.Order = loNone
              object AddTeeFunction2: TAddTeeFunction
              end
            end
            object Series12: TLineSeries
              Marks.ArrowLength = 8
              Marks.Visible = False
              SeriesColor = clGreen
              Pointer.InflateMargins = True
              Pointer.Style = psRectangle
              Pointer.Visible = False
              XValues.DateTime = False
              XValues.Name = 'X'
              XValues.Multiplier = 1.000000000000000000
              XValues.Order = loAscending
              YValues.DateTime = False
              YValues.Name = 'Y'
              YValues.Multiplier = 1.000000000000000000
              YValues.Order = loNone
            end
          end
        end
        object TabSheet8: TTabSheet
          Caption = 'Skill Premium'
          ImageIndex = 2
          object SPIhChart: TChart
            Left = 0
            Top = 0
            Width = 465
            Height = 249
            BackWall.Brush.Color = clWhite
            BackWall.Brush.Style = bsClear
            Title.Text.Strings = (
              'Skill Premium (Pivotal Dynasty at t=0)')
            BottomAxis.Automatic = False
            BottomAxis.AutomaticMaximum = False
            BottomAxis.AutomaticMinimum = False
            BottomAxis.Maximum = 1.000000000000000000
            LeftAxis.Automatic = False
            LeftAxis.AutomaticMinimum = False
            View3D = False
            TabOrder = 0
            object LineSeries5: TLineSeries
              Marks.ArrowLength = 8
              Marks.Visible = False
              SeriesColor = clRed
              Title = 'YiSeries'
              Dark3D = False
              Pointer.InflateMargins = True
              Pointer.Style = psRectangle
              Pointer.Visible = False
              XValues.DateTime = False
              XValues.Name = 'X'
              XValues.Multiplier = 1.000000000000000000
              XValues.Order = loAscending
              YValues.DateTime = False
              YValues.Name = 'Y'
              YValues.Multiplier = 1.000000000000000000
              YValues.Order = loNone
              object AddTeeFunction5: TAddTeeFunction
              end
            end
            object Series13: TLineSeries
              Marks.ArrowLength = 8
              Marks.Visible = False
              SeriesColor = clGreen
              Pointer.InflateMargins = True
              Pointer.Style = psRectangle
              Pointer.Visible = False
              XValues.DateTime = False
              XValues.Name = 'X'
              XValues.Multiplier = 1.000000000000000000
              XValues.Order = loAscending
              YValues.DateTime = False
              YValues.Name = 'Y'
              YValues.Multiplier = 1.000000000000000000
              YValues.Order = loNone
            end
          end
        end
        object TabSheet16: TTabSheet
          Caption = 'GDP'
          ImageIndex = 4
          object GDPIhChart: TChart
            Left = 0
            Top = 0
            Width = 465
            Height = 249
            BackWall.Brush.Color = clWhite
            BackWall.Brush.Style = bsClear
            Title.Text.Strings = (
              'GDP (Pivotal Dynasty at t=0)')
            BottomAxis.Automatic = False
            BottomAxis.AutomaticMaximum = False
            BottomAxis.AutomaticMinimum = False
            BottomAxis.Maximum = 1.000000000000000000
            LeftAxis.Automatic = False
            LeftAxis.AutomaticMinimum = False
            View3D = False
            TabOrder = 0
            object LineSeries16: TLineSeries
              Marks.ArrowLength = 8
              Marks.Visible = False
              SeriesColor = clRed
              Title = 'YiSeries'
              Dark3D = False
              Pointer.InflateMargins = True
              Pointer.Style = psRectangle
              Pointer.Visible = False
              XValues.DateTime = False
              XValues.Name = 'X'
              XValues.Multiplier = 1.000000000000000000
              XValues.Order = loAscending
              YValues.DateTime = False
              YValues.Name = 'Y'
              YValues.Multiplier = 1.000000000000000000
              YValues.Order = loNone
              object AddTeeFunction10: TAddTeeFunction
              end
            end
            object LineSeries17: TLineSeries
              Marks.ArrowLength = 8
              Marks.Visible = False
              SeriesColor = clGreen
              Pointer.InflateMargins = True
              Pointer.Style = psRectangle
              Pointer.Visible = False
              XValues.DateTime = False
              XValues.Name = 'X'
              XValues.Multiplier = 1.000000000000000000
              XValues.Order = loAscending
              YValues.DateTime = False
              YValues.Name = 'Y'
              YValues.Multiplier = 1.000000000000000000
              YValues.Order = loNone
            end
          end
        end
        object TabSheet15: TTabSheet
          Caption = 'Tax Rate'
          ImageIndex = 3
          object warntax2: TLabel
            Left = 80
            Top = 104
            Width = 324
            Height = 29
            Caption = 'Only enabled in taxation mode'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -25
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object TaxRateIhChart: TChart
            Left = 0
            Top = 0
            Width = 465
            Height = 249
            BackWall.Brush.Color = clWhite
            BackWall.Brush.Style = bsClear
            Title.Text.Strings = (
              'Tax Rate (Lambda)')
            BottomAxis.Automatic = False
            BottomAxis.AutomaticMaximum = False
            BottomAxis.AutomaticMinimum = False
            BottomAxis.Maximum = 1.000000000000000000
            LeftAxis.Automatic = False
            LeftAxis.AutomaticMinimum = False
            MaxPointsPerPage = 1
            View3D = False
            TabOrder = 0
            Visible = False
            object LineSeries14: TLineSeries
              Marks.ArrowLength = 8
              Marks.Visible = False
              SeriesColor = clRed
              Title = 'Tax rate'
              Dark3D = False
              Pointer.InflateMargins = True
              Pointer.Style = psRectangle
              Pointer.Visible = False
              XValues.DateTime = False
              XValues.Name = 'X'
              XValues.Multiplier = 1.000000000000000000
              XValues.Order = loAscending
              YValues.DateTime = False
              YValues.Name = 'Y'
              YValues.Multiplier = 1.000000000000000000
              YValues.Order = loNone
              object AddTeeFunction9: TAddTeeFunction
              end
            end
            object LineSeries15: TLineSeries
              Marks.ArrowLength = 8
              Marks.Visible = False
              SeriesColor = clGreen
              Pointer.InflateMargins = True
              Pointer.Style = psRectangle
              Pointer.Visible = False
              XValues.DateTime = False
              XValues.Name = 'X'
              XValues.Multiplier = 1.000000000000000000
              XValues.Order = loAscending
              YValues.DateTime = False
              YValues.Name = 'Y'
              YValues.Multiplier = 1.000000000000000000
              YValues.Order = loNone
            end
          end
        end
      end
      object MinPivot: TLabeledEdit
        Left = 320
        Top = 8
        Width = 50
        Height = 21
        EditLabel.Width = 101
        EditLabel.Height = 13
        EditLabel.Caption = 'Min pivotal Dynasty ='
        LabelPosition = lpLeft
        TabOrder = 5
        Text = '0,2'
      end
    end
  end
  object GoBtn: TButton
    Left = 504
    Top = 352
    Width = 105
    Height = 45
    Caption = 'GO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = GoBtnClick
  end
  object CloseBtn: TButton
    Left = 512
    Top = 592
    Width = 105
    Height = 45
    Caption = 'CLOSE'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = CloseBtnClick
  end
  object GoplsStepBtn: TButton
    Left = 504
    Top = 408
    Width = 105
    Height = 25
    Caption = 'Go + 1step'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = GoplsStepBtnClick
  end
  object SaveExperiment: TCheckBox
    Left = 504
    Top = 472
    Width = 121
    Height = 17
    Caption = 'Save Experiment'
    TabOrder = 7
    OnClick = SaveExperimentClick
  end
  object SaveEveryStep: TCheckBox
    Left = 504
    Top = 496
    Width = 113
    Height = 17
    Caption = 'Save Every Step'
    TabOrder = 8
  end
  object StopBtn: TButton
    Left = 504
    Top = 440
    Width = 105
    Height = 25
    Caption = 'Stop'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    Visible = False
    OnClick = StopBtnClick
  end
  object REdit: TLabeledEdit
    Left = 568
    Top = 112
    Width = 50
    Height = 21
    EditLabel.Width = 19
    EditLabel.Height = 13
    EditLabel.Caption = 'r = '
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clWindowText
    EditLabel.Font.Height = -11
    EditLabel.Font.Name = 'Symbol'
    EditLabel.Font.Style = []
    EditLabel.ParentFont = False
    LabelPosition = lpLeft
    TabOrder = 10
    Text = '-20'
    Visible = False
  end
  object TaxRate: TLabeledEdit
    Left = 568
    Top = 136
    Width = 50
    Height = 21
    EditLabel.Width = 58
    EditLabel.Height = 13
    EditLabel.Caption = ' Tax rate = '
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clWindowText
    EditLabel.Font.Height = -11
    EditLabel.Font.Name = 'Tahoma'
    EditLabel.Font.Style = []
    EditLabel.ParentFont = False
    LabelPosition = lpLeft
    TabOrder = 11
    Text = '0,2'
    Visible = False
  end
  object LambdaEdit: TLabeledEdit
    Left = 568
    Top = 184
    Width = 50
    Height = 21
    EditLabel.Width = 17
    EditLabel.Height = 13
    EditLabel.Caption = 'l = '
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clWindowText
    EditLabel.Font.Height = -11
    EditLabel.Font.Name = 'Symbol'
    EditLabel.Font.Style = []
    EditLabel.ParentFont = False
    LabelPosition = lpLeft
    TabOrder = 12
    Text = '0,2'
    Visible = False
  end
  object CLTaxRate: TLabeledEdit
    Left = 568
    Top = 160
    Width = 50
    Height = 21
    EditLabel.Width = 73
    EditLabel.Height = 13
    EditLabel.Caption = ' CL Tax rate = '
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clWindowText
    EditLabel.Font.Height = -11
    EditLabel.Font.Name = 'Tahoma'
    EditLabel.Font.Style = []
    EditLabel.ParentFont = False
    LabelPosition = lpLeft
    TabOrder = 13
    Text = '0,1'
    Visible = False
  end
  object VaryOptions: TRadioGroup
    Left = 496
    Top = 208
    Width = 129
    Height = 65
    Caption = 'Options'
    ItemIndex = 0
    Items.Strings = (
      'Vary lambda'
      'Vary pivoral')
    TabOrder = 14
    Visible = False
    OnClick = VaryOptionsClick
  end
  object Corruption: TCheckBox
    Left = 640
    Top = 224
    Width = 121
    Height = 17
    Caption = 'Corruption'
    Checked = True
    State = cbChecked
    TabOrder = 15
    OnClick = CorruptionClick
  end
  object ModelType: TComboBox
    Left = 640
    Top = 24
    Width = 225
    Height = 21
    ItemHeight = 13
    ItemIndex = 3
    TabOrder = 16
    Text = #1052#1086#1103' '#1084#1086#1076#1080#1092#1080#1082#1072#1094#1080#1103' '#1084#1086#1076#1077#1083#1080' '#1041#1086#1088#1080#1089#1086#1074#1072' '#1089' '#1082#1086#1088#1088#1091#1087#1094#1080#1077#1081
    OnChange = ModelTypeChange
    Items.Strings = (
      #1052#1086#1076#1077#1083#1100' '#1041#1086#1088#1080#1089#1086#1074#1072' (1)'
      #1052#1086#1103' '#1091#1087#1088#1086#1097#1077#1085#1085#1072#1103' '#1084#1086#1076#1077#1083#1100' '#1089' '#1082#1086#1088#1088#1091#1087#1094#1080#1077#1081
      #1052#1086#1103' '#1084#1086#1076#1080#1092#1080#1082#1072#1094#1080#1103' '#1084#1086#1076#1077#1083#1080' '#1041#1086#1088#1080#1089#1086#1074#1072
      #1052#1086#1103' '#1084#1086#1076#1080#1092#1080#1082#1072#1094#1080#1103' '#1084#1086#1076#1077#1083#1080' '#1041#1086#1088#1080#1089#1086#1074#1072' '#1089' '#1082#1086#1088#1088#1091#1087#1094#1080#1077#1081)
  end
  object InitialHC: TRadioGroup
    Left = 640
    Top = 56
    Width = 177
    Height = 89
    Caption = #1053#1072#1095#1072#1083#1100#1085#1086#1077' '#1088#1072#1089#1087#1088#1077#1076#1077#1083#1077#1085#1080#1077
    ItemIndex = 0
    Items.Strings = (
      #1051#1080#1085#1077#1081#1085#1086#1077
      #1057#1090#1077#1087#1077#1085#1085#1086#1077
      #1040#1074#1090#1086#1084#1072#1090#1080#1095#1077#1089#1082#1086#1077)
    TabOrder = 17
  end
  object PFType: TRadioGroup
    Left = 640
    Top = 152
    Width = 177
    Height = 65
    Caption = #1055#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1077#1085#1085#1072#1103' '#1092#1091#1085#1082#1094#1080#1103
    ItemIndex = 0
    Items.Strings = (
      #1050#1086#1073#1073'-'#1044#1091#1075#1083#1072#1089
      'CES')
    TabOrder = 18
  end
  object BribeEdit: TLabeledEdit
    Left = 696
    Top = 248
    Width = 50
    Height = 21
    EditLabel.Width = 53
    EditLabel.Height = 13
    EditLabel.Caption = 'Bribe to wL'
    LabelPosition = lpLeft
    TabOrder = 19
    Text = '0,5'
  end
  object ExamPriceEdit: TLabeledEdit
    Left = 696
    Top = 272
    Width = 50
    Height = 21
    EditLabel.Width = 53
    EditLabel.Height = 13
    EditLabel.Caption = 'Bribe to wL'
    LabelPosition = lpLeft
    TabOrder = 20
    Text = '0,1'
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '.txt'
    Filter = 'CSV|*.csv|Text File|*.txt|All Files|*.*'
    InitialDir = '.'
    Left = 656
    Top = 376
  end
  object MainMenu1: TMainMenu
    Left = 512
    Top = 16
    object File1: TMenuItem
      AutoHotkeys = maAutomatic
      Caption = 'File'
      object Go1: TMenuItem
        Caption = 'Go'
        OnClick = Go1Click
      end
      object Exit1: TMenuItem
        Caption = 'Exit'
        OnClick = Exit1Click
      end
    end
    object Log1: TMenuItem
      Caption = 'Log'
      object ClearLog1: TMenuItem
        Caption = 'ClearLog'
        OnClick = ClearLog1Click
      end
    end
    object View1: TMenuItem
      Caption = 'View'
      object Showpreviousstep1: TMenuItem
        Caption = 'Show previous step'
        object PreviousOn: TMenuItem
          Caption = 'On'
          OnClick = PreviousOnClick
        end
        object Off2: TMenuItem
          Caption = 'Off'
          Checked = True
          OnClick = Off2Click
        end
      end
      object Multiplebase1: TMenuItem
        Caption = 'Multiple base'
        object StartPivotal1: TMenuItem
          Caption = 'Start Pivotal'
          Checked = True
          OnClick = StartPivotal1Click
        end
        object LastPivotal1: TMenuItem
          Caption = 'Last Pivotal'
          OnClick = LastPivotal1Click
        end
      end
    end
    object Setting1: TMenuItem
      Caption = 'Settings'
      object Productivityfunction1: TMenuItem
        Caption = 'Productivity function'
        object CobbDuglas1: TMenuItem
          Caption = 'Cobb-Duglas'
          Checked = True
          OnClick = CobbDuglas1Click
        end
        object CES1: TMenuItem
          Caption = 'CES'
          OnClick = CES1Click
        end
      end
      object TaxMenu: TMenuItem
        Caption = 'Taxation'
        object TaxationAfter: TMenuItem
          Caption = 'Subsidize if study and collect after'
          OnClick = TaxationAfterClick
        end
        object TaxationEqual: TMenuItem
          Caption = 'Collect equal and subsidize children'
          OnClick = TaxationEqualClick
        end
        object TaxationInequal: TMenuItem
          Caption = 'Collect inequal and subsidize children'
          OnClick = TaxationInequalClick
        end
        object TaxationExpenditure: TMenuItem
          Caption = #1058#1072#1093#1072'tion + Expenditure'
          OnClick = TaxationExpenditureClick
        end
        object NoTaxation: TMenuItem
          Caption = 'No Taxation'
          Checked = True
          OnClick = NoTaxationClick
        end
      end
      object InitialDistribution1: TMenuItem
        Caption = 'Initial Distribution'
        object HDistrType: TMenuItem
          Caption = 'Linear function'
          Checked = True
          OnClick = HDistrTypeClick
        end
        object Powerfunction1: TMenuItem
          Caption = 'Power function'
          OnClick = Powerfunction1Click
        end
        object Manual1: TMenuItem
          Caption = 'Manual'
          Enabled = False
          OnClick = Manual1Click
        end
      end
      object Exam1: TMenuItem
        Caption = 'Exam'
        object ExamOn: TMenuItem
          Caption = 'On'
          OnClick = ExamOnClick
        end
        object Off1: TMenuItem
          Caption = 'Off'
          Checked = True
          OnClick = Off1Click
        end
      end
    end
    object Series5: TMenuItem
      Caption = 'Series'
      object RunAll1: TMenuItem
        Caption = 'Run'
        OnClick = RunAll1Click
      end
      object div011: TMenuItem
        Caption = 'div=0,1'
        Checked = True
        OnClick = div011Click
      end
      object div0051: TMenuItem
        Caption = 'div=0,05'
        OnClick = div0051Click
      end
    end
    object About1: TMenuItem
      Caption = 'Help'
      object About2: TMenuItem
        Caption = 'About'
        OnClick = About2Click
      end
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 1
    OnTimer = Timer1Timer
    Left = 560
    Top = 352
  end
end
