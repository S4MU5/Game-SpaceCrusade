object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Space Crusade'
  ClientHeight = 625
  ClientWidth = 1025
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 200
    Top = 0
    Width = 625
    Height = 625
  end
  object Panel2: TPanel
    Left = 825
    Top = 0
    Width = 200
    Height = 625
    TabOrder = 1
    object Image2: TImage
      Left = 14
      Top = 16
      Width = 169
      Height = 169
    end
    object Label1: TLabel
      Left = 16
      Top = 191
      Width = 169
      Height = 13
    end
    object Button2: TButton
      Left = 6
      Top = 382
      Width = 187
      Height = 25
      Caption = #1054#1082#1086#1085#1095#1080#1090#1100' '#1089#1090#1088#1077#1083#1100#1073#1091
      TabOrder = 0
      OnClick = Button2Click
    end
    object Button4: TButton
      Left = 6
      Top = 561
      Width = 187
      Height = 25
      Caption = #1043#1083#1072#1074#1085#1086#1077' '#1084#1077#1085#1102
      TabOrder = 1
      OnClick = Button4Click
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 200
    Height = 625
    TabOrder = 0
  end
  object Button1: TButton
    Left = 831
    Top = 592
    Width = 186
    Height = 25
    Caption = #1042#1099#1093#1086#1076' '#1080#1079' '#1080#1075#1088#1099
    TabOrder = 2
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 8
    Top = 8
    Width = 185
    Height = 609
    Enabled = False
    TabOrder = 3
  end
  object Button3: TButton
    Left = 831
    Top = 351
    Width = 186
    Height = 25
    Caption = #1054#1082#1086#1085#1095#1080#1090#1100' '#1087#1077#1088#1077#1076#1074#1080#1078#1077#1085#1080#1077
    TabOrder = 4
    OnClick = Button3Click
  end
  object ApplicationEvents1: TApplicationEvents
    OnShortCut = ApplicationEvents1ShortCut
    Left = 984
    Top = 528
  end
  object Timer1: TTimer
    Interval = 100
    OnTimer = Timer1Timer
    Left = 920
    Top = 464
  end
  object Timer3: TTimer
    Enabled = False
    OnTimer = Timer3Timer
    Left = 952
    Top = 464
  end
  object Timer2: TTimer
    Enabled = False
    Interval = 100
    OnTimer = Timer2Timer
    Left = 984
    Top = 464
  end
  object Timer5: TTimer
    OnTimer = Timer5Timer
    Left = 984
    Top = 496
  end
end
