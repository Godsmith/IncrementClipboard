;;; Paste and then increment first number in clipboard by 1. Keeps leading zeros. Goes from 0099 to 0100. ;;;

#v::
Send,^v
RegExMatch(clipboard,"(\d+)",Number)
RegExMatch(Number,"(^0+)",leadingZeros)
IncrementedNumber := Number+1
NewNumber = %leadingZeros%%IncrementedNumber%
if (StrLen(NewNumber) > StrLen(Number)) {
	NewNumber := SubStr(NewNumber, 2)
}
Clipboard:=RegExReplace(clipboard,Number,NewNumber)

return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
