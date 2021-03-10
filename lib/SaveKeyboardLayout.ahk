SaveKeyboardLayout(KeyboardLayoutListArray)
{
  vOutput := ""
  For vKey, vValue in KeyboardLayoutListArray
  vOutput .= vKey ": " vValue "`r`n"

  jsonData := JSON.stringify(KeyboardLayoutListArray)

  if (jsonData)
  {
    FileDelete, % A_ScriptDir "\KeyboardLayoutData.json"
    Sleep, 100
    FileAppend, %jsonData%, % A_ScriptDir "\KeyboardLayoutData.json"
    MsgBox, 64, Success, % "The keyboard layout list has been retrieved." . "`r`n`n" vOutput
  } else
  {
    MsgBox, 16, Error, Keyboard layout data has not been saved.
    Exit
  }
}
