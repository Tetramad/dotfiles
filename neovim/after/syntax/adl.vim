" Vim syntax file
" Language: AVR Descriptive Language

if exists("b:current_syntax")
	finish
end

syn keyword adlTopLevelKeyword config task
syn keyword adlBlockKeyword begin end

syn keyword adlTodo contained TODO XXX NOTE
syn match adlComment "#.*$" contains=adlTodo

syn match adlNumber "\<\d\+\>" display

let b:current_syntax = "adl"

highlight default link adlTopLevelKeyword Function
highlight default link adlBlockKeyword Keyword

highlight default link adlTodo Todo
highlight default link adlComment Comment

highlight default link adlNumber Number
