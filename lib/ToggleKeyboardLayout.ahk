ToggleKeyboardLayout()
{
  WinExist("A")
  ControlGetFocus, CtrlInFocus
  PostMessage, 0x50, 2,, %CtrlInFocus%
}
