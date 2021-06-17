# Colorscheme Discription

#### set colors

I'm brought the code that part of [code-dark](https://github.com/tomasiser/vim-code-dark/blob/master/colors/codedark.vim) for just generated colors before appling to syntax.

**Code reference** : https://github.com/tomasiser

```
set background=dark
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="codedark"

" Highlighting function (inspiration from https://github.com/chriskempson/base16-vim)
if &t_Co >= 256
    let g:codedark_term256=1
elseif !exists("g:codedark_term256")
    let g:codedark_term256=0
endif
fun! <sid>hi(group, fg, bg, attr, sp)
  if !empty(a:fg)
    exec "hi " . a:group . " guifg=" . a:fg.gui . " ctermfg=" . (g:codedark_term256 ? a:fg.cterm256 : a:fg.cterm)
  endif
  if !empty(a:bg)
    exec "hi " . a:group . " guibg=" . a:bg.gui . " ctermbg=" . (g:codedark_term256 ? a:bg.cterm256 : a:bg.cterm)
  endif
  if a:attr != ""
    exec "hi " . a:group . " gui=" . a:attr . " cterm=" . a:attr
  endif
  if !empty(a:sp)
    exec "hi " . a:group . " guisp=" . a:sp.gui
  endif
endfun

" ------------------
" Color definitions:
" ------------------

" Terminal colors (base16):
let s:cterm00 = "00"
let s:cterm03 = "08"
let s:cterm05 = "07"
let s:cterm07 = "15"
let s:cterm08 = "01"
let s:cterm0A = "03"
let s:cterm0B = "02"
let s:cterm0C = "06"
let s:cterm0D = "04"
let s:cterm0E = "05"
if exists('base16colorspace') && base16colorspace == "256"
  let s:cterm01 = "18"
  let s:cterm02 = "19"
  let s:cterm04 = "20"
  let s:cterm06 = "21"
  let s:cterm09 = "16"
  let s:cterm0F = "17"
else
  let s:cterm01 = "00"
  let s:cterm02 = "08"
  let s:cterm04 = "07"
  let s:cterm06 = "07"
  let s:cterm09 = "06"
  let s:cterm0F = "03"
endif

" Syntax colors:

if !exists("g:codedark_conservative")
    let g:codedark_conservative=0
endif

let s:cdNone = {'gui': 'NONE', 'cterm': 'NONE', 'cterm256': 'NONE'}
let s:cdFront = {'gui': '#D4D4D4', 'cterm': s:cterm05, 'cterm256': '188'}
let s:cdBack = {'gui': '#1E1E1E', 'cterm': s:cterm00, 'cterm256': '234'}

let s:cdGray = {'gui': '#808080', 'cterm': s:cterm04, 'cterm256': '08'}
let s:cdViolet = {'gui': '#646695', 'cterm': s:cterm04, 'cterm256': '60'}
let s:cdBlue = {'gui': '#569CD6', 'cterm': s:cterm0D, 'cterm256': '75'}
let s:cdDarkBlue = {'gui': '#223E55', 'cterm': s:cterm0D, 'cterm256': '73'}
let s:cdLightBlue = {'gui': '#9CDCFE', 'cterm': s:cterm0C, 'cterm256': '117'}
if g:codedark_conservative | let s:cdLightBlue = s:cdFront | endif
let s:cdGreen = {'gui': '#6A9955', 'cterm': s:cterm0B, 'cterm256': '65'}
let s:cdBlueGreen = {'gui': '#4EC9B0', 'cterm': s:cterm0F, 'cterm256': '43'}
let s:cdLightGreen = {'gui': '#B5CEA8', 'cterm': s:cterm09, 'cterm256': '151'}
let s:cdRed = {'gui': '#F44747', 'cterm': s:cterm08, 'cterm256': '203'}
let s:cdOrange = {'gui': '#CE9178', 'cterm': s:cterm0F, 'cterm256': '173'}
let s:cdLightRed = {'gui': '#D16969', 'cterm': s:cterm08, 'cterm256': '167'}
if g:codedark_conservative | let s:cdLightRed = s:cdOrange | endif
let s:cdYellowOrange = {'gui': '#D7BA7D', 'cterm': s:cterm0A, 'cterm256': '179'}
let s:cdYellow = {'gui': '#DCDCAA', 'cterm': s:cterm0A, 'cterm256': '187'}
if g:codedark_conservative | let s:cdYellow = s:cdFront | endif
let s:cdPink = {'gui': '#C586C0', 'cterm': s:cterm0E, 'cterm256': '176'}
if g:codedark_conservative | let s:cdPink = s:cdBlue | endif
```



#### Set syntax colors for python

Set each color to make the code look like the *dark plus* of the vscode.

```
call <sid>hi('pythonNone', s:cdBlue, {}, 'none', {})  				"None
call <sid>hi('pythonBoolean', s:cdBlue, {}, 'none', {}) 			"False Ture 
call <sid>hi('pythonBuiltinType', s:cdYellow, {}, 'none', {})	"object|bool|int|float|tuple|str|list|dict|set|frozenset|bytearray|bytes
call <sid>hi('pythonBuiltinFunc', s:cdYellow, {}, 'none', {})  		"builtin function
call <sid>hi('pythonFunctionCall', s:cdLightBlue, {}, 'none', {}) 	"function call
call <sid>hi('pythonRepeat', s:cdPink, {}, 'none', {}) 				"for while
call <sid>hi('pythonConditional', s:cdPink, {}, 'none', {}) 		"elif else if 
call <sid>hi('pythonOperator', s:cdBlue, {}, 'none', {}) 			"and in is not or
call <sid>hi('pythonImport', s:cdPink, {}, 'none', {}) 				"from import 
call <sid>hi('pythonStatement', s:cdViolet, {}, 'none', {})  		"as assert break continue del global lambda nonlocal pass return with yield class def nextgroup=pythonFunction skipwhite
call <sid>hi('pythonClassVar', s:cdViolet, {}, 'none', {})  		"self.
call <sid>hi('pythonDecorator', s:cdYellow, {}, 'none', {}) 		"@
call <sid>hi('pythonDottedName', s:cdYellow, {}, 'none', {}) 	"@ name
call <sid>hi('pythonFunction', s:cdYellow, {}, 'none', {}) 			"function name
call <sid>hi('pythonComment', s:cdRed, {}, 'none', {}) 				"Comment
call <sid>hi('pythonClass', s:cdBlueGreen, {}, 'none', {}) 			"class name
call <sid>hi('pythonNumber', s:cdLightGreen, {}, 'none', {})		"number 
call <sid>hi('pythonFloat', s:cdLightGreen, {}, 'none', {}) 		"float number
call <sid>hi('pythonString', s:cdOrange, {}, 'none', {}) 			"string
call <sid>hi('pythonStrFormat', s:cdBlue, {}, 'none', {})  			"f{} formatting"
call <sid>hi('pythonFString', s:cdOrange, {}, 'none', {}) 			"f{} string"
call <sid>hi('pythonDot', s:cdFront, {}, 'none', {}) 				". dot"
```



#### Set vim editor colors

```
" Vim editor colors
call <sid>hi('Normal', s:cdFront, s:cdBack, 'none', {})  " background
call <sid>hi('LineNr', s:cdLineNumber, s:cdBack, 'none', {})  " line number
```

And let's put the three codes together.



#### Full code

**dark_plus_python.vim**

```
set background=dark
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="codedark"

" Highlighting function (inspiration from https://github.com/chriskempson/base16-vim)
if &t_Co >= 256
    let g:codedark_term256=1
elseif !exists("g:codedark_term256")
    let g:codedark_term256=0
endif
fun! <sid>hi(group, fg, bg, attr, sp)
  if !empty(a:fg)
    exec "hi " . a:group . " guifg=" . a:fg.gui . " ctermfg=" . (g:codedark_term256 ? a:fg.cterm256 : a:fg.cterm)
  endif
  if !empty(a:bg)
    exec "hi " . a:group . " guibg=" . a:bg.gui . " ctermbg=" . (g:codedark_term256 ? a:bg.cterm256 : a:bg.cterm)
  endif
  if a:attr != ""
    exec "hi " . a:group . " gui=" . a:attr . " cterm=" . a:attr
  endif
  if !empty(a:sp)
    exec "hi " . a:group . " guisp=" . a:sp.gui
  endif
endfun

" ------------------
" Color definitions:
" ------------------

" Terminal colors (base16):
let s:cterm00 = "00"
let s:cterm03 = "08"
let s:cterm05 = "07"
let s:cterm07 = "15"
let s:cterm08 = "01"
let s:cterm0A = "03"
let s:cterm0B = "02"
let s:cterm0C = "06"
let s:cterm0D = "04"
let s:cterm0E = "05"
if exists('base16colorspace') && base16colorspace == "256"
  let s:cterm01 = "18"
  let s:cterm02 = "19"
  let s:cterm04 = "20"
  let s:cterm06 = "21"
  let s:cterm09 = "16"
  let s:cterm0F = "17"
else
  let s:cterm01 = "00"
  let s:cterm02 = "08"
  let s:cterm04 = "07"
  let s:cterm06 = "07"
  let s:cterm09 = "06"
  let s:cterm0F = "03"
endif

" Syntax colors:

if !exists("g:codedark_conservative")
    let g:codedark_conservative=0
endif

let s:cdNone = {'gui': 'NONE', 'cterm': 'NONE', 'cterm256': 'NONE'}
let s:cdFront = {'gui': '#D4D4D4', 'cterm': s:cterm05, 'cterm256': '188'}
let s:cdBack = {'gui': '#1E1E1E', 'cterm': s:cterm00, 'cterm256': '234'}

let s:cdGray = {'gui': '#808080', 'cterm': s:cterm04, 'cterm256': '08'}
let s:cdViolet = {'gui': '#646695', 'cterm': s:cterm04, 'cterm256': '60'}
let s:cdBlue = {'gui': '#569CD6', 'cterm': s:cterm0D, 'cterm256': '75'}
let s:cdDarkBlue = {'gui': '#223E55', 'cterm': s:cterm0D, 'cterm256': '73'}
let s:cdLightBlue = {'gui': '#9CDCFE', 'cterm': s:cterm0C, 'cterm256': '117'}
if g:codedark_conservative | let s:cdLightBlue = s:cdFront | endif
let s:cdGreen = {'gui': '#6A9955', 'cterm': s:cterm0B, 'cterm256': '65'}
let s:cdBlueGreen = {'gui': '#4EC9B0', 'cterm': s:cterm0F, 'cterm256': '43'}
let s:cdLightGreen = {'gui': '#B5CEA8', 'cterm': s:cterm09, 'cterm256': '151'}
let s:cdRed = {'gui': '#F44747', 'cterm': s:cterm08, 'cterm256': '203'}
let s:cdOrange = {'gui': '#CE9178', 'cterm': s:cterm0F, 'cterm256': '173'}
let s:cdLightRed = {'gui': '#D16969', 'cterm': s:cterm08, 'cterm256': '167'}
if g:codedark_conservative | let s:cdLightRed = s:cdOrange | endif
let s:cdYellowOrange = {'gui': '#D7BA7D', 'cterm': s:cterm0A, 'cterm256': '179'}
let s:cdYellow = {'gui': '#DCDCAA', 'cterm': s:cterm0A, 'cterm256': '187'}
if g:codedark_conservative | let s:cdYellow = s:cdFront | endif
let s:cdPink = {'gui': '#C586C0', 'cterm': s:cterm0E, 'cterm256': '176'}
if g:codedark_conservative | let s:cdPink = s:cdBlue | endif

call <sid>hi('pythonNone', s:cdBlue, {}, 'none', {})  				"None
call <sid>hi('pythonBoolean', s:cdBlue, {}, 'none', {}) 			"False Ture 
call <sid>hi('pythonBuiltinType', s:cdYellow, {}, 'none', {})	"object|bool|int|float|tuple|str|list|dict|set|frozenset|bytearray|bytes
call <sid>hi('pythonBuiltinFunc', s:cdYellow, {}, 'none', {})  		"builtin function
call <sid>hi('pythonFunctionCall', s:cdLightBlue, {}, 'none', {}) 	"function call
call <sid>hi('pythonRepeat', s:cdPink, {}, 'none', {}) 				"for while
call <sid>hi('pythonConditional', s:cdPink, {}, 'none', {}) 		"elif else if 
call <sid>hi('pythonOperator', s:cdBlue, {}, 'none', {}) 			"and in is not or
call <sid>hi('pythonImport', s:cdPink, {}, 'none', {}) 				"from import 
call <sid>hi('pythonStatement', s:cdViolet, {}, 'none', {})  		"as assert break continue del global lambda nonlocal pass return with yield class def nextgroup=pythonFunction skipwhite
call <sid>hi('pythonClassVar', s:cdViolet, {}, 'none', {})  		"self.
call <sid>hi('pythonDecorator', s:cdYellow, {}, 'none', {}) 		"@
call <sid>hi('pythonDottedName', s:cdYellow, {}, 'none', {}) 	"@ name
call <sid>hi('pythonFunction', s:cdYellow, {}, 'none', {}) 			"function name
call <sid>hi('pythonComment', s:cdRed, {}, 'none', {}) 				"Comment
call <sid>hi('pythonClass', s:cdBlueGreen, {}, 'none', {}) 			"class name
call <sid>hi('pythonNumber', s:cdLightGreen, {}, 'none', {})		"number 
call <sid>hi('pythonFloat', s:cdLightGreen, {}, 'none', {}) 		"float number
call <sid>hi('pythonString', s:cdOrange, {}, 'none', {}) 			"string
call <sid>hi('pythonStrFormat', s:cdBlue, {}, 'none', {})  			"f{} formatting"
call <sid>hi('pythonFString', s:cdOrange, {}, 'none', {}) 			"f{} string"
call <sid>hi('pythonDot', s:cdFront, {}, 'none', {}) 				". dot"

" Vim editor colors
call <sid>hi('Normal', s:cdFront, s:cdBack, 'none', {})  " background
call <sid>hi('LineNr', s:cdLineNumber, s:cdBack, 'none', {})  " line number
```





