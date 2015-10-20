if exists ("b:current_syntax") && b:current_syntax == "k-"
  finish
endif

syn match   kmParenError ">"
syn match   kmParenError ")"
syn match   kmParenError "}"
syn match   kmParenError "\*)"

syn region  kmAngle start="<" end=">" contains=kmKeyword,kmConst,kmNumber,kmOperator,kmParen,kmBrace,kmComment
syn region  kmParen start="(" end=")" contains=kmKeyword,kmConst,kmNumber,kmOperator,kmParen,kmBrace,kmComment
syn region  kmBrace start="{" end="}" contains=kmKeyword,kmConst,kmNumber,kmOperator,kmParen,kmBrace,kmComment
syn region  kmComment start="(\*" end="\*)"

syn keyword kmKeyword   not if then else let in proc while do read write
syn keyword kmConst     unit true false
syn match   kmNumber    "\<-\?\d\(\d\)*\>"
syn match   kmOperator  "\(:=\|+\|-\|*\|\/\|=\)"

hi link kmComment Comment
hi link kmOperator Keyword
hi link kmKeyword Keyword
hi link kmConst Number
hi link kmNumber Number
hi link kmParenError Error

let b:current_syntax = "k-"
