Hex2Str(val, len, x:=false) 
{
  SetFormat, IntegerFast, D
  VarSetCapacity(out, len*2, 32)
  DllCall("msvcrt\sprintf", "AStr", out, "AStr", "%0" len "I64X", "UInt64", val, "CDecl")
  Return x ? "0x" out : out
}