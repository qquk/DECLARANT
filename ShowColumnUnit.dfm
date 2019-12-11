object choosefield: Tchoosefield
  Left = 544
  Top = 193
  BorderStyle = bsToolWindow
  Caption = #1042#1099#1073#1086#1088' '#1089#1090#1086#1083#1073#1094#1086#1074
  ClientHeight = 308
  ClientWidth = 178
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnDeactivate = FormDeactivate
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 52
    Top = 278
    Width = 75
    Height = 25
    Caption = #1042#1099#1073#1088#1072#1090#1100
    TabOrder = 0
    OnClick = Button1Click
  end
  object lb: TCheckListBox
    Left = 0
    Top = 0
    Width = 178
    Height = 227
    Align = alTop
    BevelInner = bvNone
    BevelOuter = bvNone
    BevelKind = bkSoft
    Ctl3D = False
    ItemHeight = 13
    ParentCtl3D = False
    TabOrder = 1
  end
  object CheckBox1: TCheckBox
    Left = 4
    Top = 232
    Width = 97
    Height = 17
    Caption = #1042#1099#1076#1077#1083#1080#1090#1100' '#1074#1089#1105
    TabOrder = 2
    OnClick = CheckBox1Click
  end
  object CheckBox2: TCheckBox
    Left = 4
    Top = 250
    Width = 142
    Height = 17
    Caption = #1057#1085#1103#1090#1100' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1105
    TabOrder = 3
    OnClick = CheckBox2Click
  end
end
