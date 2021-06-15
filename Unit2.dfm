object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Main menu'
  ClientHeight = 531
  ClientWidth = 635
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
  object Button1: TButton
    Left = 8
    Top = 184
    Width = 209
    Height = 25
    Caption = #1042#1077#1088#1085#1091#1090#1100#1089#1103' '#1074' '#1084#1072#1090#1095
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 8
    Top = 240
    Width = 209
    Height = 25
    Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 8
    Top = 304
    Width = 209
    Height = 25
    Caption = #1055#1088#1072#1074#1080#1083#1072' '#1080#1075#1088#1099
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 8
    Top = 498
    Width = 209
    Height = 25
    Caption = #1042#1099#1093#1086#1076' '#1080#1079' '#1080#1075#1088#1099
    TabOrder = 3
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 312
    Top = 456
    Width = 75
    Height = 25
    Caption = #1053#1072#1079#1072#1076
    TabOrder = 4
    Visible = False
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 432
    Top = 456
    Width = 75
    Height = 25
    Caption = #1042#1087#1077#1088#1105#1076
    TabOrder = 5
    Visible = False
    OnClick = Button6Click
  end
  object Memo1: TMemo
    Left = 248
    Top = 168
    Width = 321
    Height = 281
    TabOrder = 6
    Visible = False
  end
  object Timer1: TTimer
    Interval = 100
    OnTimer = Timer1Timer
    Left = 576
    Top = 40
  end
end
