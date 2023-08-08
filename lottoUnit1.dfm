object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 480
  ClientWidth = 330
  Color = clMoneyGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 48
    Top = 173
    Width = 86
    Height = 13
    Caption = 'Generate another'
  end
  object Label2: TLabel
    Left = 196
    Top = 173
    Width = 85
    Height = 13
    Caption = 'set(s) of numbers'
  end
  object Panel1: TPanel
    Left = 64
    Top = 8
    Width = 201
    Height = 33
    Caption = ' ?  ?  ?  ?  ? ?'
    Color = clBlue
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
  end
  object Button1: TButton
    Left = 48
    Top = 56
    Width = 233
    Height = 33
    Caption = 'Generate Numbers'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Panel2: TPanel
    Left = 0
    Top = 104
    Width = 329
    Height = 41
    Caption = 'Play these numbers:'
    Color = clHotLight
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 2
  end
  object ComboBox1: TComboBox
    Left = 140
    Top = 170
    Width = 50
    Height = 21
    TabOrder = 3
    Items.Strings = (
      '1'
      '2'
      '3'
      '4'
      '5'
      '6'
      '7'
      '8'
      '9'
      '10')
  end
  object Button2: TButton
    Left = 32
    Top = 208
    Width = 265
    Height = 25
    Caption = 'Go'
    TabOrder = 4
    OnClick = Button2Click
  end
  object ListBox1: TListBox
    Left = 64
    Top = 239
    Width = 201
    Height = 233
    ItemHeight = 13
    TabOrder = 5
  end
  object Panel3: TPanel
    Left = 271
    Top = 384
    Width = 57
    Height = 41
    Caption = 'Panel3'
    TabOrder = 6
  end
  object ListBox2: TListBox
    Left = 8
    Top = 384
    Width = 50
    Height = 41
    ItemHeight = 13
    TabOrder = 7
  end
end
