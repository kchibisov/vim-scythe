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

let s:guiUILine = "#262626"

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

let s:ctermUILine = "235"

let g:airline#themes#scythe#palette = {}

let s:warning = [ s:gui00, s:gui11, s:cterm00, s:cterm11 ]
let s:error = [ s:gui00, s:gui11, s:cterm00, s:cterm11 ]

" Normal mode
let s:N1 = [ s:gui15, s:gui04, s:cterm15, s:cterm04 ]
let s:N2 = [ s:gui08, s:guiUILine, s:cterm08, s:ctermUILine ]
let s:N3 = [ s:gui08, s:guiUILine, s:cterm08, s:ctermUILine ]
let g:airline#themes#scythe#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

" Insert mode
let s:I1 = [ s:gui15, s:gui02, s:cterm15, s:cterm02 ]
let s:I2 = [ s:gui08, s:guiUILine, s:cterm08, s:ctermUILine ]
let s:I3 = [ s:gui08, s:guiUILine, s:cterm08, s:ctermUILine ]
let g:airline#themes#scythe#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)

" Visual mode
let s:V1 = [ s:gui00, s:gui13, s:cterm00, s:cterm13 ]
let s:V2 = [ s:gui08, s:guiUILine, s:cterm08, s:ctermUILine ]
let s:V3 = [ s:gui08, s:guiUILine, s:cterm08, s:ctermUILine ]
let g:airline#themes#scythe#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)

" Replace mode
let s:R1 = [ s:gui01, s:guiUILine, s:cterm01, s:ctermUILine ]
let s:R2 = [ s:gui08, s:guiUILine, s:cterm08, s:ctermUILine ]
let s:R3 = [ s:gui08, s:guiUILine, s:cterm08, s:ctermUILine ]
let g:airline#themes#scythe#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)

" Inactive mode
let s:IA1 = [ s:gui08, s:guiUILine, s:cterm08, s:ctermUILine ]
let s:IA2 = [ s:gui08, s:guiUILine, s:cterm08, s:ctermUILine ]
let s:IA3 = [ s:gui08, s:guiUILine, s:cterm08, s:ctermUILine ]
let g:airline#themes#scythe#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)

let g:airline#themes#scythe#palette.normal.airline_warning = s:warning
let g:airline#themes#scythe#palette.insert.airline_warning = s:warning
let g:airline#themes#scythe#palette.visual.airline_warning = s:warning
let g:airline#themes#scythe#palette.replace.airline_warning = s:warning

let g:airline#themes#scythe#palette.normal.airline_error = s:error
let g:airline#themes#scythe#palette.insert.airline_error = s:error
let g:airline#themes#scythe#palette.visual.airline_error = s:error
let g:airline#themes#scythe#palette.replace.airline_error = s:error
