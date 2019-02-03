highlight clear 

" for cterm, 'black' might get overwritten by the terminal emulator, so we use
" 232 (#080808), which is close enough.

highlight! Normal guibg=#282c34 guifg=#abb2bf ctermbg=232 ctermfg=249
highlight! NonText guibg=bg guifg=#5c6370 ctermbg=bg ctermfg=230
highlight! StatusLine guibg=#4b5263 guifg=#abb2bf gui=NONE ctermbg=159 ctermfg=232 cterm=NONE
highlight! StatusLineNC guibg=#eaffff guifg=#000000 gui=NONE ctermbg=194 ctermfg=232 cterm=NONE
highlight! WildMenu guibg=#000000 guifg=#eaffff gui=NONE ctermbg=black ctermfg=159 cterm=NONE
highlight! VertSplit guibg=#ffffea guifg=#000000 gui=NONE ctermbg=159 ctermfg=232 cterm=NONE
highlight! Folded guibg=bg guifg=#56c370 gui=italic ctermbg=187 ctermfg=fg cterm=italic
highlight! FoldColumn guibg=bg guifg=fg ctermbg=229 ctermfg=fg
highlight! Conceal guibg=bg guifg=fg gui=NONE ctermbg=bg ctermfg=fg cterm=NONE
highlight! LineNr guibg=bg guifg=#4b5263 gui=italic ctermbg=bg ctermfg=239 cterm=italic
highlight! Visual guibg=fg guifg=bg ctermbg=fg ctermfg=bg
highlight! CursorLine guibg=#2c323c guifg=fg ctermbg=230 ctermfg=fg
highlight! CursorLineNr guibg=#2c323c guifg=#5c6370 ctermbg=230 ctermfg=fg
highlight! Cursor guibg=#61afef guifg=#282c34 ctermbg=75 ctermfg=230
highlight! Search guibg=#e5c07b guifg=#282c34 ctermbg=222 ctermfg=232
highlight! IncSearch guibg=#e5c07b guifg=#282c34 ctermbg=222 ctermfg=232

highlight SignifySignAdd gui=bold guifg=#98c379 guibg=bg cterm=bold ctermbg=none ctermfg=119
highlight SignifySignDelete gui=bold guifg=#be5046 guibg=bg cterm=bold ctermbg=none ctermfg=167
highlight SignifySignChange gui=bold guifg=#c678dd guibg=bg cterm=bold ctermbg=none ctermfg=227
highlight SignColumn gui=bold ctermbg=NONE cterm=NONE guibg=NONE gui=NONE

highlight! Statement guibg=bg guifg=fg gui=italic ctermbg=bg ctermfg=fg cterm=italic
highlight! Identifier guibg=bg guifg=fg gui=bold ctermbg=bg ctermfg=fg cterm=bold
highlight! Type guibg=bg guifg=fg gui=bold ctermbg=bg ctermfg=fg cterm=bold
highlight! PreProc guibg=bg guifg=fg gui=bold ctermbg=bg ctermfg=fg cterm=bold
highlight! Constant guibg=bg guifg=#abb2bf gui=italic ctermbg=bg ctermfg=233 cterm=italic
highlight! Comment guibg=bg guifg=#5c6370 gui=italic ctermbg=bg ctermfg=236 cterm=italic
highlight! Special guibg=bg guifg=fg gui=bold ctermbg=bg ctermfg=fg cterm=bold
highlight! SpecialKey guibg=bg guifg=fg gui=bold ctermbg=bg ctermfg=fg cterm=bold
highlight! Directory guibg=bg guifg=fg gui=bold ctermbg=bg ctermfg=fg cterm=bold
highlight! link Title Directory
highlight! link MoreMsg Comment
highlight! link Question Comment

" vim
hi link vimFunction Identifier

let g:colors_name = "dark-acme"
