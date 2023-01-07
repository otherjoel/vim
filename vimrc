"g:my_vim_dir is used elsewhere in my vim configurations
let g:my_vim_dir=expand("$HOME/.vim")

"$HOME/.vim and $HOME/.vim/after are in the &rtp on unix
"But on windows, they need to be added.
if has("win16") || has("win32") || has("win64")
  "add g:my_vim_dir to the front of the runtimepath
   execute "set rtp^=".g:my_vim_dir
  "add g:my_vim_dir\after to the end of the runtimepath
  execute "set rtp+=".g:my_vim_dir."\\after"
  "Note, pathogen#infect() looks for the 'bundle' folder in each path
  "of the &rtp, where the last dir in the '&rtp path' is not 'after'. The
  "<path>\bundle\*\after folders will be added if and only if
  "the corresponding <path>\after folder is in the &rtp before
  "pathogen#infect() is called.  So it is very important to add the above
  "'after' folder.

  " Not necessary, but I like to cleanup &rtp to use \ instead of /
  " when on windows machines
  "let &rtp=substitute(&rtp,"[/]","\\","g")
  set guifont=IBM\ Plex\ Mono\ Light:h12
  set fileformats=unix,dos,mac
  set lines=38 columns=120
else
  set guifont=SF-Mono-Powerline-Regular:h18
  set term=xterm-256color-italic  " See <https://alexpearce.me/2014/05/italics-in-iterm2-vim-tmux/>
endif

" Autoload plugins in ~/.vim/bundle/
execute pathogen#infect()

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"Added per Installation instructions: <https://github.com/joshdick/onedark.vim#installation>
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 
  if (has("termguicolors"))
    set termguicolors
  endif
endif

" Basic Display Options
" -----------------------
filetype plugin indent on
syntax on

let g:onedark_terminal_italics=1
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256

" Other options: dark-acme, onedark
colorscheme acme         " For onedark, this line must come *after* any theme option settings

set termencoding=utf-8
set colorcolumn=100
set number                  " Shows line numbers

" Common Shortcuts
" -----------------------
" Shortcut to reopen last file
map <leader>s :source ~/.vimrc<CR>

" Shortcut to remove search highlights
nnoremap <leader><space> :nohlsearch<CR>

" Shortcut to open file tree
nmap <leader>n :NERDTreeToggle<CR>

" Shortcut to hard-wrap current paragraph
nmap <leader>w gq}

function! GoyoOff()
    Goyo!
    syn off | syn on    " Syntax needs resetting after exiting Goyo
endfunction

nmap <leader>p :Goyo 106<CR>
nmap <leader>o :call GoyoOff()<CR>

nmap <leader>d :colorscheme onedark<CR>
nmap <leader>l :colorscheme acme<CR>

let s:curfontflag = 1
function! ToggleGUIFont()
    if has('gui_running')
        if s:curfontflag == 1
            set guifont=TriplicateARegular:h18
            let s:curfontflag = 0
        else
            set guifont=SF-Mono-Powerline-Regular:h18
            let s:curfontflag = 1
        endif
    endif
endfunction
command! ToggleGUIFont call ToggleGUIFont()

nmap <leader>f :ToggleGUIFont<CR>

set hidden
set history=100
set nowrap
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smartindent
set autoindent
set incsearch           " search as characters are entered
set hlsearch            " highlight search matches
set showmatch           " highlight matching [{()}]

set cursorline          " highlights the current line
set wildmenu            " provides graphical menu of autocomplete matches for commands
set textwidth=100       " only used when manually re-wrapping lines

augroup configgroup
    autocmd!
    autocmd BufEnter Makefile setlocal noexpandtab
    au! BufRead,BufNewFile *.pm    set filetype=pollen
    au! BufRead,BufNewFile *.ptree set filetype=pollen
    au! BufRead,BufNewFile *.pp    set filetype=pollen
    au! BufRead,BufNewFile *.scrbl set filetype=scribble
    au! BufRead,BufNewFile *.rktd  set filetype=racket
augroup END

" Plugin settings
" -----------------------
set laststatus=2        " correct display of LightLine status bar
set noshowmode          " --INSERT-- unnecessary since LightLine displays mode
set signcolumn=yes      " always display VCS gutter column (prevents weird mvmt)
set updatetime=250      " Shorten to 250msec from default 4 sec (for gitgutter)

" Signify plugin (replaces gitgutter since it supports Fossil too)
let g:signify_vcs_list = [ 'git', 'fossil' ]
let g:signify_realtime = 0                   " realtime=1 results in continuous autosave!
let g:signify_sign_change = '~'

let NERDTreeIgnore=['\.DS_Store', '\~$', '\.swp']
let NERDTreeShowHidden=1 " Show hidden files

let g:lightline = {
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'gitbranch#name'
      \ },
      \ }
