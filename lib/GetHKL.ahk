GetHKL(winT:="A")
{
  if winT is integer
    hwnd := winT
  else hwnd := WinExist(winT)

  r := DllCall("GetKeyboardLayout", "UInt", DllCall("GetWindowThreadProcessId", "Ptr", hwnd, "Ptr", 0), "UPtr")
  Return Hex2Str(r, 8, true)
}
