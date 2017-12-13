#include AutoHotkey-Midi/Midi.ahk
;#InstallKeybdHook
;#UseHook On

midi := new Midi()
midi.OpenMidiIn( 0 )

SetKeyDelay, 0, 50
;Set up mappings
global MidiToVP := Object()

MidiToVP[36] := "1" 
MidiToVP[37] := "+1"
MidiToVP[38] := "2"
MidiToVP[39] := "+2"
MidiToVP[40] := "3"
MidiToVP[41] := "4"
MidiToVP[42] := "+4"
MidiToVP[43] := "5"
MidiToVP[44] := "+5"
MidiToVP[45] := "6"
MidiToVP[46] := "+6"
MidiToVP[47] := "7"
MidiToVP[48] := "8"
MidiToVP[49] := "+8"
MidiToVP[50] := "9"
MidiToVP[51] := "+9"
MidiToVP[52] := "0"
MidiToVP[53] := "q"
MidiToVP[54] := "+q"
MidiToVP[55] := "w"
MidiToVP[56] := "+w"
MidiToVP[57] := "e"
MidiToVP[58] := "+e"
MidiToVP[59] := "r"
MidiToVP[60] := "t"
MidiToVP[61] := "+t"
MidiToVP[62] := "y"
MidiToVP[63] := "+y"
MidiToVP[64] := "u"
MidiToVP[65] := "i"
MidiToVP[66] := "+i"
MidiToVP[67] := "o"
MidiToVP[68] := "+o"
MidiToVP[69] := "p"
MidiToVP[70] := "+p"
MidiToVP[71] := "a"
MidiToVP[72] := "s"
MidiToVP[73] := "+s"
MidiToVP[74] := "d"
MidiToVP[75] := "+d"
MidiToVP[76] := "f"
MidiToVP[77] := "g"
MidiToVP[78] := "+g"
MidiToVP[79] := "h"
MidiToVP[80] := "+h"
MidiToVP[81] := "j"
MidiToVP[82] := "+j"
MidiToVP[83] := "k"
MidiToVP[84] := "l"
MidiToVP[85] := "+l"
MidiToVP[86] := "z"
MidiToVP[87] := "+z"
MidiToVP[88] := "x"
MidiToVP[89] := "c"
MidiToVP[90] := "+c"
MidiToVP[91] := "v"
MidiToVP[92] := "+v"
MidiToVP[93] := "b"
MidiToVP[94] := "+b"
MidiToVP[95] := "n"
MidiToVP[96] := "m"

!+R::Reload
;WinGet, foo, PID, Garry's Mod
;MsgBox %foo%
;ControlSend,, Enter, Garry's Mod
;ControlSend,, a, Notepad++
;    SetTitleMatchMode 2
;    WinGet, npPID, PID, Notepad++
;    WinGet, gmPID, PID, Garry
;    ControlSend,, 1, Notepad++
;    ControlSend,, 1, Garry
;    ControlSendRaw,, 1, Garry
    


;MsgBox % MidiToVP[36]
Return

MidiNoteOn(NoteNum){
    Send  % MidiToVP[NoteNum]
    Return
}
