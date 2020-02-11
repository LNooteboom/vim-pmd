if exists("b:current_syntax")
	finish
end

" Overall Control Commands
syntax match mmlControl "\v#Filename[ \t].*$"
syntax match mmlControl "\v#Title[ \t].*$"
syntax match mmlControl "\v#FFFile[ \t].*$"
syntax match mmlControl "\v#Option[ \t].*$"
syntax match mmlControl "\v#Composer[ \t].*$"
syntax match mmlControl "\v#Arranger[ \t].*$"
syntax match mmlControl "\v#Memo[ \t].*$"
syntax match mmlControl "\v#Tempo[ \t].*$"
syntax match mmlControl "\v#DT2Flag[ \t].*$"
syntax match mmlInclude "\v#Include[ \t].*$"
highlight link mmlControl PreProc
highlight link mmlInclude Include

" Comments
syntax match mmlComment "\v;.*$"
highlight link mmlComment Comment

" Instrument Definition
syntax match mmlInstrument "\v\@[0-9]{1,3}"
highlight link mmlInstrument Function

" Channel
syntax match mmlChannel "\v^[A-K]{1,}[ \t]"
syntax match mmlChannel "\v^R[0-9][ \t]"
highlight link mmlChannel Type

" Loop
syntax match mmlLoop "\v\["
syntax match mmlLoop "\v\][0-9]*"
highlight link mmlLoop Repeat

" Notes
" syntax match mmlNotes "\v[a-gr]\+{0,1}[1-9]*"
" highlight link mmlNotes Constant

" Octave
syntax match mmlOctave "\vo[1-8]"
syntax match mmlOctave "\vo[\+-]"
syntax match mmlOctave "\v[<>]"
highlight link mmlOctave Number

" MML Commands
syntax match mmlCommand "\v[vV][0-9]{1,3}" " Volume
syntax match mmlCommand "\vl[0-9\+-=\^]{1,3}" " Length
syntax match mmlCommand "\vp[1-3]" " Pan
syntax match mmlCommand "\vM[AB]{0,1}[0-9]{1,3}" " LFO
syntax match mmlCommand "\vMW[AB]{0,1}[0-6]" " LFO waveform

highlight link mmlCommand String

let b:current_syntax = "mml"
