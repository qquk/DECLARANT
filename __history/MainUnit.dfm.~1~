object mainform: Tmainform
  Left = 292
  Top = 186
  Caption = 'IBAG: DECLARANT 2.0'
  ClientHeight = 574
  ClientWidth = 930
  Color = 8404992
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIForm
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 32
    Width = 189
    Height = 34
    Caption = 'DEKLARANT:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -29
    Font.Name = 'Arial'
    Font.Style = [fsBold, fsItalic, fsUnderline]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 15
    Top = 71
    Width = 117
    Height = 19
    Caption = #1056#1072#1073#1086#1095#1072#1103' '#1076#1072#1090#1072': '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clSilver
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 15
    Top = 98
    Width = 116
    Height = 19
    Caption = #1055#1086#1083#1100#1079#1074#1072#1090#1077#1083#1100': '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clSilver
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 15
    Top = 126
    Width = 128
    Height = 19
    Caption = #1050#1086#1085#1092#1080#1075#1091#1088#1072#1094#1080#1103': '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clSilver
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object ActionToolBar1: TActionToolBar
    Left = 0
    Top = 0
    Width = 930
    Height = 23
    ActionManager = Main_actmanager
    Caption = 'ActionToolBar1'
    ColorMap.HighlightColor = 14410210
    ColorMap.BtnSelectedColor = clBtnFace
    ColorMap.UnusedColor = 14410210
    Spacing = 0
  end
  object qUpdate: TIBQuery
    Database = dm.IBDatabase2
    Transaction = labeltran
    Left = 224
    Top = 75
  end
  object labeltran: TIBTransaction
    DefaultDatabase = dm.IBDatabase2
    Left = 220
    Top = 132
  end
  object Main_actmanager: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Action = documents_act
            ShortCut = 114
          end
          item
            Action = wait_part_act
            Caption = 'F&9-'#1054#1078'. '#1087#1072#1088#1090#1080#1080
            ShortCut = 120
          end
          item
            Action = firms_act
            Caption = 'F&8-'#1060#1080#1088#1084#1099
          end
          item
            Action = clients_act
            Caption = 'F&12-'#1050#1083#1080#1077#1085#1090#1099
            ShortCut = 123
          end
          item
            Action = settings_act
          end
          item
            Action = price_act
          end
          item
            Action = zakl_act
          end
          item
            Action = import_act
          end
          item
            Items = <
              item
                Action = export_tov
              end
              item
                Action = importclient_act
              end>
            Action = sync_act
          end
          item
            Action = translate_act
          end
          item
            Items = <
              item
                Action = w_cascade
              end>
            Action = windows_act
          end
          item
            Action = Close_act
            Caption = 'F1&0-'#1042#1099#1093#1086#1076
            ShortCut = 121
          end
          item
            Action = Action1
            Caption = '&Action1'
          end>
      end
      item
        Items = <
          item
            Action = documents_act
            ShortCut = 114
          end
          item
            Action = wait_part_act
            Caption = 'F&9-'#1054#1078'. '#1087#1072#1088#1090#1080#1080
            ShortCut = 120
          end
          item
            Items = <
              item
                Action = rec_firms
              end
              item
                Action = send_firms
              end>
            Action = firms_act
          end
          item
            Action = clients_act
            Caption = 'F&12-'#1050#1083#1080#1077#1085#1090#1099
            ShortCut = 123
          end
          item
            Action = settings_act
          end
          item
            Action = price_act
          end
          item
            Action = zakl_act
          end
          item
            Items = <
              item
                Action = import_act
              end>
            Action = Action2
          end
          item
            Items = <
              item
                Action = export_tov
              end
              item
                Action = importclient_act
              end>
            Action = sync_act
          end
          item
            Action = translate_act
          end
          item
            Items = <
              item
                Action = w_cascade
              end>
            Action = windows_act
          end
          item
            Action = Close_act
            Caption = 'F1&0-'#1042#1099#1093#1086#1076
            ShortCut = 121
          end>
        ActionBar = ActionToolBar1
      end>
    Left = 326
    Top = 74
    StyleName = 'XP Style'
    object documents_act: TAction
      Caption = '&F3-'#1044#1086#1082#1091#1084#1077#1085#1090#1099
      ShortCut = 114
      OnExecute = documents_actExecute
    end
    object wait_part_act: TAction
      Caption = '&F9-'#1054#1078'. '#1087#1072#1088#1090#1080#1080
      ShortCut = 120
      OnExecute = wait_part_actExecute
    end
    object firms_act: TAction
      Caption = #1060#1080#1088#1084#1099
      OnExecute = firms_actExecute
    end
    object clients_act: TAction
      Caption = '&F12-'#1050#1083#1080#1077#1085#1090#1099
      ShortCut = 123
      OnExecute = clients_actExecute
    end
    object settings_act: TAction
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080
      OnExecute = settings_actExecute
    end
    object price_act: TAction
      Caption = #1058#1086#1074#1072#1088#1099
      OnExecute = price_actExecute
    end
    object zakl_act: TAction
      Caption = #1047#1072#1082#1083#1102#1095#1077#1085#1080#1103
      OnExecute = zakl_actExecute
    end
    object Action2: TAction
      Caption = #1048#1084#1087#1086#1088#1090
      OnExecute = Action2Execute
    end
    object import_act: TAction
      Caption = #1048#1084#1087#1086#1088#1090' '#1087#1072#1082#1077#1090#1086#1074
      OnExecute = import_actExecute
    end
    object sync_act: TAction
      Caption = #1057#1080#1085#1093#1088#1086#1085#1080#1079#1072#1094#1080#1103
      OnExecute = sync_actExecute
    end
    object export_tov: TAction
      Caption = #1069#1082#1089#1087#1086#1088#1090' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082#1072' '#1090#1086#1074#1072#1088#1086#1074
      OnExecute = export_tovExecute
    end
    object importclient_act: TAction
      Caption = #1054#1073#1085#1086#1074#1083#1077#1085#1080#1077' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082#1072' '#1082#1083#1080#1077#1085#1090#1086#1074
      OnExecute = importclient_actExecute
    end
    object translate_act: TAction
      Caption = #1055#1077#1088#1077#1074#1086#1076
      OnExecute = translate_actExecute
    end
    object windows_act: TAction
      Caption = #1054#1082#1085#1072
      OnExecute = windows_actExecute
    end
    object w_cascade: TAction
      Caption = #1050#1072#1089#1082#1072#1076#1086#1084
      OnExecute = w_cascadeExecute
    end
    object Close_act: TAction
      Caption = '&F10-'#1042#1099#1093#1086#1076
      ShortCut = 121
      OnExecute = Close_actExecute
    end
    object Action1: TAction
      Caption = 'Action1'
      OnExecute = Action1Execute
    end
    object rec_firms: TAction
      Caption = #1055#1086#1083#1091#1095#1072#1090#1077#1083#1080
      OnExecute = rec_firmsExecute
    end
    object send_firms: TAction
      Caption = #1054#1090#1087#1088#1072#1074#1080#1090#1077#1083#1080
      OnExecute = send_firmsExecute
    end
  end
end
