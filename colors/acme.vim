highlight clear 

" for cterm, 'black' might get overwritten by the terminal emulator, so we use
" 232 (#080808), which is close enough.

highlight! Normal guibg=#fdfdfd guifg=#555555 ctermbg=230 ctermfg=232 
highlight! NonText guibg=bg guifg=#ffffea ctermbg=bg ctermfg=230
highlight! StatusLine guibg=#aeeeee guifg=#000000 gui=NONE ctermbg=159 ctermfg=232 cterm=NONE
highlight! StatusLineNC guibg=#eaffff guifg=#000000 gui=NONE ctermbg=194 ctermfg=232 cterm=NONE
highlight! WildMenu guibg=#000000 guifg=#eaffff gui=NONE ctermbg=black ctermfg=159 cterm=NONE
highlight! VertSplit guibg=#ffffea guifg=#000000 gui=NONE ctermbg=159 ctermfg=232 cterm=NONE
highlight! Folded guibg=#def1ff guifg=fg gui=italic ctermbg=14 ctermfg=fg cterm=italic
highlight! FoldColumn guibg=#fcfcce guifg=fg ctermbg=229 ctermfg=fg
highlight! Conceal guibg=bg guifg=fg gui=NONE ctermbg=bg ctermfg=fg cterm=NONE
highlight! LineNr guibg=bg guifg=#b0b0b0 gui=italic ctermbg=bg ctermfg=239 cterm=italic
highlight! Visual guibg=fg guifg=bg ctermbg=fg ctermfg=bg
highlight! CursorLine guibg=#f2f2f2 guifg=fg ctermbg=230 ctermfg=fg
highlight! CursorLineNr gui=none guifg=#707070 guibg=#f6f6f6 ctermbg=230 ctermfg=fg cterm=none
highlight! ColorColumn guibg=#7fdbff ctermbg=4

highlight SignifySignAdd gui=bold guifg=#98c379 guibg=bg cterm=bold ctermbg=none ctermfg=119
highlight SignifySignDelete gui=bold guifg=#be5046 guibg=bg cterm=bold ctermbg=none ctermfg=167
highlight SignifySignChange gui=bold guifg=#c678dd guibg=bg cterm=bold ctermbg=none ctermfg=227
highlight SignColumn gui=bold ctermbg=NONE cterm=NONE guibg=NONE gui=NONE

highlight! Statement guibg=bg guifg=fg gui=italic ctermbg=bg ctermfg=fg cterm=italic
highlight! Identifier guibg=bg guifg=fg gui=bold ctermbg=bg ctermfg=fg cterm=bold
highlight! Type guibg=bg guifg=fg gui=bold ctermbg=bg ctermfg=fg cterm=bold
highlight! PreProc guibg=bg guifg=fg gui=bold ctermbg=bg ctermfg=fg cterm=bold
highlight! Constant guibg=bg guifg=#444444 gui=bold ctermbg=bg ctermfg=233 cterm=italic
highlight! Comment guibg=bg guifg=#999999 gui=italic ctermbg=bg ctermfg=236 cterm=italic
highlight! Special guibg=bg guifg=fg gui=bold ctermbg=bg ctermfg=fg cterm=bold
highlight! SpecialKey guibg=bg guifg=fg gui=bold ctermbg=bg ctermfg=fg cterm=bold
highlight! Directory guibg=bg guifg=fg gui=bold ctermbg=bg ctermfg=fg cterm=bold
highlight! link Title Directory
highlight! link MoreMsg Comment
highlight! link Question Comment

" vim
hi link vimFunction Identifier

let g:colors_name = "acme"
