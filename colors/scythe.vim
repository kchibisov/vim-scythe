set background=dark
hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "scythe"

" cterm colors

let s:cterm00 = "0"
let s:cterm01 = "1"
let s:cterm02 = "2"
let s:cterm03 = "3"
let s:cterm04 = "4"
let s:cterm05 = "5"
let s:cterm06 = "6"
let s:cterm07 = "7"

let s:cterm08 = "8"
let s:cterm09 = "9"
let s:cterm10 = "10"
let s:cterm11 = "11"
let s:cterm12 = "12"
let s:cterm13 = "13"
let s:cterm14 = "14"
let s:cterm15 = "15"

let s:c_diff_add = "22"
let s:c_diff_chg = "23"
let s:c_diff_txt = "24"
let s:c_diff_del = "52"

let s:c_ui_line   = "235"
let s:c_menu      = "236"
let s:c_selection = "238"
let s:c_ln        = "240"

" gui colors

let s:gui00 = "#1c1c1c"
let s:gui01 = "#bf5e40"
let s:gui02 = "#799d6a"
let s:gui03 = "#ffb964"
let s:gui04 = "#6d85b0"
let s:gui05 = "#baa6ed"
let s:gui06 = "#9fbacb"
let s:gui07 = "#dddddd"

let s:gui08 = "#888888"
let s:gui09 = "#cf6a4c"
let s:gui10 = "#99ad6a"
let s:gui11 = "#fad07a"
let s:gui12 = "#8197bf"
let s:gui13 = "#c6b6ee"
let s:gui14 = "#8fbfdc"
let s:gui15 = "#ffffff"

let s:g_diff_add = "#052200"
let s:g_diff_chg = "#0e3337"
let s:g_diff_txt = "#405963"
let s:g_diff_del = "#442220"

let s:g_ui_line   = "#262626"
let s:g_menu      = "#303030"
let s:g_selection = "#444444"
let s:g_ln        = "#585858"

fun! s:H(group, ctermfg, ctermbg, guifg, guibg, attr)
  let l:hl = "hi! ".a:group

  let l:cfg = a:ctermfg
  if empty(a:ctermfg)
    let l:cfg = "NONE"
  endif
  let l:cfg=" ctermfg=".l:cfg

  let l:cbg = a:ctermbg
  if empty(a:ctermbg)
    let l:cbg = "NONE"
  endif
  let l:cbg=" ctermbg=".l:cbg

  let l:gfg = a:guifg
  if empty(a:guifg)
    let l:gfg = "NONE"
  endif
  let l:gfg=" guifg=".l:gfg

  let l:gbg = a:guibg
  if empty(a:guibg)
    let l:gbg = "NONE"
  endif
  let l:gbg=" guibg=".l:gbg

  let l:cmd_attr = ""
  if !empty(a:attr)
    let l:cmd_attr = " cterm=".a:attr." gui=".a:attr
  endif

  let l:cmd = l:hl.l:cfg.l:cbg.l:gfg.l:gbg.l:cmd_attr
  exec l:cmd
endfun

call s:H("Normal", "", "", s:gui07, "", "")
call s:H("NonText", s:cterm08, "", s:gui08, "", "")

call s:H("CursorLine", "", s:c_ui_line, "", s:g_ui_line, "NONE")
call s:H("Cursor", "", "", "", "", "inverse")
hi! link TermCursor Cursor
hi! link CursorColumn CursorLine

call s:H("VertSplit", s:c_ui_line, "", s:g_ui_line, "", "NONE")
call s:H("StatusLine", s:c_ui_line, s:cterm08, s:g_ui_line, s:gui08, "")
call s:H("StatusLineNC", s:c_ui_line, s:cterm08, s:g_ui_line, s:gui08, "")
call s:H("Folded", s:cterm08, s:c_ui_line, s:gui08, s:g_ui_line, "italic")
call s:H("WildMenu", s:cterm05, s:c_ui_line, s:gui05, s:g_ui_line, "italic,underline")

hi! link SignColumn CursorLine
hi! link FoldColumn CursorLine
hi! link ColorColumn CursorLine

call s:H("MatchParen", s:cterm15, s:cterm04, s:gui15, s:gui04, "")
call s:H("Search", s:cterm06, "", s:gui06, "", "underline")
hi! link IncSearch Search

call s:H("LineNr", s:c_ln, "", s:g_ln, "", "NONE")
call s:H("CursorLineNr", s:cterm11, s:c_ui_line, s:gui11, s:g_ui_line, "NONE")

" Auto-completion

call s:H("Pmenu", "", s:c_menu, "", s:g_menu, "")
call s:H("PmenuSel", s:cterm15, s:c_selection, s:gui15, s:g_selection, "")

call s:H("Visual", "", s:c_selection, "", s:g_selection, "")

" Source files

call s:H("Title", s:cterm02, "", s:gui02, "", "bold")

call s:H("Comment", s:cterm08, "", s:gui08, "", "italic")
call s:H("Todo", s:cterm15, "", s:gui15, "", "bold")

call s:H("Constant", s:cterm09, "", s:gui09, "", "")
call s:H("Question", s:cterm02, "", s:gui02, "", "NONE")
hi! link Special Question
call s:H("Delimiter", s:cterm06, "", s:gui06, "", "")

call s:H("String", s:cterm10, "", s:gui10, "", "")
hi! link StringDelimiter Delimiter

call s:H("Identifier", s:cterm13, "", s:gui13, "", "NONE")
call s:H("Statement", s:cterm12, "", s:gui12, "", "NONE")
call s:H("PreProc", s:cterm14, "", s:gui14, "", "NONE")
call s:H("Function", s:cterm11, "", s:gui11, "", "NONE")
call s:H("Structure", s:cterm14, "", s:gui14, "", "NONE")
call s:H("Type", s:cterm03, "", s:gui03, "", "NONE")

hi! link Operator Structure
hi! link Conceal Structure
hi! link StorageClass PreProc

call s:H("GitGutterAdd", s:cterm10, s:c_ui_line, s:gui10, s:g_ui_line, "")
call s:H("GitGutterDelete", s:cterm09, s:c_ui_line, s:gui09, s:g_ui_line, "")
call s:H("GitGutterChange", s:cterm11, s:c_ui_line, s:gui11, s:g_ui_line, "")

" Vim

hi! link vimOper Normal
call s:H("Underlined", s:cterm06, "", s:gui06, "", "underline")
call s:H("EndOfBuffer", s:cterm00, "", s:gui00, "", "")

" Diff

hi! link diffRemoved Constant
hi! link diffAdded String

call s:H("DiffAdd", "", s:c_diff_add, "", s:g_diff_add, "")
call s:H("DiffDelete", "", s:c_diff_del, "", s:g_diff_del, "")
call s:H("DiffChange", "", s:c_diff_chg, "", s:g_diff_chg, "")
call s:H("DiffText", "", s:c_diff_txt, "", s:g_diff_txt, "")

" Spell Checking

call s:H("SpellBad", s:cterm09, "", s:gui09, "", "underline")
call s:H("SpellCap", s:cterm12, "", s:gui12, "", "underline")
call s:H("SpellRare", s:cterm13, "", s:gui13, "", "underline")
call s:H("SpellLocal", s:cterm14, "", s:gui14, "", "underline")

" NERDTree

call s:H("Directory", s:cterm04, "", s:gui04, "", "bold")
hi! link NERDTreeCWD Directory
hi! link NERDTreeDirSlash Directory
call s:H("NERDTreeFlags", s:cterm11, "", s:gui11, "", "")
call s:H("NERDTreeExecFile", s:cterm10, "", s:gui10, "", "")
call s:H("NERDTreeLinkFile", s:cterm06, "", s:gui06, "", "")
hi! link NERDTreeLinkTarget NERDTreeLinkFile

" Error

hi! link Error Constant
hi! link Warning Function
hi! link Info PreProc
hi! link Hint Identifier
hi! link ErrorMsg Constant
hi! link WarningMsg Warning
hi! link MoreMsg Constant

" Coc

call s:H("CocErrorSign", s:cterm01, s:c_ui_line, s:gui01, s:g_ui_line, "")
call s:H("CocWarningSign", s:cterm11, s:c_ui_line, s:gui11, s:g_ui_line, "")
call s:H("CocInfoSign", s:cterm12, s:c_ui_line, s:gui12, s:g_ui_line, "")
call s:H("CocHintSign", s:cterm13, s:c_ui_line, s:gui13, s:g_ui_line, "")

call s:H("CocErrorFloat", s:cterm01, s:c_menu, s:gui01, s:g_menu, "")
call s:H("CocWarningSign", s:cterm11, s:c_menu, s:gui11, s:g_menu, "")
call s:H("CocInfoFloat", s:cterm12, s:c_menu, s:gui12, s:g_menu, "")
call s:H("CocHintFloat", s:cterm13, s:c_menu, s:gui13, s:g_menu, "")
hi! link CocUnderline None

" Ale

hi! link ALEWarningSign CocWarningSign
hi! link ALEErrorSign CocErrorSign
hi! link ALEInfoSign CocInfoSign
hi! link ALEHintSign CocHintSign

" Rust

hi! link rustSelf Statement

" Python

hi! link pythonOperator Statement

" C

hi! link cType Statement
hi! link cFormat Identifier
hi! link cOperator Constant

" CPP

hi! link cppSTLnamespace Identifier

" Lua

hi! link luaOperator Conditional

" Objective-C/Cocoa

hi! link objcClass Type
hi! link cocoaClass objcClass
hi! link objcSubclass objcClass
hi! link objcSuperclass objcClass
hi! link objcDirective rubyClass
hi! link objcStatement Constant
hi! link cocoaFunction Function
hi! link objcMethodName Identifier
hi! link objcMethodArg Normal
hi! link objcMessageName Identifier

" XML

hi! link xmlTag Statement
hi! link xmlEndTag xmlTag
hi! link xmlTagName xmlTag
hi! link xmlEqual xmlTag
hi! link xmlEntity Special
hi! link xmlEntityPunct xmlEntity
hi! link xmlDocTypeDecl PreProc
hi! link xmlDocTypeKeyword PreProc
hi! link xmlProcessingDelim xmlAttrib

" Delete functions

delf s:H
