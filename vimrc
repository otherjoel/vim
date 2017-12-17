" Autoload plugins in ~/.vim/bundle/
execute pathogen#infect()

" Basic Display Options
" -----------------------
filetype plugin indent on
syntax on
set guifont=IBM\ Plex\ Mono\ Light:h16
colorscheme candy
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
set term=xterm-256color
set termencoding=utf-8
"set lines=35 columns=150
set colorcolumn=100
set number              " Shows line numbers

" Common Shortcuts
" -----------------------
" Shortcut to reopen last file
map <leader>s :source ~/.vimrc<CR>

" Shortcut to remove search highlights
nnoremap <leader><space> :nohlsearch<CR>

" Shortcut to open file tree
nmap <leader>n :NERDTreeToggle<CR>

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

" Auto commands
" -----------------------
augroup configgroup
    autocmd!
    autocmd BufEnter Makefile setlocal noexpandtab
    "au! BufRead,BufNewFile *.markdown set filetype=mkd
    "au! BufRead,BufNewFile *.md       set filetype=mkd
    autocmd FileType markdown,mkd call pencil#init()
    "autocmd FileType markdown setlocal textwidth=100
    "autocmd FileType markdown setlocal wrapmargin=0  " textwidth overrides wrapmargin anyway
    "autocmd FileType markdown setlocal wrap         "word wrap visually (don't affect buffer)
    "autocmd FileType markdown setlocal linebreak    "only wrap on word-break chars
    " autocmd FileType markdown setlocal nonumber
augroup END

" Plugin settings
" -----------------------
set laststatus=2        " correct display of LightLine status bar
set noshowmode          " --INSERT-- unnecessary since LightLine displays mode
set signcolumn=yes      " always display gitgutter column (prevents weird mvmt)
set updatetime=250      " Shorten to 250msec from default 4 sec (for gitgutter)

let g:pencil#wrapModeDefault = 'soft'   " default is 'hard'
let g:pencil#textwidth = 100

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
