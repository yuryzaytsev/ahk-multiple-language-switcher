#Include %A_ScriptDir%\lib\JSON.ahk
#NoTrayIcon

if FileExist("KeyboardLayoutData.json") {
  ;; Import and parse settings file
  FileRead, jsonData, % A_ScriptDir "\KeyboardLayoutData.json"
  keyboardLayout := JSON.parse(jsonData)

  if (keyboardLayout) {
    pp := A_PriorKey

    ; LShift + RShift, wait for release and also pass event back to system
    ~^LShift Up::
    ~+RShift Up::
      p := A_PriorKey
      t := A_TimeSincePriorHotkey
      ; If any other keys were pressed don't change language (like LShift + RShift + Alt)
      if ((p = "LShift" || p = "RShift") && (t > 100 || t =-1)) {
        SetKeyboardLayout(keyboardLayout.uk)
      }
      pp := p
    Return

    LShift Up::
      p := A_PriorKey
      t := A_TimeSincePriorHotkey
      if ((p = "LShift") && (t > 100 || t =-1)) {
        SetKeyboardLayout(keyboardLayout.ru)
      }
      pp := p
    Return

    RShift Up::
      p := A_PriorKey
      t := A_TimeSincePriorHotkey
      if (( p = "RShift") && (t > 100 || t =-1)) {
        SetKeyboardLayout(keyboardLayout.en)
      }
      pp := p
    Return

    Shift::
      Send {Shift}
    return

    } else {
      MsgBox, 16, Error, Could not parse the keyborad layout list.
      ExitApp
    }
  } else {
    MsgBox, 16, Error, Could not the load keyborad layout list.`r`n`Need to run the setup script first.
    ExitApp
  }
