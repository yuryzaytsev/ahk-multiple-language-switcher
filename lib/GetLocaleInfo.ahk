GetLocaleInfo(loc, hkl:=0)
{
  ; LOCALE_SLANGUAGE=0x2, LOCALE_SISO639LANGNAME=0x59, LOCALE_SISO3166CTRYNAME=0x5A
  Static A_CharSize := A_IsUnicode ? 2 : 1
  hkl := hkl ? hkl : GetHKL(), lcid := hkl & 0x0000FFFF
  if sz := DllCall("GetLocaleInfo", "UInt", lcid, "UInt", loc, "Ptr", 0, "UInt", 0)
  {
    VarSetCapacity(strg, sz*A_CharSize, 0)
    DllCall("GetLocaleInfo", "UInt", lcid, "UInt", loc, "Str", strg, "UInt", sz)
  }
  else strg := "Error " A_LastError " LCID: " lcid
  Return strg
}
