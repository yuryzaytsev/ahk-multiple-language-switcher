GetKeyboardLayout()
{
  if count := DllCall("GetKeyboardLayoutList", "UInt", 0, "Ptr", 0)
  { ; Retrun number of keyboard layouts
    oArray := {}
    Loop, %count%  {
      lan := GetLANGID() ; current keyboard layout ID
      name := GetLocaleInfo(0x59, lan)  ; current keyboard layout name (ISO format)
      oArray[name] := lan
      ToggleKeyboardLayout()
      Sleep, 100
    }
  } else {
    MsgBox, 16, Error, The keyboard layout list has not been retrieved.
    Exit
  }
  return oArray
}
