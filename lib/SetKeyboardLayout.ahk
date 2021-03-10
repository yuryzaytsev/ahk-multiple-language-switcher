SetKeyboardLayout(language)
{
  ControlGetFocus, control, A
  ; SplashTextOn,,, % "" . language
  PostMessage 0x50, 0, %language%, %control%, A ; WM_INPUTLANGCHANGEREQUEST
}