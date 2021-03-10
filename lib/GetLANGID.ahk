GetLANGID()
{
  w := DllCall("GetForegroundWindow")
  pid := DllCall("GetWindowThreadProcessId", "UInt", w, "Ptr", 0)
  r := DllCall("GetKeyboardLayout", "UInt", pid)
  Return r
}
